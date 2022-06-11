<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>PRJ Shop</title>
        <!-- Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <!-- Font Awesome Icon -->
        <script src="https://kit.fontawesome.com/3c84cb624f.js" crossorigin="anonymous"></script>


        <!--custom style-->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/loginFormStyle.css">
    </head>
    <body>
        <div class="header">
            <a class="header-left"><img class="logo">LOGIN</a>
            <a class="header-right">Need help?</a>
        </div>
        <div class="content">
            <div class="login-container" style="height: 60vh;">
                <form action="changepassword" method="post">
                    <h2>Change Password</h2>
                    <h3>${requestScope.error}</h3>
                    <div class="form-group">
                        <label for="inputUsername">Username</label>
                        <input type="text" class="form-control" id="inputUsername"  name="user" value="${cookie.user.value}">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Old Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="oldPass" value="${cookie.pass.value}">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword2"> New Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword2" name="newPass" value="${cookie.pass.value}">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword3">Confirm New Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword3" name="confirmNewPass" value="${cookie.pass.value}">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Confirm</button>
                    <a class="login" href="">Forgot password?</a><br/>
                    
                </form>
            </div></div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>