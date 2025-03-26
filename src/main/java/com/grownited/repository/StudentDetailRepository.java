package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.StudentDetailEntity;

@Repository
public interface StudentDetailRepository extends JpaRepository<StudentDetailEntity, Integer>{
	@Query(value = "select s.*,c.college_name from student_detail s, college c where s.college_id = c.college_id",nativeQuery = true)
	List<Object[]> GetAll();
	
	@Query(value = "SELECT sd.student_detail_id AS StudentID, sd.city,sd.college_id, sd.created_at, sd.degree, sd.profile_pic_path, sd.resume_path, sd.semester, sd.state, sd.tshirt_size, cm.company_id, i.internship_id, t.technology_id, cl.college_name AS CollegeName, cm.company_name AS CompanyName, i.title AS InternshipTitle, t.name AS TechnologyName FROM  student_detail sd JOIN college cl ON sd.college_id = cl.college_id JOIN internship_technologies it ON it.internship_technology_id = sd.student_detail_id JOIN internship i ON i.internship_id = it.internship_technology_id JOIN company cm ON i.company_id = cm.company_id JOIN technologies t ON t.technology_id = it.technology_id and sd.student_detail_id = :studentDetailId",nativeQuery = true)
	List<Object[]> GetStudentDetailById(Integer studentDetailId);
}
