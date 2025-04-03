package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.StudentDetailEntity;

@Repository
public interface StudentDetailRepository extends JpaRepository<StudentDetailEntity, Integer>{
	@Query(value = "SELECT sd.*,concat(u.first_name, \" \", u.last_name) as FullName, u.email, cm.company_id, i.internship_id, t.technology_id, cl.college_name AS CollegeName, cm.company_name AS CompanyName, i.title AS InternshipTitle, t.name AS TechnologyName FROM  student_detail sd JOIN college cl ON sd.college_id = cl.college_id JOIN internship_technologies it ON it.internship_technology_id = sd.student_detail_id JOIN internship i ON i.internship_id = it.internship_technology_id JOIN company cm ON i.company_id = cm.company_id JOIN technologies t ON t.technology_id = it.technology_id join users u on sd.user_id = u.user_id",nativeQuery = true)
	List<Object[]> GetAll();
	
	@Query(value = "SELECT sd.*,concat(u.first_name, \" \", u.last_name) as FullName, u.email, cm.company_id, i.internship_id, t.technology_id, cl.college_name AS CollegeName, cm.company_name AS CompanyName, i.title AS InternshipTitle, t.name AS TechnologyName FROM  student_detail sd JOIN college cl ON sd.college_id = cl.college_id JOIN internship_technologies it ON it.internship_technology_id = sd.student_detail_id JOIN internship i ON i.internship_id = it.internship_technology_id JOIN company cm ON i.company_id = cm.company_id JOIN technologies t ON t.technology_id = it.technology_id join users u on sd.user_id = u.user_id and sd.student_detail_id = :studentDetailId",nativeQuery = true)
	List<Object[]> GetStudentDetailById(Integer studentDetailId);
}
