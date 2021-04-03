<%--
  Created by IntelliJ IDEA.
  User: C.H
  Date: 2021/03/30
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   pageContext.setAttribute("ctp",request.getContextPath());
%>
<html>
<head>
    <title>员工页面</title>
    <script type="text/javascript" src="${ctp}/static/js/jquery.min.js"></script>
    <%--引入样式--%>
    <link href="${ctp}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${ctp}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<%--显示页面--%>
<div class="container">
    <%--标题--%>
    <div class="row">
        <div class="col-md-12">
            <h1>CRUD</h1>
        </div>
    </div>
        <%--按钮--%>
    <div class="row">
       <div class="col-md-4 col-md-offset-8">
           <button class="btn btn-primary">add</button>
           <button class="btn btn-danger">delete</button>
       </div>
    </div>
        <%--表格数据--%>
    <div class="row">
        <table class="table table-hover">
            <tr>
                <th>#</th>
                <th>empName</th>
                <th>gender</th>
                <th>email</th>
                <th>deptName</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${pageInfo.list}" var="emp">
                <tr>
                    <th>${emp.empId}</th>
                    <th>${emp.empName}</th>
                    <th>${emp.gender}</th>
                    <th>${emp.email}</th>
                    <th>${emp.department.deptName}</th>
                    <th>
                        <button class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>edit</button>
                        <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>delete</button>
                    </th>
                </tr>
            </c:forEach>

        </table>
    </div>
        <%--显示分页--%>
    <div class="row">

        <div class="col-md-6">current:${pageInfo.pageNum}     total:${pageInfo.pages}      totalnum:${pageInfo.total}</div>
        <div class="col-md-6">
            <nav aria-label="Page navigation">
            <ul class="pagination">
                <li><a href="${ctp}/emps?id=1">
                    <c:if test="${1!=pageInfo.pageNum}">first</c:if>
                </a></li>


                <li>
                    <a href="${ctp}/emps?id=${pageInfo.pageNum-1}" aria-label="Previous">
                        <c:if test="${pageInfo.pageNum!=1}"><span aria-hidden="true">&laquo;</span>
                        </c:if>
                    </a>
                </li>
                <c:forEach items="${pageInfo.navigatepageNums}" var="page_Num">
                    <c:if test="${page_Num==pageInfo.pageNum}">
                        <li class="active"><a href="#">${page_Num}</a></li>
                    </c:if>
                    <c:if test="${page_Num!=pageInfo.pageNum}">
                        <li><a href="${ctp}/emps?id=${page_Num}">${page_Num}</a></li>
                    </c:if>
                </c:forEach>
                <li>
                    <a href="${ctp}/emps?id=${pageInfo.pageNum+1}" aria-label="Next">
                        <c:if test="${pageInfo.pageNum!=pageInfo.pages}"><span aria-hidden="true">&raquo;</span>
                        </c:if>

                    </a>
                </li>

                <li><a href="${ctp}/emps?id=${pageInfo.pages}">
                  <c:if test="${pageInfo.pages!=pageInfo.pageNum}">final</c:if>
                </a></li>
            </ul>
        </nav>
        </div>
    </div>
</div>
</body>
</html>
