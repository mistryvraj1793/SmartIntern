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
	@Query(value = "SELECT iapp.*, CONCAT(u.first_name, ' ', u.last_name) AS AppliedBy, u.role, i.application_dead_line, i.stipend, i.title AS Internship_Title, i.duration_weeks, i.location AS Internship_Location, i.description, i.requirements, cmp.company_name, cmp.address AS Company_Address, u.email AS AppliedByEmail, pay.auth_code AS PaymentReference FROM internship_applications iapp JOIN internships i ON i.internship_id = iapp.internship_id JOIN company cmp ON i.company_id = cmp.company_id JOIN users u ON u.user_id = iapp.user_id LEFT JOIN payments pay ON pay.payment_id = iapp.payment_id WHERE iapp.application_id = :applicationId", nativeQuery = true)
	List<Object[]> GetInternAppliedId(Integer applicationId);
	
	//admin Widget and  Dynamic Display in UserBody, UserContactUs as a Fact:
	@Query(value = "select count(*) from internship_applications where status=\"ACCEPTED\"", nativeQuery = true)
	Integer acceptedInternshipApplications();
	
	//admin Widget for Applications was PENDING:
	@Query(value = "select count(*) from internship_applications where status='PENDING'", nativeQuery = true)
	Integer pendingInternshipApplications();
	
	//for user see view particular internshipApplication by applicationId
	@Query(value ="select iapp.*, concat(u.first_name, ' ', u.last_name) as YourName, u.role as UserRole, i.title as InternshipTitle, i.company_id  as CompanyId, i.stipend as Stipend, cmp.company_name  as CompanyName, cmp.address as CompanyAddress, pay.auth_code as PaymentReference from internship_applications as iapp join internships i on i.internship_id = iapp.internship_id join company cmp on i.company_id = cmp.company_id join users u on u.user_id = iapp.user_id left join payments pay on pay.payment_id = iapp.payment_id where iapp.application_id = :applicationId", nativeQuery = true)
	List<Object[]> UserViewInternApplicationById(Integer applicationId);
	
	//for Internship Application Reports:
	@Query(value = "SELECT ia.application_id,  concat(u.first_name, ' ', u.last_name) as FullName, c.college_name,        i.title AS internship_title, comp.company_name, ia.status, ia.applied_at FROM internship_applications ia JOIN users u ON ia.user_id = u.user_id JOIN student_detail sd ON u.user_id = sd.user_id JOIN college c ON sd.college_id = c.college_id JOIN internships i ON ia.internship_id = i.internship_id JOIN company comp ON i.company_id = comp.company_id ORDER BY c.college_name", nativeQuery = true)
	List<Object[]> findApplicationsWithCollegeAndInternshipDetails();
	
	//for Internship Application Status Summary Report:
	@Query(value = "SELECT i.internship_id, i.title AS internship_title, c.company_name, COUNT(ia.application_id) AS total_applications, SUM(CASE WHEN ia.status = 'PENDING' THEN 1 ELSE 0 END) AS pending_count, SUM(CASE WHEN ia.status = 'ACCEPTED' THEN 1 ELSE 0 END) AS accepted_count, SUM(CASE WHEN ia.status = 'REJECTED' THEN 1 ELSE 0 END) AS rejected_count, SUM(CASE WHEN ia.status = 'WITHDRAWN' THEN 1 ELSE 0 END) AS withdrawn_count, i.application_dead_line, i.created_at FROM internships i JOIN company c ON i.company_id = c.company_id LEFT JOIN internship_applications ia ON i.internship_id = ia.internship_id GROUP BY i.internship_id, i.title, c.company_name, i.application_dead_line, i.created_at ORDER BY total_applications DESC", nativeQuery = true)
	List<Object[]> findInternshipApplicationStatusSummary();
	
}
