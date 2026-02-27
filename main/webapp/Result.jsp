<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Quiz Result</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
	background-color: #EAF4F7; 

	background-image: url('https://www.shutterstock.com/shutterstock/photos/2466841551/display_1500/stock-vector-vector-illustration-of-black-graduate-cap-and-diploma-scroll-on-red-background-d-style-design-of-2466841551.jpg'); /* Replace with your desired image URL */
	background-size: cover; 
	background-position: center; 
	background-repeat: no-repeat;
	background-attachment: fixed;

	position: relative; 
    display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	color: #333;
	padding: 20px;
}

body::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.7); 
    z-index: -1; 
}

.result-container {
	width: 100%;
	max-width: 450px; 
	background: #fff;
	border-radius: 12px;
	padding: 40px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h2 {
	font-size: 2rem;
	color: #1877f2; 
	margin-bottom: 25px;
	font-weight: 600;
	border-bottom: 2px solid #e0e0e0;
	padding-bottom: 15px;
}

.congrats-message {
	font-family: 'Poppins', sans-serif; 
	font-size: 1.8rem;
	font-weight: 800; 
	color: #FF5733; 
	margin-bottom: 15px;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
	animation: pop-in 0.5s ease-out;
}

@keyframes pop-in { 0% {
	transform: scale(0.5);
	opacity: 0;
}

80
%
{
transform:scale(1.05);
opacity:1;
}
100
%
{
transform
:
scale(
1
);
}
}

.score-display {
	font-size: 2.5rem; 
	font-weight: bold;
	color: #28a745; 
	margin-bottom: 30px;
	padding: 15px 0;
	background-color: #e6ffed; 
	border-radius: 8px;
}
</style>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@800&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="result-container">
		<h2>Your Quiz Result</h2>

		<h3 class="congrats-message">🎉 Congratulations! 🎉</h3>

		<p class="score-display">
			Score:
			<%=request.getAttribute("score")%>
			/
			<%=request.getAttribute("total")%>
		</p>


	</div>
</body>
</html>