<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍管理系统 - 首页</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Microsoft YaHei', Arial, sans-serif;
            overflow: hidden;
        }
        .welcome-container {
            text-align: center;
            color: white;
            animation: fadeInUp 1s ease-out;
        }
        .welcome-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            padding: 60px 80px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            backdrop-filter: blur(10px);
            max-width: 600px;
            animation: zoomIn 0.8s ease-out;
        }
        .icon-circle {
            width: 120px;
            height: 120px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 50%;
            margin: 0 auto 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.4);
            animation: pulse 2s infinite;
        }
        .icon-circle .glyphicon {
            font-size: 60px;
            color: white;
        }
        .welcome-title {
            font-size: 36px;
            font-weight: bold;
            color: #333;
            margin-bottom: 15px;
        }
        .welcome-subtitle {
            font-size: 18px;
            color: #666;
            margin-bottom: 40px;
        }
        .btn-enter {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 30px;
            padding: 15px 50px;
            font-size: 20px;
            font-weight: 600;
            color: white;
            transition: all 0.3s;
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.4);
            text-decoration: none;
            display: inline-block;
        }
        .btn-enter:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.6);
            color: white;
        }
        .btn-enter:active {
            transform: translateY(-1px);
        }
        .features {
            margin-top: 40px;
            padding-top: 30px;
            border-top: 1px solid #e0e0e0;
        }
        .feature-item {
            display: inline-block;
            margin: 0 20px;
            color: #666;
            font-size: 14px;
        }
        .feature-item .glyphicon {
            color: #667eea;
            font-size: 24px;
            display: block;
            margin-bottom: 10px;
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes zoomIn {
            from {
                opacity: 0;
                transform: scale(0.8);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.05);
            }
        }
        .particles {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
            z-index: -1;
        }
        .particle {
            position: absolute;
            width: 10px;
            height: 10px;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            animation: float 15s infinite;
        }
        .particle:nth-child(1) { left: 10%; animation-delay: 0s; }
        .particle:nth-child(2) { left: 20%; animation-delay: 2s; }
        .particle:nth-child(3) { left: 30%; animation-delay: 4s; }
        .particle:nth-child(4) { left: 40%; animation-delay: 6s; }
        .particle:nth-child(5) { left: 50%; animation-delay: 8s; }
        .particle:nth-child(6) { left: 60%; animation-delay: 10s; }
        .particle:nth-child(7) { left: 70%; animation-delay: 12s; }
        .particle:nth-child(8) { left: 80%; animation-delay: 14s; }
        @keyframes float {
            0% {
                transform: translateY(100vh) scale(0);
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            90% {
                opacity: 1;
            }
            100% {
                transform: translateY(-100px) scale(1);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
<div class="particles">
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
    <div class="particle"></div>
</div>

<div class="welcome-container">
    <div class="welcome-card">
        <div class="icon-circle">
            <span class="glyphicon glyphicon-book"></span>
        </div>
        <h1 class="welcome-title">书籍管理系统</h1>
        <p class="welcome-subtitle">简洁高效的图书管理解决方案</p>

        <a href="${pageContext.request.contextPath}/book/allBook" class="btn-enter">
            <span class="glyphicon glyphicon-arrow-right"></span>
            进入系统
        </a>

        <div class="features">
            <div class="feature-item">
                <span class="glyphicon glyphicon-plus"></span>
                <div>新增书籍</div>
            </div>
            <div class="feature-item">
                <span class="glyphicon glyphicon-edit"></span>
                <div>修改信息</div>
            </div>
            <div class="feature-item">
                <span class="glyphicon glyphicon-trash"></span>
                <div>删除管理</div>
            </div>
            <div class="feature-item">
                <span class="glyphicon glyphicon-search"></span>
                <div>快速查询</div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
