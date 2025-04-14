package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ProjectsEntity;
import com.grownited.entity.TechnologiesEntity;

@Repository
public interface TechnologiesRepository extends JpaRepository<TechnologiesEntity, Integer>{
	//admin list Technology details with CompanyName:
	@Query(value = "SELECT  t.*, c.company_name FROM technologies t JOIN company c ON t.company_id = c.company_id WHERE c.active = 1 ORDER BY t.created_at DESC", nativeQuery = true)
	List<Object[]> findActiveTechnologies();
	
	//admin Viewing Technology Details by TechnologyId with company details:
	@Query(value = "SELECT  t.*, c.company_name, c.address, c.person_name, c.profile_url FROM technologies t JOIN     company c ON t.company_id = c.company_id WHERE t.technology_id = :technologyId", nativeQuery = true)
	List<Object[]> GetTechnologyDetailById(Integer technologyId);
	
	//ajax findByCompanyId so we get the technologyName:
	List<TechnologiesEntity> findByCompanyId(Integer companyId);
}
