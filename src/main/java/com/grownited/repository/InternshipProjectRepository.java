package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.InternshipProjectEntity;

@Repository
public interface InternshipProjectRepository extends JpaRepository<InternshipProjectEntity, Integer> {
	//Dynamic Display in UserContactUs as a Fact:
	@Query( value = "SELECT COUNT(DISTINCT ip.project_id) as LiveInternshipProjects FROM internship_project ip join projects p on p.project_id = ip.project_id WHERE p.active = true", nativeQuery = true)
	Integer countLiveInternshipProjects();
	
	//for admin list the details of internshipProject with internships, projects, company, users details:
	@Query(value = "select ip.*, i.title as InternshipTitle, i.location as InternshipLocation, cmp.company_name, p.title as ProjectTitle, i.duration_weeks, i.stipend, i.application_dead_line, i.status as InternshipStatus, i.posted_by, concat(u.first_name, ' ',u.last_name) as FullName from internship_project ip join internships i on i.internship_id = ip.internship_id join projects p on p.project_id = ip.project_id join company cmp on cmp.company_id = i.company_id join users u on u.user_id = i.posted_by", nativeQuery = true)
	List<Object[]> GetAllDetails();
	
	//for admin view the details of internshipProject with internships, projects, company, users details:
	@Query(value = "SELECT ip.internship_project_id AS InternshipProjectId, i.title AS InternshipTitle, i.location AS InternshipLocation, i.duration_weeks AS DurationWeeks, i.stipend AS Stipend, i.requirements AS Requirements, i.application_dead_line AS ApplicationDeadline, i.status AS InternshipStatus, i.created_at AS InternshipCreatedAt, p.title AS ProjectTitle, p.description AS ProjectDescription, p.active AS ProjectActiveStatus, p.created_at AS ProjectCreatedAt, cmp.company_name AS CompanyName, cmp.person_name AS ContactPerson, cmp.external_guide AS ExternalGuide, cmp.company_profile_url AS CompanyProfileUrl, cmp.any_other_info_url AS OtherInfoUrl, CONCAT(u.first_name, ' ', u.last_name) AS PostedByName FROM internship_project ip JOIN internships i ON i.internship_id = ip.internship_id JOIN projects p ON p.project_id = ip.project_id JOIN company cmp ON cmp.company_id = i.company_id JOIN  users u ON u.user_id = i.posted_by and ip.internship_project_id = :internshipProjectId", nativeQuery = true)
	List<Object[]> GetInternshipProjectDetailsById(Integer internshipProjectId);
	
	//admin Widget for Total projects available under internships:
	@Query(value = "SELECT COUNT(DISTINCT project_id) AS totalProjects  FROM internship_project", nativeQuery = true)
	Integer totalInternshipProject();
	

}
