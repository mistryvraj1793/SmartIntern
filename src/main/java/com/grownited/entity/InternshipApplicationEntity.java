package com.grownited.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="internhsip_application")
public class InternshipApplicationEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer applicationId;
	private Integer internshipId;
	private Integer userId;//fk: user
	private String resumePath;
	private String coverLetterPath;//optional
	private String paymentReference;
	private Boolean status;//eg: PENDING / ACCEPTED / REJECTED / WITHDRAWN 
	private Date appliedAt;
	
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
	public String getPaymentReference() {
		return paymentReference;
	}
	public void setPaymentReference(String paymentReference) {
		this.paymentReference = paymentReference;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public Date getAppliedAt() {
		return appliedAt;
	}
	public void setAppliedAt(Date appliedAt) {
		this.appliedAt = appliedAt;
	}
	
}
