<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.quiz.model.Question"%>
<%
List<Question> questions = (List<Question>) request.getAttribute("questions");
if (questions == null) {
    out.println("<h3 style='color:red'>Error: No questions loaded. Please access via /QuizServlet or check your DB.</h3>");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Online Quiz</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
    }

    body {
        background-color: #f0f2f5; 
        display: flex;
        justify-content: center;
        align-items: flex-start;
        min-height: 100vh;
        padding: 40px 20px;
        color: #333;
    }

    .quiz-container {
        width: 100%;
        max-width: 700px; 
        background: #fff;
        border-radius: 12px;
        padding: 40px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        font-size: 1.8rem;
        color: #1877f2; 
        margin-bottom: 30px;
        font-weight: 600;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 30px; 
    }

    .question-block {
        padding: 20px;
        border-radius: 8px;
        border: 1px solid #e1e4e8;
    }

    .question-block b {
        font-size: 1.1rem;
        color: #2c3e50;
        display: block;
        margin-bottom: 15px;
        font-weight: 600;
    }

    .option {
        display: flex;
        align-items: center; 
        margin-bottom: 12px;
        padding: 8px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.2s;
    }

    .option:hover {
        background-color: #eaf1fb;
    }

    .option input[type="radio"] {
        accent-color: #1877f2;
        transform: scale(1.1);
        margin-right: 15px;
        width: 18px;
        height: 18px;
    }

    .option-label {
        font-size: 1rem;
        color: #333;
        flex-grow: 1; 
        padding-top: 2px;
    }
    
    input[type="submit"] {
        background: #1877f2;
        color: white;
        font-size: 1.1rem;
        padding: 12px 0;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        transition: background 0.3s ease;
        font-weight: bold;
        margin-top: 20px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    input[type="submit"]:hover {
        background: #145cb3;
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
    }

    @media (max-width: 768px) {
        .quiz-container {
            padding: 25px;
        }
    }
</style>
</head>
<body>
    <div class="quiz-container">
        <h2>Answer the following questions:</h2>
        <form action="ResultServlet" method="post">
            <%
            int i = 1;
            for (Question q : questions) {
            %>
            <div class="question-block">
                <b>Q<%=i++%>. <%=q.getQuestion()%></b>
                
                <label class="option">
                    <input type="radio" name="answer_<%=q.getId()%>" value="A">
                    <span class="option-label"><%=q.getOptionA()%></span>
                </label>
                
                <label class="option">
                    <input type="radio" name="answer_<%=q.getId()%>" value="B">
                    <span class="option-label"><%=q.getOptionB()%></span>
                </label>
                
                <label class="option">
                    <input type="radio" name="answer_<%=q.getId()%>" value="C">
                    <span class="option-label"><%=q.getOptionC()%></span>
                </label>
                
                <label class="option">
                    <input type="radio" name="answer_<%=q.getId()%>" value="D">
                    <span class="option-label"><%=q.getOptionD()%></span>
                </label>
            </div>
            <%
            }
            %>
            <input type="submit" value="Submit Quiz">
        </form>
    </div>
</body>
</html>
