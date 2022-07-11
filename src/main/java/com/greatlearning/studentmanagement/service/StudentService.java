package com.greatlearning.studentmanagement.service;

import java.util.List;

import com.greatlearning.studentmanagement.entity.Student;

public interface StudentService {

	public List<Student> getAllStudents();

	public Student findByStudentId(int id);

	public Student saveStudent(Student student);

	public void deleteById(int id);
}
