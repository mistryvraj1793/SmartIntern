package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="internship_project")
public class InternshipProjectEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer internshipProjectId;
	private Integer internshipId;
	private Integer projectId;
	
	public Integer getInternshipProjectId() {
		return internshipProjectId;
	}
	
	public void setInternshipProjectId(Integer internshipProjectId) {
		this.internshipProjectId = internshipProjectId;
	}
	public Integer getInternshipId() {
		return internshipId;
	}
	public void setInternshipId(Integer internshipId) {
		this.internshipId = internshipId;
	}
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
		
}
