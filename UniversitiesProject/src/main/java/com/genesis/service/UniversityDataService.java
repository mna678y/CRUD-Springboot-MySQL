package com.genesis.service;


import org.springframework.http.ResponseEntity;

import com.genesis.model.UpdateUniRequest;

public interface UniversityDataService {

	ResponseEntity<?> getUniversityData(String countryName);
	ResponseEntity<?> createUniversityData(String countryName);
	ResponseEntity<?> modifyUniversityData(UpdateUniRequest updateUniRequest,Long universityId);

}
