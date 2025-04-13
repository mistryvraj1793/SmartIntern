package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CompanyUserEntity;

@Repository
public interface CompanyUserRepository extends JpaRepository<CompanyUserEntity, Integer>{
	
	//For fetches the Mentor and Hr with role:
	@Query(value = "select cmpU.*, concat(u.first_name, ' ', u.last_name) as FullName from company_user cmpU join users u on u.user_id = cmpU.user_id", nativeQuery = true)
	List<Object[]> GetCompanyUser();
	
	//Dynamic Display in UserContactUs, UserAboutUs as a Fact:
	@Query(value = "select Count(*) from company_user where title=\"MENTOR\"", nativeQuery = true)
	Integer totalMentors();
}
