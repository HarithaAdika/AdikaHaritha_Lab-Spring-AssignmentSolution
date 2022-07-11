package com.greatlearning.studentmanagement.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Table(name = "students")
@Entity
@Data
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name = "firstName")
	private String firstName;

	@Column(name = "lastName")
	private String lastName;

	@Column(name = "course")
	private String course;

	@Column(name = "country")
	private String country;

	

	@Override
	public String toString() {
		return "Student [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", course="
				+ course + ", country=" + country + "]";
	}



	public Student(String firstName, String lastName, String course, String country) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.course = course;
		this.country = country;
	}



	public Student() {	}
	
	
	

}
