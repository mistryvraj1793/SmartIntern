package com.grownited.entity;

import java.time.LocalDate;

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
	private Integer companyId;//pk
	private String companyName;
	private String address;
	private String url;
	private String personName;
	private String externalGuide;
	private Integer externalGuideContactNum;
	private String profileUrl;
	private String anyOtherInfoUrl;
	private Boolean active;//status 1.active 2.deactive
	private LocalDate createdAt;
	private Integer userId;//foreign key
	
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
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
	public String getProfileUrl() {
		return profileUrl;
	}
	public void setProfileUrl(String profileUrl) {
		this.profileUrl = profileUrl;
	}
	public String getAnyOtherInfoUrl() {
		return anyOtherInfoUrl;
	}
	public void setAnyOtherInfoUrl(String anyOtherInfoUrl) {
		this.anyOtherInfoUrl = anyOtherInfoUrl;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	public LocalDate getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	
	
	
}
