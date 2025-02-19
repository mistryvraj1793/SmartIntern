package com.grownited.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="company")
public class CompanyEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer comapnyId;
	private String companyName;
	private String comapanyAddress;
	private String ComapanyUrl;
	private Integer contactPersonName;
	private String externalGuide;
	private Integer externalGuideContactNum;
	private String ComapanyProfileUrl;
	private String anyOtherInfoUrl;
	private Boolean companyActive;//status 1.active 2.deactive
	private Date CompanycreatedAt;
	private Integer userId;//foreign key
	public Integer getComapnyId() {
		return comapnyId;
	}
	public void setComapnyId(Integer comapnyId) {
		this.comapnyId = comapnyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getComapanyAddress() {
		return comapanyAddress;
	}
	public void setComapanyAddress(String comapanyAddress) {
		this.comapanyAddress = comapanyAddress;
	}
	public String getComapanyUrl() {
		return ComapanyUrl;
	}
	public void setComapanyUrl(String comapanyUrl) {
		ComapanyUrl = comapanyUrl;
	}
	public Integer getContactPersonName() {
		return contactPersonName;
	}
	public void setContactPersonName(Integer contactPersonName) {
		this.contactPersonName = contactPersonName;
	}
	public String getExternalGuide() {
		return externalGuide;
	}
	public void setExternalGuide(String externalGuide) {
		this.externalGuide = externalGuide;
	}
	public Integer getExternalGuideContactNum() {
		return externalGuideContactNum;
	}
	public void setExternalGuideContactNum(Integer externalGuideContactNum) {
		this.externalGuideContactNum = externalGuideContactNum;
	}
	public String getComapanyProfileUrl() {
		return ComapanyProfileUrl;
	}
	public void setComapanyProfileUrl(String comapanyProfileUrl) {
		ComapanyProfileUrl = comapanyProfileUrl;
	}
	public String getAnyOtherInfoUrl() {
		return anyOtherInfoUrl;
	}
	public void setAnyOtherInfoUrl(String anyOtherInfoUrl) {
		this.anyOtherInfoUrl = anyOtherInfoUrl;
	}
	public Boolean getCompanyActive() {
		return companyActive;
	}
	public void setCompanyActive(Boolean companyActive) {
		this.companyActive = companyActive;
	}
	public Date getCompanycreatedAt() {
		return CompanycreatedAt;
	}
	public void setCompanycreatedAt(Date companycreatedAt) {
		CompanycreatedAt = companycreatedAt;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
}
