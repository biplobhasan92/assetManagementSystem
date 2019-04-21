<%-- 
    Document   : entry
    Created on : Mar 3, 2017, 10:49:16 AM
    Author     : ASUS
--%>
<%@include file="linkingScriptAndCss.jsp" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-store, must-revalidate");
        if (session.getAttribute("aname") == null) {
            response.sendRedirect("index.jsp");
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="js/validation.js"></script>
         <script src="js/sweetalert-master/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="js/sweetalert-master/dist/sweetalert.css">
        <link href='style.css' rel='stylesheet' type='text/css'/>
         <link href='css/button.css' rel='stylesheet' type='text/css'/>
        <title>FKL ASSET V4</title>
        <script>
            
           // document.getElementById("msuccess").setAttribute("style","display: none");
           // document.getElementById("msuccess1").setAttribute("style","display: none");
            
        </script>
        
        
    </head>
    <body>
        <%@include file="mainMenu.jsp" %>
        <div class='fix main'>
            <div class="border"></div>
            <!--  #######################   mian menu  ##################################################################-->
      <center>
           <div style="color:#9c2400;font-size: 15px; text-shadow: 0 1px 1px rgba(0, 0, 0, 0.75);opacity: 1; height: auto;">
            <s:property value="message"/>
          </div>
                        
          
          <div class='fix form'>
          
          <div class="auth-form-header"> 
         
          <legend align="center">Add New Employee</legend>
                  
                  </div>
                  
         <div class="auth-form-body">
             
             
             
             
    
             <div id="msuccess1" style="display: none;"> 
                             <div style="color: #9c2400;font-size: 15px; text-shadow: 0 1px 1px rgba(0, 0, 0, 0.75);opacity: 1; height: auto;">
                             <s:property value="message2"/>
                             </div></div>
             
          
          <s:form action="saveEmp" theme="simple">
              

              <%--<s:set name="id" value="id"/>
              <s:hidden name="id" value="%{id}"/>--%>
              
              <table>
                  
                <col width="150">
                <col width="180">
                <col width="150">
                <col width="180">
                <col width="150">
                <col width="180">
                
                <s:set name="oldId" value="oldId"/>
              <s:hidden name="oldId" value="%{oldId}"/>
              
               <s:set name="oldDept" value="oldDept"/>
              <s:hidden name="oldDept" value="%{oldDept}"/>
                      
                    
                  <tr>   
                      <th>Employee Data</th>
                      <tr>
                          <td><s:label for="id" >Employee I.D.:</s:label></td>
                          <td><s:textfield name="id" id="id" readonly="true" cssClass="userId"/></td>
                             
                             <%--<td >
                                 <s:submit value="Search" action="searchEmp" onmouseover="/addEmp()" cssClass="btn btn-primary btn-large">
                                <s:param name="id" value="id" />
                             </s:submit>
                             </td>--%>
                         
                             
                      
                         
                      </tr>

                      <tr>
                             <td>Employee Name:</td>
                             <td><s:textfield name="name" id="name" cssClass="userId"/></td>
                             
                             <td>Employee Designation:</td>
                             <td><s:textfield name="designation" id="designation" cssClass="userId"/></td>
                             
                             
                             
                             
                             
                             
                             
                             <td>Employee Department:</td>
                             <%--<td><s:textfield name="dept" id="dept" cssClass="userId"/></td>--%>
                             <td><s:select list="%{deptList}" name="dept" id="dept" 
                                       headerKey="" headerValue="---Select Dept---" cssClass="userId"></s:select></td>
                             
                             <%-- <td><s:select name="dept" id="dept" list="%{eDeptList}" 
                                    cssClass="select"/></td>--%>
                             
                             
                             
                      </tr>


                      <tr>
                             
                      </tr>


                      <tr>
                             
                      </tr>
                      
                      
                     
                      
                      
                      
                      </table>
                      
                      
                      

                     
                      <table>
                      
                          
                           <td align="center">
                             
                              <s:submit value="Delete" onmouseover="/addEmp()" action="deleteEmp" cssClass="btn btn-primary btn-large"/>
                            </td> 
                          
                          
                          
                          <td align="center">
                             
                              <s:submit value="Save" onmouseover="/addEmp()" action="saveEmp" cssClass="btn btn-primary btn-large"/>
                            </td>  
                          
                         
                          
                          <td align="center">
                             
                              <s:submit value="Update" onmouseover="/addEmp()" action="upEmp" cssClass="btn btn-primary btn-large"/>
                            </td>  
                          
                          
                          
                          
                      </tr>
                  </table>

          </s:form>
                  
          </div>
                  
                  
         
             
              
        </div>
      
       </center>
            
            
      </div>
    </body>
</html>

