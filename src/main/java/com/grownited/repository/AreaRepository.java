package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AreaEntity;

@Repository
public interface AreaRepository extends JpaRepository<AreaEntity, Integer>{
	@Query(value = "select a.*,c.city_name,s.state_name from areas a, cities c, states s where a.city_id = c.city_id and c.state_id = s.state_id",nativeQuery = true)
	List<Object[]> getAll();
}
