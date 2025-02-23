package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="company_user")
public class CompanyUserEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer companyUserId;
	private Integer companyId;
	private Integer userId;
	private String title;
	public Integer getCompanyUserId() {
		return companyUserId;
	}
	public void setCompanyUserId(Integer companyUserId) {
		this.companyUserId = companyUserId;
	}
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
