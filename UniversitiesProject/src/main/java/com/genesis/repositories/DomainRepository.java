package com.genesis.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.genesis.entities.Country;
import com.genesis.entities.Domain;

@Repository
public interface DomainRepository extends JpaRepository<Domain, Long> {

	List<Domain> findByCountry(Country country);
}
