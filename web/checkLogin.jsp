<html>
<head>
    <link rel="stylesheet" href="css/style.css">
    <title>Checking For Login Credentials</title>
</head>
<body>
    <section id = "login">
        <ul>
            <li><p><b> First Name:</b>
                <%=request.getParameter("first_name")%>
            </p></li>
            <li><p><b> Last Name:</b>
                <%=request.getParameter("last_name")%>
            </p></li>
        </ul>


    </section>
</body>
</html>