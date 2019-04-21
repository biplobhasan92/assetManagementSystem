<%-- 
    Document   : ip_list_edit
    Created on : 27-Nov-2018, 11:07:32
    Author     : Hasan Mobarak
--%>


<%@include file="linkingScriptAndCss.jsp" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <s:if test="%{#session.master == null && #session.admin == null}">

        <jsp:forward   page="index.jsp" />

    </s:if>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/validation.js"></script>
        <script src="js/sweetalert-master/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="js/sweetalert-master/dist/sweetalert.css">
        <link href='style.css' rel='stylesheet' type='text/css'/>
        <link rel="icon" href="images/icon.gif" type="image/gif" sizes="16x16">
        <link href='css/button.css' rel='stylesheet' type='text/css'/>
        <title>FKL ASSET V4 | IP Update</title>

        <s:head theme="ajax" debug="true"/>
        <script>
            function resetfield(){
                 var getftatus = document.getElementById('ip_use_status').value;
                 if(getftatus === 'Not Used'){
                     document.getElementById('ip_user_name').value = "";
                     document.getElementById('ip_type').value = "";
                     document.getElementById('ip_user_dept').value = "";
                 }
            }
            
            function resetForm(){
                var getftatus = document.getElementById('form_status').value;
                 if(getftatus === 'Clear'){
                     document.getElementById('ip_user_name').value = "";
                     document.getElementById('ip_type').value = "";
                     document.getElementById('ip_user_dept').value = "";
                     document.getElementById('ip_use_status').value = "";
                 }
            }
            
        </script>
    </head>
    <body>
        <%@include file="mainMenu.jsp" %>
        <div class='fix main'> <!--  main DIV is Start  -->   
                
            <div class="border"></div>
            <!--  #######################   mian menu  ##################################################################-->
            <center>
                <div class='fix form'>
                    <div class="auth-form-header"> 
                        <legend align="center">Update I.P Info</legend>
                    </div>
                    <div class="auth-form-body">
                        <s:form name="editForm" id="editForm" action="updateIp" theme="simple" method="POST">
                            <table>
                                <thead>
                                    <tr>

                                        <th>IP:</th>
                                        <th>Name:</th>
                                        <th>Dept:</th>
                                        <th>Type:</th>
                                        <th>Status:</th>
                                        <th></th>
                                        <th>Clear</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><s:textfield name="ip_no"             id="ip_no"         readonly="true" cssClass="userId" /></td>
                                        <td><s:textfield name="ip_user_name"      id="ip_user_name"  cssClass="userId"/></td>
                                        <td><s:select    name="ip_user_dept"      id="ip_user_dept"  list="{
                                                         'Admin', 'Accounts', 'CAD', 'Cutting', 'Cutting Unit-2', 'Cutting Unit-4', 'Compliance', 'Commercial',
                                                         'Civil', 'Dhaka Office', 'Dyeing', 'Embroidery', 'Export', 'Finishing', 'GPQ', 'Garments', 'Garments(Maintenance)', 'HRD', 
                                                         'Information Technology', 'IE Planning','Internal Audit', 'Inventory', 'Inventory(Steel)', 'Inventory(Tally section)',
                                                         'Inventory(Chemical)', 'Inventory(Spare Parts)', 'Knitting section(Steel)', 'Knitting section', 'Logistic', 'Management',
                                                         'Merchandising', 'Maintenance', 'Others', 'Personal Management', 'Planning','Printing(design)', 'Printing', 'Purchase & Procurement',
                                                         'Quality assurance', 'Quality assurance(MQI)', 'R.Q.S.', 'Security & Fire safety', 'Security & Fire safety(Monitoring Cell)',
                                                         'Sample', 'Spinning Mill', 'Sample(fabric)', 'Swing(Unit-1)', 'Sewing Unit-5(Hanger)', 'Sweater', 'Test' }"
                                                          headerValue="---Select Dept---" cssClass="select" /></td>
                                        <td><s:select  name="ip_type"           id="ip_type"       list="{'Desktop', 'Camera', 'Laptop', 'Printer', 'Plotter','DVR','Wifi Router','Face-Device','TV','Mobile Device', 'SCLAVOS', 'Scanner', 'Projector','Test Device'}"
                                          headerKey="" headerValue="---Select Type---"  cssClass="select"/></td>
                                        <td><s:select  name="ip_use_status" onchange="resetfield()"       id="ip_use_status" list="{'Active', 'Not Used'}" headerKey="" headerValue="---Select Status---"  cssClass="select"/></td>
                                        <td><s:submit  value="Update" id="btn_ip_save_100"   cssClass="btn btn_ip_save_100 btn-primary btn-large btn_fix_size"/></td>
                                        <td><s:select  name="form_status" onchange="resetForm()" id="form_status" list="{'Clear'}" headerKey="" headerValue="---Select---"  cssClass="select"/></td>
                                        <td><s:submit  value="Back"  action="check_ip"      cssClass="btn btn-primary btn_fix_size"/></td>
                                    </tr>
                                </tbody>
                                <br/>
                            </table>
                        </s:form>
                    </div>
                </div>
            </center>
        </div>
    </body>
</html>