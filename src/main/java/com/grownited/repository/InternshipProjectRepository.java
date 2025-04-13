package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.InternshipProjectEntity;

@Repository
public interface InternshipProjectRepository extends JpaRepository<InternshipProjectEntity, Integer> {
	//Dynamic Display in UserContactUs as a Fact:
	@Query( value = "SELECT COUNT(DISTINCT ip.project_id) as LiveInternshipProjects FROM internship_project ip join projects p on p.project_id = ip.project_id WHERE p.active = true", nativeQuery = true)
	Integer countLiveInternshipProjects();

}
