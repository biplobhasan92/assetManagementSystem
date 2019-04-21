<%-- 
    Document   : LogHistory
    Created on : 17-Mar-2019, 12:59:18
    Author     : Hasan Mobarak
--%>
<%@include file="linkingScriptAndCss.jsp" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FKL ASSET V4 | Log History</title>
    </head>
    <body>
        <%@include file="mainMenu.jsp" %>
        <div class='fix main'> <!--  main DIV is Start  -->   
                
            <div class="border"></div>
            <!--  #######################   mian menu  ##################################################################-->
            <div class="container-fluid">
                <div class="test-calss">
                    <div style="text-align: center">
                    <br/>
                    <br/>
                    <h1>Operation History Log</h1>
                    <br/>
                    <br/>
                    </div>
                        <table id="myTable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                    <tr>
                                       <th>SL</th>
                                       <th>Machine IP</th>
                                       <th>Type</th>
                                       <th>Employee ID</th>
                                       <th>Dept.</th>
                                       <th>Modify(Date)</th>
                                       <th>Remarks</th>
                                       <th>Note</th>
                                       <th>Asset.User</th>
                                       <th>From PC</th>
                                    </tr>
                            </thead>

                            <tbody>
                                    <s:iterator value="getHistoryList">
                                            <tr>
                                                    <td><s:property value="sl"/></td>
                                                    <td><s:property value="ip"/></td>
                                                    <td><s:property value="mtype"/></td>
                                                    <td><s:property value="id"/></td>
                                                    <td><s:property value="dept"/></td>
                                                    <td><s:property value="date"/></td>
                                                    <td><s:property value="remarks"/></td>
                                                    <td><s:property value="note"/></td>
                                                    <td><s:property value="action_by_user"/></td>
                                                    <td><s:property value="action_take_by_pc"/></td>
                                            </tr>
                                    </s:iterator>
                            </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
