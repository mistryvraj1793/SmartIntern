package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.InternshipEntity;

@Repository
public interface InternshipRepository extends JpaRepository<InternshipEntity, Integer>{
	//by user email
	List<InternshipEntity> findByStatus(String status);
	
	
	//view by admin get posted name by userId	 
	@Query(value = "select i.*, concat(u.first_name, ' ', u.last_name) as PostedByName, u.role, cmp.company_name from internships i join users u on i.posted_by = u.user_id join company cmp on i.company_id = cmp.company_id and i.internship_id = :internshipId", nativeQuery = true)
	List<Object[]> GetPostedById(Integer internshipId);
	
}
