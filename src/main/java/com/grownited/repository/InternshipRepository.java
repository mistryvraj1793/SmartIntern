package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.InternshipEntity;

@Repository
public interface InternshipRepository extends JpaRepository<InternshipEntity, Integer>{
	//by user email //Widget ActiveInternships: and //Dynamic Display in UserBody as a Fact:
	List<InternshipEntity> findByStatus(String status);
	
	//list all the internship detail with postedByName and PostedByRole
	@Query(value = "select i.*, concat(u.first_name, ' ', u.last_name) as PostedByName, u.role, cmp.company_name from internships i join users u on i.posted_by = u.user_id join company cmp on i.company_id = cmp.company_id", nativeQuery = true)
	List<Object[]> GetAll();
	
	//view by admin get posted name by userId	 
	@Query(value = "select i.*, concat(u.first_name, ' ', u.last_name) as PostedByName, u.role, cmp.company_name from internships i join users u on i.posted_by = u.user_id join company cmp on i.company_id = cmp.company_id and i.internship_id = :internshipId", nativeQuery = true)
	List<Object[]> GetPostedById(Integer internshipId);
	
	//Widget Total Internships:
	@Query(value = "select count(*) from internships", nativeQuery = true)
	Integer totalInternships();
	
	//for  Internships Reports:
	@Query(value = "SELECT i.internship_id, i.title AS internship_title, c.company_name, i.status, i.location, i.application_dead_line, i.created_at AS internship_created_at, COUNT(ia.application_id) AS totalApplications FROM internships i JOIN company c ON i.company_id = c.company_id LEFT JOIN internship_applications ia ON i.internship_id = ia.internship_id GROUP BY i.internship_id, i.title, c.company_name, i.status, i.location, i.application_dead_line, i.created_at ORDER BY totalApplications DESC LIMIT 5", nativeQuery = true)
	List<Object[]> findTop5InternshipsByApplicationCount();
}
