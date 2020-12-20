<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BBS/regist</title>
</head>
<script type="text/javascript" src="./jquery-1.7.2.js"></script>
<style type="text/css">
    body{
        overflow: auto;
    }
    *{
        margin: 0;
        font-family:"Microsoft Yahei";
        color: #666666;
    }
    .top{
        padding: 12px;
        width: 100%;
        height: 36px;
        background-color: rgba(252, 252, 250, 0.973);
    }
    .centercontent{
        width: auto;
        height: 620px;
        background-color: cadetblue;
    }
    .tilte{
        color: rgb(49, 49, 51);
        font-size: 24px;
        font-weight: bold
    }
    .box{
        background-color: lightblue;
        width: 360px;
        height: 500px;
        position: absolute;
        right: 60px;
        margin-top: 60px;
        box-shadow:2px 2px 2px #888888;
    }

    .log{
        margin-bottom: 40px;
        color: green;
        padding-top: 25px;
        padding-left: 22px;
        font-size: 24px;
    }

    .fromstyle{
        padding-top: 20px;
    }

    .errorwp{
        padding-top: 10px;
        padding-left: 140px;
        padding-bottom: 6px;
        color: orangered;font-size: 12px;
    }

    .from_colset{

        float: none;
        padding-bottom: 22px;
        padding-left: 34px;
    }

    .from_submit{
        color: #000;
        background-color: green;
        margin-left: 85px;
        padding-top: 12px;
        padding-bottom: 12px;

        margin-top: 12px;
        margin-bottom: 6px;
        height: 46px;
    }

    input{
        /* background:transparent;  */
        border:1px solid transparent;
        height: 26px;
        width: 180px;
        border-radius: 6px;
        line-height: 16px;
        font-size: 14px;
    }
</style>

<script>
    $(document).ready(function(){
        $("#error_mesg").hide();
    })
</script>

<body>
<div class="top">
    <div class="tilte" style="position: absolute; left: 30px;">
        图标
    </div>
    <div class="tilte" style="position: absolute; left: 90px;">
        乐源读书会
    </div>
    <div class="tilte" style="position: absolute; right: 150px;">
        login/regist
    </div>
    <div class="tilte" style="position: absolute; right: 30px;">
        联系我们
    </div>
</div>


<div class="centercontent">
    <div class="box">
        <div class="fromstyle">
            <div class="log" >
                注&nbsp册
            </div>
            <div class="errorwp" id="error_mesg" >
                ${empty requestScope.msg ? "请输入邮箱和密码" : requestScope.msg}
            </div>
            <form  action="/userServlet" method="post">
                <input type="hidden" name="action" value="regist"/>
                <div class="from_colset" >
                    用户名：<input type="text" name="username"/><br>
                </div>
                <div class="from_colset" >
                    邮&nbsp&nbsp&nbsp箱：<input type="text" name="email"/><br>
                </div>
                <div class="from_colset">
                    密&nbsp&nbsp&nbsp码：<input type="text" name="password"/>
                </div>
                <div class="from_colset">
                    密&nbsp&nbsp&nbsp码：<input type="text" name="repassword"/>
                </div>
                <div class="from_colset">
                    验证码：<input type="text" name="check_code" style="width: 75px;"/>
                    <img src="/userServlet?action=imgInit"   onclick="this.src='/userServlet?action=imgInit&id='+Math.random();">
                </div>
                <div>
                    <input type="submit" value="提   交" id="bt" class="from_submit"  />
                </div>
                <div style="text-align: center ;padding-left: 80px" >
                    <a href="login.jsp" style="font-size: 12px;color: green;">登录</a>
                </div>
            </form>
        </div>

    </div>
</div>


<footer style="background-color: #CDCDCD;width: auto;height: 80px;">
    <p style="text-align: center;">
        @a simple html
    </p>

</footer>
</body>
</html>