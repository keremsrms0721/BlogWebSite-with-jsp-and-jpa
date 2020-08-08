<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<html lang="tr">
<head>
<title>With Jsp and Jpa Blog</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- Material Kit CSS -->
<link href="assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
</head>

<body>
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white">
			<!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
			<div class="logo">
				<a href="https://www.junioryazilim.com" class="simple-text logo-mini">
					Junior Yazılım </a> <a href="https://www.junioryazilim.com"
					class="simple-text logo-normal"> Kerem Sarmış </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active  "><a class="nav-link"
						href="addblog.jsp"> <span class="material-icons">add</span>
							<p>Add Blog</p>
					</a></li>
					<li class="nav-item active  "><a class="nav-link"
						href="showblog.jsp"> <span class="material-icons">remove_red_eye</span>
						<p>Show All Blogs</p>
					</a></li>
					<li class="nav-item active  "><a class="nav-link"
						href="exit.jsp"> <span class="material-icons">exit_to_app
						</span>

							<p>Sign out</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand"">Administration Panel</a>
					</div>
				</div>
			</nav>
