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
@Table(name = "DOMAIN")
@Getter @Setter
@ToString
public class Domain implements Serializable {
	private static final long serialVersionUID = 5926468583005150707L;
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "domain_id")
    private Long domainId;

    @Column(name = "domain_name")
    private String domainName;

    @ManyToOne
    @JoinColumn(name = "university_id")
    private University university;
    
    @ManyToOne
    @JoinColumn(name = "country_code")
    private Country country;

}
