package com.grownited.entity;

import java.time.LocalDate;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity // create table
@Table(name="users")// Maps to the 'users' table in the database
public class UserEntity { // Class names should follow PascalCase
 
	@Id//is meant to mark a single primary key for the table.
	@GeneratedValue(strategy = GenerationType.IDENTITY )// Auto-incrementing primary key
	private Integer userId;// Corrected: 'Integer' (capital I), not 'integer'
	private String firstName;
	private String lastName;
	@Column(unique = true)//in Spring Boot JPA ensures that a column (e.g., email) cannot have duplicate values at the database level.
	private String email;
	private String password;
	private Integer contactNum;
	private String gender;
	private Integer bornYear;
	private Boolean activate;
	private LocalDate createdAt;// Represents a timestamp field in the users table.
	private String role;//according to Me: students, employees, faculties. According to Sir: 1:admin, 2:intern, 3:mentor, 4:hr 
	private String otp;
	private String profilePicPath;
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getContactNum() {
		return contactNum;
	}
	public void setContactNum(Integer contactNum) {
		this.contactNum = contactNum;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Integer getBornYear() {
		return bornYear;
	}
	public void setBornYear(Integer bornYear) {
		this.bornYear = bornYear;
	}
	public Boolean getActivate() {
		return activate;
	}
	public void setActivate(Boolean activate) {
		this.activate = activate;
	}
	public LocalDate getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	public String getProfilePicPath() {
		return profilePicPath;
	}
	public void setProfilePicPath(String profilePicPath) {
		this.profilePicPath = profilePicPath;
	}
		
}
