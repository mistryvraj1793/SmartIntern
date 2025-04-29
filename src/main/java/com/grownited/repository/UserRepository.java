package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
	Optional<UserEntity> findByEmail(String email); //spring boot doesn't have all the particular attribute if we need the particular attribute then you can write in Repository class to get that attribute with findByattributename(datatype attributename)
	
	//Dynamic Display in UserBody as a Fact:
	@Query(value = "select count(*) from users", nativeQuery = true)
	Integer totalUsers();
	
	//Widget ActiveInternships and Dynamic Display in UserContactUs, UserAboutUs as a Fact:
	@Query(value = "select count(*) from users where role=\"INTERN\"", nativeQuery = true)
	Integer totalInterns();
	
	//@Query(value = "select count(*) from users where month(created_at) = :month and role='INTERN'", nativeQuery = true)
	@Query(value = "select count(*) from internship_applications ia join users u on u.user_id = ia.user_id where month(applied_at) =:month and u.role='INTERN'", nativeQuery = true)
	Integer countThisMonthIntern(Integer month);
	
}
