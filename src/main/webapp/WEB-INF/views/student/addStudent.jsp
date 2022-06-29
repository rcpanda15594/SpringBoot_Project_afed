<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${contextPath}/resources/assets/vendor/jquery_datepicker/jquery.datepick.css" />
<link rel="stylesheet" href="${contextPath}/resources/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
<section class="main_container">
   <header class="page-header">
      <h2>Add New Student</h2>
      <div class="right-wrapper pull-right">
         <ol class="breadcrumbs">
            <li>
               <a href="state_dashboard.html">
               <i class="fa fa-home"></i>
               </a>
            </li>
            <li><span>Add Student</span></li>
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
               <h2 class="panel-title">Add Student</h2>
            </header>
            <div class="panel-body">
               <form class="form-horizontal" method="POST" action="${contextPath}/saveStudent.htm" id="brandFrm">
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                  <div class="row">
                     <div class="col-md-12">
                      <div class="col-md-3">
                              <div class="form-group">
                                 <label class="col-md-12" for="text">
                                 Session:
                                 </label>
                                 <div class="col-md-12">
                                    <select class="form-control"  name="academic_Year.academic_year_id" id="PropertyBrandName" onchange="getOwnerDetails(this.value)">
                                       <option value="">--Select--</option>
                                       <c:forEach items="${finYear}" var="year">
                                          <option value="${year.academic_year_id}">${year.academic_year}</option>
                                       </c:forEach>
                                    </select>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label class="col-md-12" for="text">
                                 Branch:
                                 </label>
                                 <div class="col-md-12">
                                    <select class="form-control"  name="branch.branchId" id="PropertyBrandName" onchange="getOwnerDetails(this.value)">
                                       <option value="">--Select--</option>
                                       <c:forEach items="${brnchList}" var="branch">
                                          <option value="${branch.branchId}">${branch.branch}</option>
                                       </c:forEach>
                                    </select>
                                 </div>
                              </div>
                           </div>
                      <div class="col-md-12">
                              <hr style="margin-top: 10px;">
                           </div>
                     <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">First Name:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault" placeholder="Enter account no" name="std_fname">
                              </div>
                           </div>
                        </div>
                         <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">Middle Name:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault" placeholder="Enter account no" name="std_mname">
                              </div>
                           </div>
                        </div>
                         <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">Last Name:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault" placeholder="Enter account no" name="std_lname">
                              </div>
                           </div>
                        </div>
                         <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">Mobile:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault" placeholder="Enter account no" name="mobile">
                              </div>
                           </div>
                        </div>
                         <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">Email:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault" placeholder="Enter account no" name="email">
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12" for="text">
                                Date Of Birth
                              </label>
                              <div class="col-md-12 datepicker_con">
                                 <input type="text" class="form-control" id="purchase_date" placeholder="dd/MM/yyyy" name="purchase_date" readonly>
                              </div>
                           </div>
                        </div>
                         <div class="col-md-6">
                           <div class="form-group">
                              <label class="col-md-12">Present Address:</label>
                              <div class="col-md-12">
                                 <textarea  class="form-control" id="inputDefault" placeholder="Enter account no" name="address"></textarea>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-12">
                     <div class="text-center">
                        <button type="submit" class="btn btn-success" onclick="allocate()">Submit</button>
                        <button type="reset" class="btn btn-warning">Clear</button>
                        <button type="reset" class="btn btn-danger">Back</button>
                     </div>
                  </div>
               </form>
            </div>
         </section>
      </div>
   </div>
</section>
<script src="${contextPath}/resources/assets/vendor/jquery_datepicker/jquery.plugin.js"></script>
<script src="${contextPath}/resources/assets/vendor/jquery_datepicker/jquery.datepick.js"></script>
<script src="${contextPath}/resources/assets/vendor/bootbox/bootbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
<script>
	$(function() {
		$('.datepicker_con>input').datepick({onShow: $.datepick.monthOnly, dateFormat: 'dd/mm/yyyy',yearRange: 'c-100:c+5', showOnFocus: true, 
	    showTrigger: '<button type="button" class="trigger">' + 
	    '<i class="fa fa-calendar"></i></button>'});
	});
</script>