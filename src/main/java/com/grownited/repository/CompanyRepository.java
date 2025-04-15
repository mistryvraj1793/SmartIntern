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
	
	//Company Report:
	@Query(value = "SELECT c.company_id,  c.company_name, c.url, c.external_guide, c.external_guide_contact_num, c.active, c.created_at, COUNT(DISTINCT i.internship_id) AS total_internships, COUNT(DISTINCT cu.company_user_id) AS total_hr_mentors FROM company c LEFT JOIN internships i ON c.company_id = i.company_id LEFT JOIN company_user cu ON c.company_id = cu.company_id GROUP BY c.company_id, c.company_name, c.url, c.external_guide, c.external_guide_contact_num, c.active, c.created_at ORDER BY c.created_at DESC", nativeQuery = true)
	List<Object[]> findAllCompanyDetailsWithInternshipAndMentorCount();
}
