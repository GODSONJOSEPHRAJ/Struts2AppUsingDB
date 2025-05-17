<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>

    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        
		 <s:if test="users.size() > 0">
        <s:iterator value="users">
            <tr>
                <td><s:property value="name"/></td>
                <td><s:property value="email"/></td>
                <td>
                    <s:url var="deleteUrl" action="userDelete">
                        <s:param name="user.id" value="%{id}"/>
                    </s:url>
                    <a href="${deleteUrl}">Delete</a>

                    <s:url var="editUrl" action="userEdit">
                        <s:param name="id" value="%{id}"/>
                    </s:url>
                    <a href="${editUrl}">Update</a>
                </td>
            </tr>
        </s:iterator>
        </s:if>
        
         <s:else>
        <tr>
            <td colspan="3" style="text-align:center;">No users found.</td>
        </tr>
    </s:else>
    
    </table>

    <br>
    <s:a href="index.jsp">Back to Add User</s:a>
</body>
</html>
