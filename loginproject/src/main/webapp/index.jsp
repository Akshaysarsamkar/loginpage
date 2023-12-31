<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
    
    <style type="text/css">
    /* global */
body {
  font-family: "Ubuntu", sans-serif;
}
:root {
  --main-color: #46c8f9;
  --secondary-color: #7938f4;
  --white-color: #fff;
  --background-color: #e6e6e6;
  --text-color: #717171;
}
.form-control.is-invalid,
.form-control.is-valid {
  background-position: right calc(1em + 0.1875rem) center;
}
/* body */
.login {
  min-height: calc(100vh - 100px);
  background: linear-gradient(
    -135deg,
    var(--main-color),
    var(--secondary-color)
  );
  padding: 50px 0;
}
.login .container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: calc(100vh - 100px);
}
.login-body {
  background-color: var(--white-color);
  min-height: 90%;
  min-width: 90%;
  padding: 50px 0;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 0 20px 3px #773df4c2;
}
.login-form {
  text-align: center;
}
.login-form h3 {
  font-weight: 900;
  color: #4cb7f9;
  margin-bottom: 50px;
}

.input-group {
  margin: auto;
  width: 80%;
  margin-bottom: 20px;
}
.input-group-text {
  border: none;
  background-color: var(--background-color);
  padding: 20px 20px;
  border-top-left-radius: 4rem;
  border-bottom-left-radius: 4rem;
  color: var(--text-color);
}
.form-control {
  border: none;
  background-color: var(--background-color);
  border-top-right-radius: 4rem;
  border-bottom-right-radius: 4rem;
  color: var(--text-color);
}
.form-control:focus {
  background-color: var(--background-color);
}
.form-control::placeholder {
  color: rgb(181, 181, 181);
}
.submit {
  border: none;
  background-color: var(--background-color);
  border-radius: 4rem;
  color: var(--text-color);
  padding: 20px 20px;
  width: 80%;
  margin: 25px 0 20px;
  transition: all 0.5s ease;
  cursor: pointer;
  text-decoration: none;
}
.submit:hover {
  background-color: #46c8f9;
  color: var(--white-color);
}
i {
  position: relative;
  left: 5px;
}
a {
  color: var(--text-color);
  transition: all 0.5s ease;
}
a:hover {
  color: var(--main-color);
}
.home {
  height: 100vh;
  background: linear-gradient(
    -135deg,
    var(--main-color),
    var(--secondary-color)
  );
}
nav {
  height: 70px;
  background-color: var(--white-color);
  box-shadow: 0 0 20px 3px #773df4c2;
}
nav .container {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
nav img {
  width: 10%;
}
nav .log-out {
  padding: 10px 20px;
  border-radius: 4rem;
  background: linear-gradient(
    -135deg,
    var(--main-color),
    var(--secondary-color)
  );
  color: white;
  border: none;
  position: relative;
  text-decoration: none;
}
nav .log-out::after {
  content: "Logout";
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  right: 0;
  background: linear-gradient(
    -135deg,
    var(--secondary-color),
    var(--main-color)
  );
  padding: 10px 20px;
  border-radius: 4rem;
  opacity: 0;
  color: white;
  border: none;
  transition: all 0.5s ease;
}
nav .log-out:hover::after {
  opacity: 1;
}
.home-header {
  height: 80%;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 40px;
}
.home-header .container {
  min-height: 90%;
  min-width: 80%;
  margin: auto;
  background-color: var(--white-color);
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  border-radius: 10px;
  box-shadow: 0 0 20px 3px #773df4c2;
}

.home-header .container h1 {
  color: var(--main-color);
  font-size: 5rem;
  font-weight: bold;
  text-align: center;
}

/* successfully registered */
.registration {
  position: absolute;
  top: 0;
  left: 0;
  background-color: rgba(0, 0, 0, 0.5);
  width: 100%;
  height: 100%;
}
.congratulation {
  background-color: var(--white-color);
  border-radius: 10px;
  padding: 50px;
  text-align: center;
}
.congratulation h1 {
  color: var(--main-color);
}
.congratulation .log-in {
  padding: 10px 20px;
  margin: 20px 50px;
  display: block;
  border-radius: 4rem;
  background: linear-gradient(
    -135deg,
    var(--main-color),
    var(--secondary-color)
  );
  color: white;
  border: none;
  position: relative;
  text-decoration: none;
}
/* trying to visit home without registration */
.scam {
  height: 100vh;
  background: linear-gradient(
    -135deg,
    var(--main-color),
    var(--secondary-color)
  );

  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}
.scam > div {
  background-color: white;
  border-radius: 10px;
  padding: 50px;
  text-align: center;
}
@media (min-width: 1400px) {
  .login .container {
    height: calc(100vh - 100px);
  }
}
@media (max-width: 1400px) {
  .registration .container {
    position: relative;
    top: 50%;
    transform: translateY(-50%);
  }
}
    
    </style>
  </head>
  <body>
     <header class="login">
      <div class="container">
        <div class="login-body">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-5">
              <div class="login-img">
                <img src="imgs/login.jpg" alt="" class="img-fluid" />
              </div>
            </div>
            <div class="col-md-12">
              <div class="login-form">
                <h3>SIGN IN</h3>
                <form action="login" method="post">
                  <div class="mail-input">
                    <div class="input-group flex-nowrap">
                      <span class="input-group-text" id="addon-wrapping"
                        ><i class="fa-solid fa-envelope"></i
                      ></span>
                      <input
                        id="signInEmail"
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="Email"
                        aria-label="Username"
                        aria-describedby="addon-wrapping"
                      />
                    </div>
                  </div>
                  <div class="password-input">
                    <div class="input-group flex-nowrap">
                      <span class="input-group-text" id="addon-wrapping"
                        ><i class="fa-solid fa-lock"></i
                      ></span>
                      <input
                        id="signInPassword"
                        type="password"
                         name="password"
                        class="form-control"
                        placeholder="Password"
                        aria-label="Username"
                        aria-describedby="addon-wrapping"
                      />
                    </div>
                  </div>
                  <p id="loginError" class="alert text-danger d-none">
                    Your email or password is wrong or cant be empty
                  </p>
                 <button type="submit">LOGIN</button>
                </form>
                <a href="pages/signup.html">Do not have an account ? Sign Up</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>

  </body>
</html>