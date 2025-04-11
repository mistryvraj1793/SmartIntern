package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ProjectsEntity;

@Repository
public interface ProjectRepository extends JpaRepository<ProjectsEntity, Integer>{
	
	//for admin get all company and users details.
	@Query(value = "select p.*, cmp.company_name, cmp.address, cmp.external_guide, cmp.external_guide_contact_num, cmp.person_name, concat(u.first_name, ' ',u.last_name) as FullName, u.role from projects p join company cmp on cmp.company_id = p.company_id join users u on u.user_id = cmp.user_id", nativeQuery = true)
	List<Object[]> GetAll();
	
	//for admin get all company and users details By Id.
	@Query(value = "select p.*, cmp.company_name, cmp.address, cmp.external_guide, cmp.external_guide_contact_num, cmp.person_name, concat(u.first_name, ' ',u.last_name) as FullName, u.role from projects p join company cmp on cmp.company_id = p.company_id join users u on u.user_id = cmp.user_id and p.project_id = :projectId", nativeQuery = true)
	List<Object[]> findByProjectId(Integer projectId);
}
