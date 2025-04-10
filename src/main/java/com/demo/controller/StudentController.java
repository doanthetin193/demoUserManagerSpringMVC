package com.demo.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.demo.model.Student;
import com.demo.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
    
    private StudentService studentService = new StudentService();
    
    @GetMapping("/list")
    public String listStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "student-list";
    }
    
    @GetMapping("/showForm")
    public String showFormForAdd(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        return "student-form";
    }
    
    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute("student") Student student) {
        studentService.saveStudent(student);
        return "redirect:/student/list";
    }
} 