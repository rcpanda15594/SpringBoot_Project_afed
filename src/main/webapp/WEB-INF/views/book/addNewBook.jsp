<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<section class="main_container">
   <header class="page-header">
      <h2>Add New Book</h2>
      <div class="right-wrapper pull-right">
         <ol class="breadcrumbs">
            <li>
               <a href="state_dashboard.html">
               <i class="fa fa-home"></i>
               </a>
            </li>
            <li><span>Add New Book</span></li>
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
               <h2 class="panel-title">Add New Book</h2>
            </header>
            <div class="panel-body">
               <form class="form-horizontal" method="POST" action="./saveBrand" id="brandFrm">
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                  <input type="hidden" name="brandId" value="0">
                  <div class="row">
                     <div class="col-md-12">
                     <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">Book Name:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault" placeholder="Enter account no">
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12" for="inputDefault">Category(${catList}):</label>
                              <div class="col-md-12">
                                  <select class="form-control" id="department" name="department" required="required">
                                    <option value="">--Select--</option>
                                    <c:forEach items="${catList}" var="cat">
                                       <option value="${cat.catId}">${cat.CatName}</option>
                                    </c:forEach>
                                 </select>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">Publisher :</label>
                              <div class="col-md-12">
                                 <select data-plugin-selectTwo class="form-control populate" id="month_dataselect">
                                    <option value="0"> -- Select Districts -- </option>
                                    <option value="1">Cuttack</option>
                                    <option value="2" >Jagatsinghpur</option>
                                    <option value="3" >Kendrapara</option>
                                    <option value="4" >Jajpur</option>
                                    <option value="5" >Puri</option>
                                    <option value="6" >Khordha</option>
                                    <option value="7" >Nayagarh</option>
                                    <option value="8" >Balasore</option>
                                    <option value="9" >Bhadrak</option>
                                    <option value="10" >Mayurbhanj</option>
                                    <option value="2" >Sambalpur</option>
                                    <option value="2" >Bargarh</option>
                                    <option value="2" >Jharsuguda</option>
                                    <option value="2" >Deogarh</option>
                                    <option value="2" >Balangir</option>
                                    <option value="2" >Sonepur</option>
                                    <option value="2" >Dhenkanal</option>
                                    <option value="2" >Angul</option>
                                    <option value="19" >Keonjhar</option>
                                    <option value="20" >Sundargarh</option>
                                    <option value="21" >Ganjam</option>
                                    <option value="22" >Gajapati</option>
                                    <option value="23" >Kandhamal</option>
                                    <option value="24" >Boudh</option>
                                    <option value="25" >Kalahandi</option>
                                    <option value="26" >Nuapada</option>
                                    <option value="27" >Koraput</option>
                                    <option value="28" >Rayagada</option>
                                    <option value="29" >Nabarangpur</option>
                                    <option value="30" >Malkangiri</option>
                                 </select>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3 hidden" id="district">
                           <div class="form-group">
                              <label class="col-md-12">Block :</label>
                              <div class="col-md-12">
                                 <select data-plugin-selectTwo class="form-control populate" id="month_dataselect">
                                    <option value="0"> -- Select Block -- </option>
                                    <option value="1">Block-1</option>
                                    <option value="2" >Block-2</option>
                                    <option value="3" >Block-3</option>
                                    <option value="4" >Block-4</option>
                                    <option value="5" >Block-5</option>
                                    <option value="6" >Block-6</option>
                                    <option value="7" >Block-7</option>
                                    <option value="8" >Block-8</option>
                                    <option value="9" >Block-9</option>
                                    <option value="10" >Block-10</option>
                                 </select>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12">Bank Account No:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault" placeholder="Enter account no">
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label class="col-md-12" for="inputDefault">IFSC Code:</label>
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="inputDefault"  placeholder="Enter IFSC no">
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