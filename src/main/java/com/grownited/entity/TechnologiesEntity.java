package com.grownited.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="technologies")
public class TechnologiesEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer technologyId;
	private String name;
	private String description;
	private String frontend; //jsp, react, angular
	private String backend; //spring, django, node.js
	private String tools; //postman, github
	private String language; //java, python, javaScript 
	private Date createdAt;
	private Integer companyId;
	
	public Integer getTechnologyId() {
		return technologyId;
	}
	public void setTechnologyID(Integer technologyId) {
		this.technologyId = technologyId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getFrontend() {
		return frontend;
	}
	public void setFrontend(String frontend) {
		this.frontend = frontend;
	}
	public String getBackend() {
		return backend;
	}
	public void setBackend(String backend) {
		this.backend = backend;
	}
	public String getTools() {
		return tools;
	}
	public void setTools(String tools) {
		this.tools = tools;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	
}
