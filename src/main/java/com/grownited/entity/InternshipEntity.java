package com.grownited.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="internship")
public class InternshipEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer internshipId;
	private String title;
	private Integer companyId;
	private String location; //remote / on-site / hybrid
	private Integer stipend;
	private String description;
	private String requirements;
	private Integer durationWeeks;
	private String applicationDeadLine;
	private String status; //open / closed
	private Integer postedBy;//adminId //fk
	private LocalDate createdAt;
	public Integer getInternshipId() {
		return internshipId;
	}
	public void setInternshipId(Integer internshipId) {
		this.internshipId = internshipId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Integer getStipend() {
		return stipend;
	}
	public void setStipend(Integer stipend) {
		this.stipend = stipend;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRequirements() {
		return requirements;
	}
	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}
	public Integer getDurationWeeks() {
		return durationWeeks;
	}
	public void setDurationWeeks(Integer durationWeeks) {
		this.durationWeeks = durationWeeks;
	}
	public String getApplicationDeadLine() {
		return applicationDeadLine;
	}
	public void setApplicationDeadLine(String applicationDeadLine) {
		this.applicationDeadLine = applicationDeadLine;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getPostedBy() {
		return postedBy;
	}
	public void setPostedBy(Integer postedBy) {
		this.postedBy = postedBy;
	}
	public LocalDate getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	}
	
}
