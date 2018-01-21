<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


    
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<script src="http://formvalidation.io/vendor/formvalidation/js/formValidation.min.js"></script>
<script src="http://formvalidation.io/vendor/formvalidation/js/framework/bootstrap.min.js"></script>


</head>
<body>
<div class="form-horizontal">
    <div class="row">
        <div class="col-lg-12">
            <div class="fixed-page-header">
                <div class="page-header clearfix">
                    <h1 class="page-head-text pull-left"><spring:message code="label.collection"/></h1>
                    
                                       
                   
                    <button type="submit" class="btn btn-inverse btn-sm pull-right" onClick="goMachine('${establishmentId}')"><i class="fa fa-plus-circle"></i>  <spring:message code="label.newCollection"/></button> 
                </div>                                    
            </div>
        </div>
        
    </div>
    
           
    <div class="row">                        
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading clearfix">
                   <div class="panel-name">
                        <span class="panel-head"><spring:message code="label.collectionList"/></span>
                    </div>                                        
                </div>
                
                <div class="panel-body">
                    <div class="table-responsive">
                        <table id="example" class="table table-bordered table-striped table-hover">
                          <thead>
                            <tr>
    
                                <th width="10%"><spring:message code="label.collectionDate"/></th>
                                <th width="10%"><spring:message code="label.playersGift"/></th>
                                <th width="10%"><spring:message code="label.otherExpenses"/></th>
                                <th width="10%"><spring:message code="label.establishmentShare"/></th>
                                <th width="10%"><spring:message code="label.operatorShare"/></th>
                                <th width="10%"><spring:message code="label.adminShare"/></th>   
                                <th width="10%"><spring:message code="label.machineCollection"/></th> 
                              
                            </tr>
                          </thead>
                            <tbody>
                          	<c:forEach var="mc" items="${collections}">
                                <tr>
                                  
                                    <td>${mc.collectionDate}</td>
                                    <td>${mc.playersGift}</td>
                                    <td>${mc.otherExpenses}</td>
                                    <td>${mc.establishmentShare}</td>
                                    <td>${mc.operatorShare}</td>
                                    <td>${mc.adminShare}</td>
                                    <td><button type="submit" class="btn btn-default btn-sm" onClick="machineCollectionList('${mc.id}');"><i class="fa fa-pencil-square-o"></i> <spring:message code="label.edit"/></button></td>
                                  
                                 </tr>
                          	</c:forEach>                                                                                    
                          </tbody>
                        </table>
                    </div>
                </div>                                    
            </div>
        </div>
    </div>
 
</div>
<script>
function goMachine(id){
	 window.location.href="${pageContext.request.contextPath}/operator/newcollection.html?establishmentId="+id;
 }
 
 function machineCollectionList(id){
	 window.location.href="${pageContext.request.contextPath}/operator/machinecollectionlist.html?establishmentCollectionId="+id;
 }
</script>
</body>
</html>