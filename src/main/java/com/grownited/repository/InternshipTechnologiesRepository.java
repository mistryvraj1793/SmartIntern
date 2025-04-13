package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.InternshipTechnologiesEntity;
@Repository
public interface InternshipTechnologiesRepository extends JpaRepository<InternshipTechnologiesEntity, Integer> {
	//for admin to list internsipTechnology with internships, technology and company: 
	@Query(value = "SELECT it.internship_technology_id AS InternshipTechnologyId, i.title AS InternshipTitle, i.status AS InternshipStatus, i.application_dead_line AS ApplicationDeadline, t.name AS TechnologyName,     t.description AS TechnologyDescription, t.frontend AS Frontend, t.backend AS Backend, t.tools AS Tools, t.language AS Language, t.created_at AS TechnologyCreatedAt, c.company_name AS CompanyName FROM  internship_technologies it JOIN  internships i ON i.internship_id = it.internship_id JOIN  technologies t ON t.technology_id = it.technology_id JOIN  company c ON c.company_id = t.company_id", nativeQuery = true)
	List<Object[]> GetAllDetails();
	
	//for admin to view internshipTechnology with internships, technology, company and users By Id:
	@Query(value = "SELECT  it.internship_technology_id AS InternshipTechnologyId, i.title AS InternshipTitle, i.application_dead_line AS ApplicationDeadline, i.duration_weeks AS DurationWeeks, i.location AS Location, i.stipend AS Stipend, t.name AS TechnologyName, t.description AS Description, t.frontend AS Frontend, t.backend AS Backend, t.tools AS Tools, t.language AS Language, t.created_at AS TechnologyCreatedAt, c.company_name AS CompanyName, c.company_profile_url AS CompanyProfileUrl, CONCAT(u.first_name, ' ', u.last_name) AS PostedByName FROM  internship_technologies it JOIN  internships i ON i.internship_id = it.internship_id JOIN      technologies t ON t.technology_id = it.technology_id JOIN  company c ON c.company_id = t.company_id JOIN  users u ON u.user_id = i.posted_by WHERE   it.internship_technology_id = :internshipTechnologyId; ", nativeQuery = true)
	List<Object[]> GetAllInternshipTechnologyDetailsById(Integer internshipTechnologyId);
}
