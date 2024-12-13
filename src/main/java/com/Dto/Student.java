package com.Dto;

import java.util.List;
import javax.persistence.*;

@Entity
public class Student {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private long phone;

    @Column(nullable = false)
    private String DOB;

    @Column(nullable = false)
    private String gender;

    @ElementCollection // Specifies that subjects is a collection of basic types
    @CollectionTable(name = "student_subjects", joinColumns = @JoinColumn(name = "student_id")) // Table for storing subjects
    @Column(name = "subject") // Column name in the student_subjects table
    private List<String> subjects;

    @ManyToOne// Many students can belong to one admin
    @JoinColumn // Foreign key column in the Student table
    private Admin admin;  // Reference back to Admin

    // Getters and Setters...
   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public List<String> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<String> subjects) {
        this.subjects = subjects;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }
}