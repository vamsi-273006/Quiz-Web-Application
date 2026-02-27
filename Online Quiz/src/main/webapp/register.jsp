<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register | Online Quiz</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
                url("https://www.shutterstock.com/shutterstock/photos/2269723283/display_1500/stock-vector-editable-text-effect-quiz-time-d-cartoon-template-style-premium-vector-2269723283.jpg");
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-container {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            padding: 40px 60px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
            text-align: center;
            color: white;
        }

        h2 {
            font-size: 2rem;
            margin-bottom: 25px;
            color: #fff;
            text-shadow: 0 0 10px rgba(255,255,255,0.4);
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        label {
            font-size: 1.1rem;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px 15px;
            margin-bottom: 20px;
            border: none;
            border-radius: 8px;
            outline: none;
            background-color: rgba(255, 255, 255, 0.9);
            font-size: 1rem;
        }

        input[type="submit"] {
            width: 100%;
            background: linear-gradient(90deg, #ff9966, #ff5e62);
            color: white;
            font-size: 1.1rem;
            padding: 10px 0;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: 0.3s ease;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background: linear-gradient(90deg, #ff5e62, #ff9966);
            transform: scale(1.05);
        }

        a {
            display: block;
            margin-top: 20px;
            color: #00c6ff;
            text-decoration: none;
            transition: 0.3s ease;
            font-weight: 600;
        }

        a:hover {
            color: #fff;
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .register-container {
                padding: 30px;
                width: 90%;
            }

            h2 {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Student Registration</h2>
        <form action="RegisterServlet" method="post">
            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Register">
        </form>
        <a href="login.jsp">Already have an account? Login</a>
    </div>
</body>
</html>

