<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
              integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
    </head>
    <body>
        <!--<div id="logreg-forms">
            <form class="form-signin" action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <div class="alert alert-danger" role="alert"> 
               <p class="text-danger"> ${mess}</p>
                
        
                <input name="user" type="text" id="inputEmail" class="form-control" placeholder="Username" required=""
                       autofocus="">
                <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        
                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
        
                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up
                    New Account
                </button>
            </form>
        
            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required=""
                       autofocus="">
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required
                       autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password"
                       required autofocus="">
        
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>
        
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                crossorigin="anonymous"></script>
        <script>
            function toggleResetPswd(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block or none
            }
        
            function toggleSignUp(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-signup').toggle(); // display:block or none
            }
        
            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup').click(toggleSignUp);
            })
        </script>-->
        <section class="container">
            <div class="login-container">
                <div class="circle circle-one"></div>
                <div class="form-container">
                    <img src="https://raw.githubusercontent.com/hicodersofficial/glassmorphism-login-form/master/assets/illustration.png" alt="illustration" class="illustration" />
                    <h1 class="opacity">LOGIN</h1>

                    <form action="login" method="post">
                        <input name="user" type="text" placeholder="USERNAME" />
                        <input name="pass" type="password" placeholder="PASSWORD" />
                        <p class="text-danger"> ${mess}</p>
                        <button class="opacity" type="submit">SUBMIT</button>
                    </form>

                    <div class="register-forget opacity">
                    <a href="Register.jsp">REGISTER</a>
<!--                <a href="">FORGOT PASSWORD</a>-->
                    </div>
                </div>
                <div class="circle circle-two"></div>
            </div>
            <div class="theme-btn-container"></div>
        </section>
        <script>
            const themes = [
                {
                    background: "#1A1A2E",
                    color: "#FFFFFF",
                    primaryColor: "#0F3460"
                },
                {
                    background: "#461220",
                    color: "#FFFFFF",
                    primaryColor: "#E94560"
                },
                {
                    background: "#192A51",
                    color: "#FFFFFF",
                    primaryColor: "#967AA1"
                },
                {
                    background: "#F7B267",
                    color: "#000000",
                    primaryColor: "#F4845F"
                },
                {
                    background: "#F25F5C",
                    color: "#000000",
                    primaryColor: "#642B36"
                },
                {
                    background: "#231F20",
                    color: "#FFF",
                    primaryColor: "#BB4430"
                }
            ];

            const setTheme = (theme) => {
                const root = document.querySelector(":root");
                root.style.setProperty("--background", theme.background);
                root.style.setProperty("--color", theme.color);
                root.style.setProperty("--primary-color", theme.primaryColor);
                root.style.setProperty("--glass-color", theme.glassColor);
            };

            const displayThemeButtons = () => {
                const btnContainer = document.querySelector(".theme-btn-container");
                themes.forEach((theme) => {
                    const div = document.createElement("div");
                    div.className = "theme-btn";
                    div.style.cssText = `background: ${theme.background}; width: 25px; height: 25px`;
                    btnContainer.appendChild(div);
                    div.addEventListener("click", () => setTheme(theme));
                });
            };

            displayThemeButtons();

        </script>
    </body>
</html>