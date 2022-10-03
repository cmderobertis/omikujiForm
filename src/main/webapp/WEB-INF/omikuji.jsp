<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Tacos</title>
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
  <script src="/webjars/jquery/jquery.min.js"></script>
  <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h3 class="text-center">Omikuji Form</h3>
<div class="row justify-content-center">
  <div class="col-6">
    <div class="card">
      <div class="card-body">
        <form action="/submit" method="post">
          <label>Pick any number from 5 to 25</label>
          <input class="form-control" type="number" name="number">
          <label>Enter the name of any city</label>
          <input class="form-control" type="text" name="city">
          <label>Enter the name of any real person</label>
          <input class="form-control" type="text" name="person">
          <label>Enter professional endeavor or hobby</label>
          <input class="form-control" type="text" name="hobby">
          <label>Enter any type of living thing</label>
          <input class="form-control" type="text" name="thing">
          <label>Say something nice to someone</label>
          <input class="form-control" type="text" name="nice">
          <em>Send and show a friend</em>
          <input type="submit" value="Submit" class="btn btn-primary"/>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>