<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
    <style>
        .form-group {
            margin-bottom: 10px;
        }
        label {
            display: inline-block;
            width: 100px;
        }
        input[type="text"] {
            padding: 5px;
            width: 200px;
        }
        .save-button {
            margin-top: 10px;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h2>Student Form</h2>
    
    <form:form action="saveStudent" modelAttribute="student" method="POST">
        <div class="form-group">
            <label>Name:</label>
            <form:input path="name" />
        </div>
        
        <div class="form-group">
            <label>Email:</label>
            <form:input path="email" />
        </div>
        
        <div class="form-group">
            <label>Address:</label>
            <form:input path="address" />
        </div>
        
        <input type="submit" value="Save" class="save-button" />
    </form:form>
</body>
</html> 