package com.genesis.model;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class ProcessResponse {

	private ResponseCode responseCode;
	private String result;

}
