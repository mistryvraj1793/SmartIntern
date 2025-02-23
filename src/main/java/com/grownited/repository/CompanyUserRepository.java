package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CompanyUserEntity;

@Repository
public interface CompanyUserRepository extends JpaRepository<CompanyUserEntity, Integer>{

}
