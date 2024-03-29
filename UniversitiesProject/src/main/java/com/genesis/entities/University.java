package com.genesis.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "UNIVERSITY")
@Getter @Setter
@ToString
public class University implements Serializable {
	private static final long serialVersionUID = 5926468583005150707L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "university_id")
	private Long id;
	
	@Column(name = "name")
	private String universityName;
	
	@Column(name = "state")
	private String state;
	
	@Column(name = "website")
	private String website;
	
    @ManyToOne
    @JoinColumn(name = "country_code")
    private Country countryCode;
	
}
