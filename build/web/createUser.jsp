<%-- 
    Document   : entry
    Created on : Mar 3, 2017, 10:49:16 AM
    Author     : ASUS
--%>
<%@include file="linkingScriptAndCss.jsp" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="js/validation.js"></script>
         <script src="js/sweetalert-master/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="js/sweetalert-master/dist/sweetalert.css">
        <link href='style.css' rel='stylesheet' type='text/css'/>
        <link rel="icon" href="images/icon.gif" type="image/gif" sizes="16x16">
         <link href='css/button.css' rel='stylesheet' type='text/css'/>
        <title>FKL ASSET V4 | Entry Information</title>
        <script>
            
           // document.getElementById("msuccess").setAttribute("style","display: none");
           // document.getElementById("msuccess1").setAttribute("style","display: none");
            
        </script>
        
        
    </head>
    <body>
        <%@include file="mainMenu.jsp" %>
        <div class='fix main'> <!--  main DIV is Start  -->   
                
            <div class="border"></div>
            <!--  #######################   mian menu  ##################################################################-->
        
        
      <center>
          
          
         
           <div style="color:#9c2400;font-size: 15px; text-shadow: 0 1px 1px rgba(0, 0, 0, 0.75);opacity: 1; height: auto;">
            <s:property value="message"/>
          </div>
                        
          
          <div class='fix form'>
          
          <div class="auth-form-header"> 
         
          <legend align="center">User Management (Test)</legend>
                  
                  </div>
                  
         <div class="auth-form-body">
        
             <div id="msuccess1" style="display: none;"> 
                             <div style="color: #9c2400;font-size: 15px; text-shadow: 0 1px 1px rgba(0, 0, 0, 0.75);opacity: 1; height: auto;">
                             <s:property value="message2"/>
                             </div>
             </div>
             
          
          <s:form  theme="simple">
              <table>
                    
                  <tr>   
                      
                      

                  <tr>
                             <td>User Name:</td>
                             <td><s:textfield name="aname" id="aname" cssClass="userId"/></td>
                             <td>
                                 <s:submit value="Search" action="searchAdmn" onmouseover="/addEmp()" cssClass="btn btn-primary btn-large">
                                <s:param name="aname" value="aname" />
                             </s:submit>
                             </td>
                  
                  </tr>
                             
                   <tr>
                             <td>User Password   :</td>
                             <td><s:textfield name="password"  id="password" cssClass="userId"/></td>
                             
                    </tr>         
                             
                    <tr>        
                           
                             <td>User Right:</td>
                             <%--<td><s:textfield name="dept" id="dept" cssClass="userId"/></td>--%>
                            <td><s:select name="right" id="right" list="{'Entry User', 'Admin', 'Super Admin','Inactive'}"
                                     headerKey="" headerValue="---Select Type---" cssClass="select"/></td>
                            
                      </tr>

                     
                      </table>
                      
                      
                      

                     
                      <table>
                      
                           <td align="center">
                             
                              <s:submit value="Save" onmouseover="/addEmp()" action="saveAdmn" cssClass="btn btn-primary btn-large"/>
                            </td>  
                          
                         
                          
                          <td align="center">
                             
                              <s:submit value="Update" onmouseover="/addEmp()" action="upAdmn" cssClass="btn btn-primary btn-large"/>
                            </td>  
                          
                          
                          
                          
                      
                  </table>

          </s:form>
                  
          </div>
                  
                  
         
             
              
        </div>
      
       </center>
            
            
      </div>
    </body>
</html>

