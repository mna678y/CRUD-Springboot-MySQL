package com.genesis.model;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class UpdateUniRequest extends UniversityDataRequest implements Serializable  {
	private static final long serialVersionUID = 5926468583005150707L;
	
	@NotNull(message = "Website may not be null")
	@NotBlank(message = "Website must not be blank")
    @Pattern(regexp = "^https?://(?:www\\.)?[a-zA-Z0-9-]+(\\.[a-zA-Z]+)+$", message = "Invalid website format")
	private String website;
	
	
}
