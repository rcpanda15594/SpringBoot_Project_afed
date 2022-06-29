<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%-- <sec:authentication var="principal" property="principal" /> --%>

<!-- start: sidebar -->
			<aside id="sidebar-left" class="sidebar-left">
				
				<div class="sidebar-header">
					<div class="sidebar-title">
						Navigation
					</div>
					<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
				
				<div class="nano">
					<div class="nano-content">
						<div class="sidebar-widget widget-tasks">
							<!-- <div class="widget-header" style="margin-top: 20px;">
								<h6>Dashboard</h6>
								<div class="widget-toggle">+</div>
							</div> -->
							<div class="widget-content">
								<nav id="menu" class="nav-main" role="navigation">
									<ul class="nav nav-main">
										<li >
											<a href="state_dashboard.html">
												<i class="fa fa-home" aria-hidden="true"></i>
												<span>Dashboard</span>
											</a>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-list-alt" aria-hidden="true"></i>
												<span>Student Management</span>
											</a>
											<ul class="nav nav-children">
												<li>
													<a href="${contextPath}/addStudent.htm">
														<span>Add Student</span>
													</a>
												</li>
												<li>
													<a href="${contextPath}/getAllStudent.htm">
														<span>View Student List</span>
													</a>
												</li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-list-alt" aria-hidden="true"></i>
												<span>Staff Management</span>
											</a>
											<ul class="nav nav-children">
												<li>
													<a href="su_schemeKalia.html">
														<span>Add Staff</span>
													</a>
												</li>
											</ul>
										</li>
										<li class="nav-parent nav-expanded">
											<a>
												<i class="fa fa-rupee" aria-hidden="true"></i>
												<span>Book Management</span>
											</a>
											<ul class="nav nav-children">
												<li>
													<a href="${contextPath}/addnewbook.htm">
														<span>Add Book</span>
													</a>
												</li>
												<li class="nav-active">
													<a href="su_fundDSSO.html">
														Find Book
													</a>
												</li>
												<li>
													<a href="su_fundBDO.html">
														Issue Book
													</a>
												</li>
											</ul>
										</li>
										<li class="nav-parent nav-expanded">
											<a>
												<i class="fa fa-check" aria-hidden="true"></i>
												<span>Bank</span>
											</a>
											<ul class="nav nav-children">
												<li class="nav-active">
													<a href="${contextPath}/getBank.htm">
														Bank Account
													</a>
												</li>
												<li>
													<a href="du_update_acc.html">
														Update Account
													</a>
												</li>
											</ul>
										</li>
										<li class="nav-parent nav-expanded">
											<a>
												<i class="fa fa-check" aria-hidden="true"></i>
												<span>Reports</span>
											</a>
											<ul class="nav nav-children">
												<li class="nav-active">
													<a href="${contextPath}/getStudentRepot.htm">
														Get Student Report
													</a>
												</li>
												<li>
													<a href="du_update_acc.html">
														Get Library Report
													</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="su_projects.html">
												<i class="fa fa-home" aria-hidden="true"></i>
												<span>Complaint Desk</span>
											</a>
										</li>

									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				
			</aside>
			