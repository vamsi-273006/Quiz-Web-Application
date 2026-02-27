<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Quiz Result</title>
<style>
/* 1. Base Styles & Reset */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* 2. Page Layout: Center Content */
body {
	/* ORIGINAL BACKGROUND COLOR AS FALLBACK */
	background-color: #EAF4F7; /* Fallback if image fails to load */

	/* === BACKGROUND IMAGE ADDITION START === */
	background-image: url('https://www.shutterstock.com/shutterstock/photos/2466841551/display_1500/stock-vector-vector-illustration-of-black-graduate-cap-and-diploma-scroll-on-red-background-d-style-design-of-2466841551.jpg'); /* Replace with your desired image URL */
	background-size: cover; /* Ensures the image covers the entire body */
	background-position: center; /* Centers the image */
	background-repeat: no-repeat; /* Prevents image from repeating */
	background-attachment: fixed; /* Keeps image fixed when scrolling (optional) */

	/* Create a subtle overlay to ensure text/card readability */
	position: relative; /* Needed for pseudo-element overlay */
	z-index: 0; /* Ensure overlay is above the image but below content */
    display: flex;
	justify-content: center;
	align-items: center; /* Center content vertically */
	min-height: 100vh;
	color: #333;
	padding: 20px;
}

/* Pseudo-element for the semi-transparent overlay */
body::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.7); /* White overlay, 70% opacity */
    /* Or a darker overlay if your image is very light: rgba(0, 0, 0, 0.3); */
    z-index: -1; /* Puts the overlay behind the content but above the image */
}

/* 3. Result Card Container */
.result-container {
	width: 100%;
	max-width: 450px; /* Focused, compact card */
	background: #fff;
	border-radius: 12px;
	padding: 40px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	text-align: center; /* Center text inside the card */
}

/* 4. Heading */
h2 {
	font-size: 2rem;
	color: #1877f2; /* Primary blue color */
	margin-bottom: 25px;
	font-weight: 600;
	border-bottom: 2px solid #e0e0e0;
	padding-bottom: 15px;
}

/* NEW: Congratulations Message Styling */
.congrats-message {
	font-family: 'Poppins', sans-serif; /* A modern, attractive font */
	font-size: 1.8rem;
	font-weight: 800; /* Extra bold */
	color: #FF5733; /* A vibrant, energetic color (Orange/Red) */
	margin-bottom: 15px;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
	animation: pop-in 0.5s ease-out;
	/* Simple animation for a modern feel */
}

@
keyframes pop-in { 0% {
	transform: scale(0.5);
	opacity: 0;
}

80
%
{
transform
:
scale(
1.05
);
opacity
:
1;
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

/* 5. Score Display */
.score-display {
	font-size: 2.5rem; /* Larger font for score */
	font-weight: bold;
	color: #28a745; /* Green for success/score */
	margin-bottom: 30px;
	padding: 15px 0;
	background-color: #e6ffed; /* Light green background for emphasis */
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