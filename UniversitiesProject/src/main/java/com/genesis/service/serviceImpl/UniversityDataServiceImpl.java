package com.genesis.service.serviceImpl;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.genesis.entities.Country;
import com.genesis.entities.Domain;
import com.genesis.entities.University;
import com.genesis.model.HipoLabApiResponse;
import com.genesis.model.ProcessResponse;
import com.genesis.model.ResponseCode;
import com.genesis.model.UpdateUniRequest;
import com.genesis.repositories.CountryRepository;
import com.genesis.repositories.DomainRepository;
import com.genesis.repositories.UniversityRepository;
import com.genesis.service.UniversityDataService;
import com.genesis.util.Constants;
import com.genesis.util.Utilities;

@Service
public class UniversityDataServiceImpl implements UniversityDataService {

	private static Logger _log = LoggerFactory.getLogger(UniversityDataServiceImpl.class);

	private RestTemplate restTemplate;
	private DomainRepository domainRepository;
	private CountryRepository countryRepository;
	private UniversityRepository universityRepository;

	@Autowired
	public UniversityDataServiceImpl(RestTemplate restTemplate, DomainRepository domainRepository,
			CountryRepository countryRepository, UniversityRepository universityRepository) {
		this.restTemplate = restTemplate;
		this.domainRepository = domainRepository;
		this.countryRepository = countryRepository;
		this.universityRepository = universityRepository;
	}

	@Override
	public ResponseEntity<?> getUniversityData(String countryName) {

		try {
			ProcessResponse processResponse = new ProcessResponse();
			String country = countryName.toLowerCase().trim();
			Optional<Country> countryOpt = countryRepository.findByCountryName(country);
			if (countryOpt.isPresent()) {
				Country countryObj = countryOpt.get();
				List<Domain> domainList = domainRepository.findByCountry(countryObj);
				return ResponseEntity.status(HttpStatus.OK).body(domainList);
			} else {
				return ResponseEntity.status(HttpStatus.NOT_FOUND).body(setProcessResponse(processResponse,
						Constants.INVALID_COUNTRY_MESSAGE, ResponseCode.INVALID_COUNTRY));
			}
		} catch (Exception ex) {
			_log.error(ex.getMessage());
		}

		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	}

	@Override
	public ResponseEntity<?> createUniversityData(String countryName) {
		ProcessResponse processResponse = new ProcessResponse();

		try {
			boolean existsByCountryName = countryRepository.existsByCountryName(countryName);

			if (existsByCountryName) {
				return ResponseEntity.status(HttpStatus.CONFLICT).body(setProcessResponse(processResponse,
						Constants.COUNTRY_ALREADY_EXIST_MESSAGE, ResponseCode.COUNTRY_ALREADY_EXISTED));
			}

			String uniApiURL = Constants.UNIVERSITY_API_URL + countryName;
			ResponseEntity<Object> responseEntity = restTemplate.exchange(uniApiURL, HttpMethod.GET, null,
					Object.class);

			if (responseEntity.getStatusCode().equals(HttpStatus.OK)) {
				Object responseBody = responseEntity.getBody();

				if (responseBody != null) {
					List<HipoLabApiResponse> hipoLabApiResponse = Utilities.convertToOriginalObject(responseBody,
							HipoLabApiResponse.class);

					if (!hipoLabApiResponse.isEmpty()) {
						hipoLabApiResponse.stream().forEach(this::insertData);
						return ResponseEntity.status(HttpStatus.CREATED).body(setProcessResponse(processResponse,
								Constants.DATA_IMPORTED_SUCCESS_MESSAGE, ResponseCode.SUCCESS));
					} else {
						return ResponseEntity.status(HttpStatus.NOT_FOUND).body(setProcessResponse(processResponse,
								Constants.INVALID_COUNTRY_MESSAGE, ResponseCode.INVALID_COUNTRY));
					}
				}
			}
		} catch (Exception ex) {
			_log.error(ex.getMessage());
		}

		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	}

	@Transactional(rollbackFor = Exception.class)
	public void insertData(HipoLabApiResponse apiData) {

		// Save Country
		Country country = new Country();
		country.setCountryCode(apiData.getCountryCode());
		country.setCountryName(apiData.getCountry());
		countryRepository.save(country);

		// Save University
		University university = new University();
		university.setUniversityName(apiData.getUniversityName());
		university.setState(apiData.getStateProvince());
		university.setWebsite(apiData.getWebPageModel().get(0));
		university.setCountryCode(country);
		universityRepository.save(university);

		// Save Domains
		List<Domain> domains = apiData.getDomains().stream().map(domainName -> {
			Domain domain = new Domain();
			domain.setDomainName(domainName);
			domain.setUniversity(university);
			domain.setCountry(country);
			return domain;
		}).collect(Collectors.toList());

		domainRepository.saveAll(domains);
	}

	@Override
	public ResponseEntity<?> modifyUniversityData(UpdateUniRequest updateUniRequest, Long universityId) {
		try {
			ProcessResponse processResponse = new ProcessResponse();
			String country = updateUniRequest.getCountry().toLowerCase().trim();
			Optional<Country> countryOpt = countryRepository.findByCountryName(country);

			return countryOpt.map(countryObj -> {
				Optional<University> uniOpt = universityRepository.findByIdAndCountryCode(universityId, countryObj);

				return uniOpt.map(universityObj -> {
					universityObj.setWebsite(updateUniRequest.getWebsite());
					universityRepository.save(universityObj);

					setProcessResponse(processResponse, Constants.UPDATE_UNI_DATA_SUCCESS_MESSAGE,
							ResponseCode.SUCCESS);
					return ResponseEntity.status(HttpStatus.OK).body(processResponse);
				}).orElseGet(() -> {
					setProcessResponse(processResponse, Constants.INVALID_UNIVERSITY_MESSAGE,
							ResponseCode.INVALID_UNIVERSITY);
					return ResponseEntity.status(HttpStatus.NOT_FOUND).body(processResponse);
				});
			}).orElseGet(() -> {
				setProcessResponse(processResponse, Constants.INVALID_COUNTRY_MESSAGE, ResponseCode.INVALID_COUNTRY);
				return ResponseEntity.status(HttpStatus.NOT_FOUND).body(processResponse);
			});
		} catch (Exception ex) {
			_log.error(ex.getMessage());
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
	}

	private ProcessResponse setProcessResponse(ProcessResponse processResponse, String result,
			ResponseCode responseCode) {
		processResponse.setResult(result);
		processResponse.setResponseCode(responseCode);
		return processResponse;
	}
}