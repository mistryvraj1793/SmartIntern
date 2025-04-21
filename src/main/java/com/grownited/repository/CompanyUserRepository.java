package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CompanyUserEntity;

@Repository
public interface CompanyUserRepository extends JpaRepository<CompanyUserEntity, Integer>{
	//for admin list all the details regarding CompanyUser:
	@Query(value = "select cu.*,  concat(u.first_name, ' ', u.last_name) as FullName, u.activate, u.born_year, u.contact_num, u.created_at, u.email, u.password, c.company_name, c.address from company_user cu join users u on u.user_id = cu.user_id join company c on c.company_id = cu.company_id", nativeQuery = true)
	List<Object[]> GetAll();	
	
	//for admin view CompanyUser details by Id:
	@Query(value = "select cu.*,  concat(u.first_name, ' ', u.last_name) as FullName, u.activate, u.born_year, u.contact_num, u.created_at, u.email, u.password, c.company_name, c.address from company_user cu join users u on u.user_id = cu.user_id join company c on c.company_id = cu.company_id and cu.company_user_id = :companyUserId", nativeQuery = true)
	List<Object[]> findByCompanyUserId(Integer companyUserId);
	
	//for admin edit companyUser details also in users:
	@Query(value = "select cu.*, concat(u.first_name, ' ', u.last_name) as FullName, u.email,c.company_name from company_user cu join company c on c.company_id = cu.company_id join users u on u.user_id = cu.user_id and cu.company_user_id = :companyUserId", nativeQuery = true)
	List<Object[]> GetCompanyUserByCompanyUserId(Integer companyUserId);
	
	//For fetches the Mentor and Hr with role:
	@Query(value = "select cmpU.*, concat(u.first_name, ' ', u.last_name) as FullName from company_user cmpU join users u on u.user_id = cmpU.user_id", nativeQuery = true)
	List<Object[]> GetCompanyUser();
	
	//Dynamic Display in UserContactUs, UserAboutUs as a Fact:
	@Query(value = "select Count(*) from company_user where title=\"MENTOR\"", nativeQuery = true)
	Integer totalMentors();
}
