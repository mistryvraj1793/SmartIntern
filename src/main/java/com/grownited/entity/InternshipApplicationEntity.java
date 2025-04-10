package com.grownited.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="internship_applications")
public class InternshipApplicationEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer applicationId;
	private Integer internshipId;//fk
	private Integer userId;//fk: user
	private String resumePath;
	private String coverLetterPath;//optional
	private String status;//eg: PENDING / ACCEPTED / REJECTED / WITHDRAWN 
	private LocalDate appliedAt;
	private Integer paymentId; 
	
	public Integer getApplicationId() {
		return applicationId;
	}
	public void setApplicationId(Integer applicationId) {
		this.applicationId = applicationId;
	}
	public Integer getInternshipId() {
		return internshipId;
	}
	public void setInternshipId(Integer internshipId) {
		this.internshipId = internshipId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getResumePath() {
		return resumePath;
	}
	public void setResumePath(String resumePath) {
		this.resumePath = resumePath;
	}
	public String getCoverLetterPath() {
		return coverLetterPath;
	}
	public void setCoverLetterPath(String coverLetterPath) {
		this.coverLetterPath = coverLetterPath;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LocalDate getAppliedAt() {
		return appliedAt;
	}
	public void setAppliedAt(LocalDate appliedAt) {
		this.appliedAt = appliedAt;
	}
	public Integer getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(Integer paymentId) {
		this.paymentId = paymentId;
	}
	
}
