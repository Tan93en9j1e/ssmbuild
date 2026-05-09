<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<html>
<head>
    <title>书籍管理系统</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding-top: 30px;
            font-family: 'Microsoft YaHei', Arial, sans-serif;
        }
        .main-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
            padding: 30px;
            margin-bottom: 30px;
        }
        .page-header {
            border-bottom: 2px solid #667eea;
            padding-bottom: 15px;
            margin-bottom: 30px;
        }
        .page-header h1 {
            color: #333;
            font-weight: bold;
            margin: 0;
        }
        .page-header small {
            color: #666;
            font-size: 16px;
        }
        .btn-custom {
            border-radius: 20px;
            padding: 10px 25px;
            font-weight: 500;
            transition: all 0.3s;
            margin-right: 10px;
        }
        .btn-custom:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }
        .search-form {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 10px;
        }
        .table-container {
            margin-top: 25px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        .table {
            margin-bottom: 0;
        }
        .table thead {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        .table thead th {
            border: none;
            padding: 15px;
            font-weight: 600;
            text-align: center;
        }
        .table tbody td {
            padding: 12px;
            vertical-align: middle;
            text-align: center;
        }
        .table tbody tr {
            transition: all 0.3s;
        }
        .table tbody tr:hover {
            background-color: #f0f4ff;
            transform: scale(1.01);
        }
        .action-links a {
            color: #667eea;
            text-decoration: none;
            font-weight: 500;
            padding: 5px 15px;
            border-radius: 5px;
            transition: all 0.3s;
        }
        .action-links a:hover {
            background-color: #667eea;
            color: white;
            text-decoration: none;
        }
        .action-links .delete-link {
            color: #dc3545;
        }
        .action-links .delete-link:hover {
            background-color: #dc3545;
            color: white;
        }
        .empty-tip {
            text-align: center;
            padding: 40px;
            color: #999;
            font-size: 16px;
        }
        .badge-count {
            background: #667eea;
            padding: 5px 10px;
            border-radius: 10px;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="main-container">
        <div class="page-header">
            <h1>
                <span class="glyphicon glyphicon-book" style="color: #667eea;"></span>
                书籍管理系统
                <small>—— 显示所有书籍</small>
            </h1>
        </div>

        <div class="row" style="margin-bottom: 20px;">
            <div class="col-md-6">
                <a class="btn btn-primary btn-custom" href="${pageContext.request.contextPath}/book/toAddBook">
                    <span class="glyphicon glyphicon-plus"></span> 新增书籍
                </a>
                <a class="btn btn-success btn-custom" href="${pageContext.request.contextPath}/book/allBook">
                    <span class="glyphicon glyphicon-refresh"></span> 刷新列表
                </a>
            </div>
            <div class="col-md-6">
                <form class="form-inline search-form" action="${pageContext.request.contextPath}/book/queryBook" method="post">
                    <div class="form-group" style="width: 100%;">
                        <span style="color: red;font-weight: bold;display: block;margin-bottom: 10px;">${error}</span>
                        <input type="text" class="form-control" name="queryBookName"
                               placeholder="请输入要查询的书籍名称" style="width: 250px;"/>
                        <button type="submit" class="btn btn-primary btn-custom">
                            <span class="glyphicon glyphicon-search"></span> 查询
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <div class="table-container">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th><span class="glyphicon glyphicon-list-ol"></span> 书籍编号</th>
                    <th><span class="glyphicon glyphicon-book"></span> 书籍名称</th>
                    <th><span class="glyphicon glyphicon-sort-by-attributes"></span> 书籍数量</th>
                    <th><span class="glyphicon glyphicon-info-sign"></span> 书籍详情</th>
                    <th><span class="glyphicon glyphicon-cog"></span> 操作</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty list}">
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td><strong>#${book.bookID}</strong></td>
                                <td>${book.bookName}</td>
                                <td><span class="badge-count">${book.bookCounts}</span></td>
                                <td>${book.detail}</td>
                                <td class="action-links">
                                    <a href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">
                                        <span class="glyphicon glyphicon-edit"></span> 修改
                                    </a>
                                    &nbsp;|&nbsp;
                                    <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}"
                                       class="delete-link"
                                       onclick="return confirm('确定要删除《${book.bookName}》吗？')">
                                        <span class="glyphicon glyphicon-trash"></span> 删除
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="5" class="empty-tip">
                                <span class="glyphicon glyphicon-inbox" style="font-size: 48px; display: block; margin-bottom: 10px;"></span>
                                暂无书籍数据
                            </td>
                        </tr>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>

        <div style="margin-top: 20px; text-align: center; color: #999; font-size: 14px;">
            共 ${fn:length(list)} 本书籍
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
