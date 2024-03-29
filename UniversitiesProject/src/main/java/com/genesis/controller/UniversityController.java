package com.genesis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.genesis.model.UniversityDataRequest;
import com.genesis.model.UpdateUniRequest;
import com.genesis.service.UniversityDataService;
import com.genesis.util.Utilities;

@RestController
@CrossOrigin
public class UniversityController {

	private static Logger _log = LoggerFactory.getLogger(UniversityController.class);
	@Autowired
	UniversityDataService universityDataService;
	

	
	@GetMapping(value = "/universities", produces = "application/json")
	public ResponseEntity<?> searchUniversities(@NotNull @NotEmpty @RequestParam(required = true) String country,
			HttpServletRequest request) {
		try {
			String remoteIPAddress = Utilities.extractIPAddress(request);
			_log.info("remoteIpAddr {}",remoteIPAddress);
			ResponseEntity<?> universityData = universityDataService.getUniversityData(country);
			return universityData;
		} catch (Exception ex) {
			_log.error(ex.getMessage());
		}
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	}

	@PostMapping(value = "/universities", produces = "application/json")
	public ResponseEntity<?> createUniversities(@Valid @RequestBody UniversityDataRequest universityDataRequest,
			HttpServletRequest request) {
		try {
			String remoteIPAddress = Utilities.extractIPAddress(request);
			_log.info("remoteIpAddr {}",remoteIPAddress);
			String country = universityDataRequest.getCountry().toLowerCase().trim();
			ResponseEntity<?> universityData = universityDataService.createUniversityData(country);
			return universityData;
		} catch (Exception ex) {
			_log.error(ex.getMessage());
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
		
	}
	
	@PutMapping(value = "/universities/{uid}", produces = "application/json")
	public ResponseEntity<?> modifyUniversities(@PathVariable Long uid, @Valid @RequestBody UpdateUniRequest updateUniRequest,
			HttpServletRequest request) {
		try {
			String remoteIPAddress = Utilities.extractIPAddress(request);
			_log.info("remoteIpAddr {}",remoteIPAddress);
			ResponseEntity<?> universityData = universityDataService.modifyUniversityData(updateUniRequest,uid);
			return universityData;
		} catch (Exception ex) {
			_log.error(ex.getMessage());
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
		
	}

}