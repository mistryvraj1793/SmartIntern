package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="internship_technologies")
public class InternshipTechnologiesEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer internshipTechnologyId;
	private Integer technologyId;
	private Integer internshipId;
	
	public Integer getInternshipTechnologyId() {
		return internshipTechnologyId;
	}
	public void setInternshipTechnologyId(Integer internshipTechnologyId) {
		this.internshipTechnologyId = internshipTechnologyId;
	}
	public Integer getTechnologyId() {
		return technologyId;
	}
	public void setTechnologyId(Integer technologyId) {
		this.technologyId = technologyId;
	}
	public Integer getInternshipId() {
		return internshipId;
	}
	public void setInternshipId(Integer internshipId) {
		this.internshipId = internshipId;
	}
	
}
