package com.genesis.model;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class UniversityDataRequest implements Serializable {
	private static final long serialVersionUID = 5926468583005150707L;
	
	@NotNull(message = "country may not be null")
	@NotEmpty(message = "country may not be empty")
	private String country;
	
 
}