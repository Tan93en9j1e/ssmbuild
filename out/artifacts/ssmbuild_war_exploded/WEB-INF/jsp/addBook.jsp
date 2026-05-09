<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding-top: 50px;
            font-family: 'Microsoft YaHei', Arial, sans-serif;
        }
        .form-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
            padding: 40px;
            max-width: 600px;
            margin: 0 auto;
        }
        .page-header {
            border-bottom: 2px solid #667eea;
            padding-bottom: 15px;
            margin-bottom: 30px;
            text-align: center;
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
        .form-group {
            margin-bottom: 25px;
        }
        .form-group label {
            font-weight: 600;
            color: #555;
            margin-bottom: 8px;
            font-size: 15px;
        }
        .form-group label .glyphicon {
            color: #667eea;
            margin-right: 5px;
        }
        .form-control {
            border-radius: 8px;
            border: 2px solid #e0e0e0;
            padding: 12px 15px;
            font-size: 14px;
            transition: all 0.3s;
        }
        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 10px rgba(102, 126, 234, 0.3);
        }
        textarea.form-control {
            resize: vertical;
            min-height: 100px;
        }
        .btn-submit {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 25px;
            padding: 12px 30px;
            font-size: 16px;
            font-weight: 600;
            color: white;
            width: 100%;
            transition: all 0.3s;
            margin-top: 10px;
        }
        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.4);
        }
        .btn-back {
            background: #f8f9fa;
            border: 2px solid #667eea;
            border-radius: 25px;
            padding: 10px 25px;
            font-size: 15px;
            font-weight: 600;
            color: #667eea;
            width: 100%;
            transition: all 0.3s;
            margin-top: 10px;
        }
        .btn-back:hover {
            background: #667eea;
            color: white;
            transform: translateY(-2px);
        }
        .required {
            color: #dc3545;
            margin-left: 3px;
        }
        .help-text {
            font-size: 12px;
            color: #999;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form-container">
        <div class="page-header">
            <h1>
                <span class="glyphicon glyphicon-plus-circle" style="color: #667eea;"></span>
                新增书籍
                <small>—— 请填写书籍信息</small>
            </h1>
        </div>

        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <div class="form-group">
                <label for="bookName">
                    <span class="glyphicon glyphicon-book"></span>
                    书籍名称
                    <span class="required">*</span>
                </label>
                <input type="text"
                       id="bookName"
                       name="bookName"
                       class="form-control"
                       placeholder="请输入书籍名称"
                       required>
                <div class="help-text">请输入完整的书籍名称</div>
            </div>

            <div class="form-group">
                <label for="bookCounts">
                    <span class="glyphicon glyphicon-sort-by-attributes"></span>
                    书籍数量
                    <span class="required">*</span>
                </label>
                <input type="number"
                       id="bookCounts"
                       name="bookCounts"
                       class="form-control"
                       placeholder="请输入书籍数量"
                       min="1"
                       required>
                <div class="help-text">请输入大于0的整数</div>
            </div>

            <div class="form-group">
                <label for="detail">
                    <span class="glyphicon glyphicon-info-sign"></span>
                    书籍描述
                    <span class="required">*</span>
                </label>
                <textarea id="detail"
                          name="detail"
                          class="form-control"
                          placeholder="请输入书籍详细描述"
                          rows="4"
                          required></textarea>
                <div class="help-text">请简要描述书籍内容和特点</div>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-submit">
                    <span class="glyphicon glyphicon-ok"></span> 确认添加
                </button>
                <a href="${pageContext.request.contextPath}/book/allBook" class="btn btn-back">
                    <span class="glyphicon glyphicon-arrow-left"></span> 返回列表
                </a>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
