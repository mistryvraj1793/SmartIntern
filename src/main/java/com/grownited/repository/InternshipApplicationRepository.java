package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.InternshipApplicationEntity;

@Repository
public interface InternshipApplicationRepository extends JpaRepository<InternshipApplicationEntity, Integer> {
	//for user see list of internshipApplication by user
	@Query(value = "select iapp.*, i.title, i.company_id, i.stipend, cmp.company_name from internship_applications as iapp join internships i on i.internship_id = iapp.internship_id join company cmp on i.company_id = cmp.company_id and iapp.user_id = :userId", nativeQuery = true)
	List<Object[]> GetInternApplicationById(Integer userId);
	
	//for admin see list of internshipApplication by user
	@Query(value = "select iapp.*, concat(u.first_name, ' ', u.last_name) as AppledBy, i.stipend, i.title as Internship_Title, i.duration_weeks, cmp.company_name, cmp.address from internship_applications as iapp join internships i on i.internship_id = iapp.internship_id join company cmp on i.company_id = cmp.company_id join users u on u.user_id = iapp.user_id", nativeQuery = true)
	List<Object[]> GetInternAppliedByUser();
	
	//for admin see view and edit of internshipApplication by internshipApplicationId
	@Query(value = "select iapp.*, concat(u.first_name, ' ', u.last_name) as AppledBy, u.role, i.application_dead_line, i.stipend, i.title as Internship_Title, i.duration_weeks, i.location as Internship_Location, i.description, i.requirements, cmp.company_name, cmp.address as Company_Address from internship_applications as iapp join internships i on i.internship_id = iapp.internship_id join company cmp on i.company_id = cmp.company_id join users u on u.user_id = iapp.user_id and iapp.application_id = :applicationId", nativeQuery = true)
	List<Object[]> GetInternAppliedId(Integer applicationId);
	
	//admin Widget and  Dynamic Display in UserBody, UserContactUs as a Fact:
	@Query(value = "select count(*) from internship_applications where status=\"ACCEPTED\"", nativeQuery = true)
	Integer acceptedInternshipApplications();
	
	//admin Widget for Applications was PENDING:
	@Query(value = "select count(*) from internship_applications where status='PENDING'", nativeQuery = true)
	Integer pendingInternshipApplications();
	
	//for user see list of internshipApplication by user
	@Query(value = " select iapp.*, concat(u.first_name, ' ', u.last_name) as YourName, u.role, i.title, i.company_id, i.stipend, cmp.company_name, cmp.address from internship_applications as iapp join internships i on i.internship_id = iapp.internship_id join company cmp on i.company_id = cmp.company_id join users u on u.user_id = iapp.user_id and iapp.application_id = :applicationId", nativeQuery = true)
	List<Object[]> UserViewInternApplicationById(Integer applicationId);
	
}
