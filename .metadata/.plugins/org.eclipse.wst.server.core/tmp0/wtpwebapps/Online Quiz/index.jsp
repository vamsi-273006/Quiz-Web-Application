<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Quiz</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            width: 100%;
            background-image: url('https://www.shutterstock.com/shutterstock/photos/2269723283/display_1500/stock-vector-editable-text-effect-quiz-time-d-cartoon-template-style-premium-vector-2269723283.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: rgba(0, 0, 0, 0.7);
            padding: 50px 80px;
            border-radius: 20px;
            text-align: center;
            color: white;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.6);
        }

        h1 {
            font-size: 3rem;
            margin-bottom: 40px;
            text-shadow: 2px 2px 10px rgba(255,255,255,0.5);
        }

        .form-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        form {
            display: inline;
        }

        .btn {
            padding: 12px 35px;
            font-size: 1.2rem;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            background: linear-gradient(90deg, #00c6ff, #0072ff);
            color: white;
            font-weight: bold;
            transition: transform 0.3s ease, background 0.3s ease;
        }

        .btn:hover {
            transform: scale(1.1);
            background: linear-gradient(90deg, #0072ff, #00c6ff);
        }

        @media (max-width: 768px) {
            .container {
                padding: 40px 30px;
            }

            h1 {
                font-size: 2.2rem;
            }

            .btn {
                padding: 10px 25px;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Online Quiz</h1>
        <div class="form-container">
            <!-- Sign In form -->
            <form action="login.jsp" method="get">
                <button type="submit" class="btn">Sign In</button>
            </form>

            <!-- Sign Up form -->
            <form action="register.jsp" method="get">
                <button type="submit" class="btn">Sign Up</button>
            </form>
        </div>
    </div>
</body>
</html>
