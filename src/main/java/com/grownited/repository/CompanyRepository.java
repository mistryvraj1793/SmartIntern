package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CompanyEntity;

@Repository
public interface CompanyRepository extends JpaRepository<CompanyEntity, Integer>{
	
	//for admin get all details of company with user details
	@Query(value = "select cmp.*, concat(u.first_name, ' ', u.last_name) as FullName, u.role from company cmp join users u on u.user_id = cmp.user_id",nativeQuery = true)
	List<Object[]> GetAll();
	
	//for admin find by companyId
	@Query(value = "select cmp.*, concat(u.first_name, ' ', u.last_name) as FullName, u.role from company cmp join users u on u.user_id = cmp.user_id and cmp.company_id = :companyId", nativeQuery = true)
	List<Object[]> findByCompanyId(Integer companyId);
	
	//Dynamic Display in UserBody, UserContactUs as a Fact:
	@Query(value = "select count(*) from company", nativeQuery = true)
	Integer totalCompany();
}
