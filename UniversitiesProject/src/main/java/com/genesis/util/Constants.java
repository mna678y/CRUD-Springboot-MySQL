package com.genesis.util;

import org.springframework.stereotype.Component;

@Component
public class Constants {

	public final static String UNIVERSITY_API_URL = "http://universities.hipolabs.com/search?country=";
	
	public final static String DATA_IMPORTED_SUCCESS_MESSAGE = "country data has been successfully imported";
	public final static String UPDATE_UNI_DATA_SUCCESS_MESSAGE = "university data has been successfully updated";
	
	public final static String COUNTRY_ALREADY_EXIST_MESSAGE = "country already exist into system";
	
	public final static String INVALID_COUNTRY_MESSAGE = "provided country name is not valid";
	public final static String INVALID_UNIVERSITY_MESSAGE = "provided university id does not exist";
}
