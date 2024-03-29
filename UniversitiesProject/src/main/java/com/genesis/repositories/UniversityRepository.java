package com.genesis.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.genesis.entities.Country;
import com.genesis.entities.University;

@Repository
public interface UniversityRepository extends JpaRepository<University, Integer> {
	
	Optional<University> findByIdAndCountryCode(Long id,Country countryCode);
	List<University> findByCountryCode(Country countryCode);

}
