package com.genesis.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "COUNTRY")
@Getter @Setter
public class Country implements Serializable {
	private static final long serialVersionUID = 5926468583005150707L;
	
	@Id
	@Column(name = "country_code")
	private String countryCode;
	
	@Column(name = "country_name")
	private String countryName;
}
