package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.InternshipTechnologiesEntity;
@Repository
public interface InternshipTechnologiesRepository extends JpaRepository<InternshipTechnologiesEntity, Integer> {

}
