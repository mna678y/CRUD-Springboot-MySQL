package com.genesis.model;

public enum ResponseCode {

	SUCCESS("200"), 
	INVALID_COUNTRY("404"),
	INVALID_UNIVERSITY("404"),
	COUNTRY_ALREADY_EXISTED("409"),
	SERVER_ERROR("500");
	
	private String code;

	ResponseCode(String code) {
		this.code = code;
	}

	public String getCode() {
		return code;
	}
	
	public static ResponseCode findByName(String name){
	    for(ResponseCode v : values()){
	        if( v.getCode().equals(name)){
	            return v;
	        }
	    }
	    return null;
	}

}
