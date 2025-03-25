package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.StudentDetailEntity;

@Repository
public interface StudentDetailRepository extends JpaRepository<StudentDetailEntity, Integer>{
	@Query(value = "select s.*,c.* from student_detail s, college c where s.college_id = c.college_id",nativeQuery = true)
	List<Object[]> GetAll();
}
