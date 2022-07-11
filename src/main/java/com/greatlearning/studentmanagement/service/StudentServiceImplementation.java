package com.greatlearning.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.studentmanagement.entity.Student;
import com.greatlearning.studentmanagement.repository.StudentsRepository;

@Service
public class StudentServiceImplementation implements StudentService {

	@Autowired
	StudentsRepository studentRepository;
	@Override
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Student findByStudentId(int id) {
		return studentRepository.findById(id).get();
	}

	@Override
	public Student saveStudent(Student student) {
		return studentRepository.save(student);
		
	}

	@Override
	public void deleteById(int id) {
		studentRepository.deleteById(id);
		
	}

}
