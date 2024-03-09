package com.genesis.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.genesis.entities.Country;

@Repository
public interface CountryRepository extends JpaRepository<Country, String> {

	boolean existsByCountryName(String countryName);
	Optional<Country> findByCountryName(String countryName);
}
