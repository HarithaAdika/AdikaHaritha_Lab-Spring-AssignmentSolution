package com.greatlearning.studentmanagement.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.greatlearning.studentmanagement.entity.Student;
import com.greatlearning.studentmanagement.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentsController {
	@Autowired
	private StudentService studentService;

	@RequestMapping("/list")
	public String studentsList(Model theModel) {
		System.out.println("Request to Fetch student details");
		// get Students from db table
		List<Student> students = studentService.getAllStudents();
		theModel.addAttribute("Students", students);

		return "studentList";
	}

	@RequestMapping("/studentFormForAdd")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		Student student = new Student();

		theModel.addAttribute("NewStudent", student);

		return "saveStudentForm";
	}

	@RequestMapping("/studentFormForUpdate")
	public String showFormForUpdate(@RequestParam("student_Id") int id, Model theModel) {

		// get the Student Details from the service
		Student student = studentService.findByStudentId(id);
		theModel.addAttribute("NewStudent", student);

		return "saveStudentForm";
	}
	@PostMapping("/save")
	public String saveStudent(@ModelAttribute("Student") Student student) {
		studentService.saveStudent(student);
		return "redirect:/student/list";
	}
	

	@RequestMapping("/delete")
	public String delete(@RequestParam("student_Id") int id) {

		// delete the Student by ID
		studentService.deleteById(id);

		// redirect to /student/list
		return "redirect:/student/list";

	}
	
	@RequestMapping("/403")
	public ModelAndView delete(Principal user) {
		ModelAndView model = new ModelAndView();
		if(user != null) {
			model.addObject("msg","Hi"+user.getName()+"you don't have permission to perform this action");
		}
		else {
			model.addObject("msg","Hi, you don't have permission to perform this action");
		}
		model.setViewName("403");
		return model;
	}
	


}
