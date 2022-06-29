<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<section class="main_container">
   <header class="page-header">
      <h2>
         Student List
      </h2>
      <div class="right-wrapper pull-right">
         <ol class="breadcrumbs">
            <li>
               <a href="${contextPath}">
               <i class="fa fa-home"></i>
               </a>
            </li>
            <li>
               <span>
                  Student
               </span>
            </li>
            <li>
               <span>
                 Student List
               </span>
            </li>
         </ol>
      </div>
   </header>
   <div class="row">
      <div class="col-md-12">
         <section class="panel">
            <header class="panel-heading">
               <div class="panel-actions">
                  <a href="#" class="fa fa-caret-down"></a>
               </div>
               <h2 class="panel-title">
                   Student List
               </h2>
            </header>
            <div class="panel-body">
               <div class="row">
                  <div class="col-md-12" style="padding-top: 15px;">
                     <table class="DataTable table table-bordered table-hovered" style="width:100%">
                        <thead>
                           <tr>
                              <th>
                                 SL NO
                              </th>
                              <th>
                                 Student Name
                              </th>
                              <th>
                                 Registration No
                              </th>
                               <th>
                                 Mobile
                              </th>
                               <th>
                                 Branch
                              </th>
                              <th style="width: 65px;">
                                 Action
                              </th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:forEach items="${studentList}" var="student" varStatus="status">
                              <tr>
                                 <td>${status.count}</td>
                                 <td>${student.std_fname} ${student.std_mname} ${student.std_lname}</td>
                                 <td>${student.registrationNo}</td>
                                  <td>${student.mobile}</td>
                                  <td>${student.branch.branch}</td>
                                 <td>
                                    <%-- <div class="btn-group-2">
                                       <a href="#" class="btn btn-success btn-sm" onclick="editFloor(${allFloor.floorId})" data-toggle="tooltip" title="Edit Floor"><i class="fa fa-edit" aria-hidden="true"></i></a>
                               	    <c:if test="${allFloor.isActive eq true}">
                                     <a href="#" class="btn btn-primary btn-sm" onclick="deleteFloor(${allFloor.floorId})" data-toggle="tooltip" title="Deactive Floor"><i class="fa fa-unlock" style="font-size: 15px;" aria-hidden="true"></i></a>
									</c:if>
                                   <c:if test="${allFloor.isActive eq false}">
                                     <a href="#" class="btn btn-danger btn-sm" onclick="deleteFloor(${allFloor.floorId})" data-toggle="tooltip" title="Active Floor"><i class="fa fa-lock" style="font-size: 15px;" aria-hidden="true"></i></a>
									</c:if>
                                    </div> --%>
                                 </td>
                              </tr>
                           </c:forEach>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </section>
      </div>
   </div>
</section>
<form id="deleteFloorFrm" method="POST" action="./deleteFloor">
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
   <input type="hidden" name="deleteFloorId" id="deleteFloorId" />
</form>
<script type="text/javascript">
   function deleteFloor(id){
   	$('#deleteFloorId').val(id);
   	bootbox.confirm("Are you sure ?", function(result) {
           if (result) {
              $('#deleteFloorFrm').submit();
           }
       });
   }
</script>