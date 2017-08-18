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
    <section id ="checkbox">
        <ul>
            <li><p><b>Maths Flag:</b>
                <%= request.getParameter("math")%>
            </p></li>
            <li><p><b>Physics Flag:</b>
                <%= request.getParameter("physics")%>
            </p></li>
            <li><p><b>Chemistry Flag:</b>
                <%= request.getParameter("chemistry")%>
            </p></li>
        </ul>

    </section>
</body>
</html>