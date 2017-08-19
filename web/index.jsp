<%@ page import ="java.io.*,java.util.*" %>
<html>
<head>
    <link rel="stylesheet" href="css/style.css">
    <title> HTTP Header Request Example</title>
</head>
<body>
<section id="request">
<center>
    <h2> 1.0 Header Request Example</h2>
    <table width = “100%” border = “1” align = “center”>
        <tr bgcolor = “#949494”>
            <th>Header Name</th>
            <th> Header Value(s)</th>
        </tr>
        <%
            Enumeration headerNames = request.getHeaderNames();
            while(headerNames.hasMoreElements()){
                String paranName = (String)headerNames.nextElement();
                out.print("<tr><td>"+paranName+ "</td>\n");
                String paramValue = request.getHeader(paranName);
                out.print("<td>"+paramValue+ "</td></tr>\n");
            }
        %>
    </table>
</center>
</section>
<section id="response">
    <center>

        <h2>1.1 Header Response Example</h2>
        <%
            //Set Refresh, Autoload Time as 45 Seconds.
            response.setIntHeader("Refresh",45);

            Calendar calendar = new GregorianCalendar();
            String am_pm;
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            if(calendar.get(Calendar.AM_PM)==0){
                am_pm="AM";
                String CT = hour+":"+minute+":"+second+" "+am_pm;
                out.println("Current Time is:" + CT+"\n");
            }else{
                am_pm="PM";
                String CT = hour+":"+minute+":"+second+" "+am_pm;
                out.println("Current Time is:" + CT+"\n");
            }
        %>
    </center>
</section>
<section id ="forms">
    <%-- To effect This, change URL to http://localhost:8080/JavaServerPages_war_exploded/?first_name=Brian&last_name=kamau --%>
    <center>
        <h2>1.2 Handling Forms</h2>
        <form method="post" action="checkLogin.jsp">
            First Name : <input type="text" name ="first_name">
        <br/>
            LastName : <input type="text" name="last_name"/>
            <br/>
            <input type="submit" value="Submit">
        </form>
    </center>
</section>
<section id ="subjects">
    <center>
    <h2>1.3 Handling CheckBoxes</h2>
    <form action="checkLogin.jsp" method="post">
        <input type="checkbox" name="math" checked="checked"/>Maths
        <input type ="checkbox" name = "physics" checked="checked"/>Physics
        <input type="checkbox" name="chemistry"/>Chemistry
        <input type="submit" value="Select_Subject"/>
    </form>
    </center>
</section>
<div > </div>
<section id="sessionid">
    <%
        Date createTime = new Date(session.getCreationTime());
        Date lastAccessTime = new Date(session.getLastAccessedTime());
        String title ="Welcome Back To My Website";
        Integer visitCount = new Integer(0);
        String visitCountKey = new String ("visitCount");
        String userIdKey =new String("userId");
        String userID = new String("ABCD");

        if(session.isNew()){
            title="Welcome To My Website";
            session.setAttribute(userIdKey,userID);
            session.setAttribute(visitCountKey, visitCount);
        }
        visitCount =(Integer) session.getAttribute(visitCountKey);
        visitCount=visitCount+1;
        userID = (String)session.getAttribute(userIdKey);
        session.setAttribute(visitCountKey,visitCount);
    %>
    <center>
        <h2>1.4 Session Tracking</h2>
        <table border="1"align="center">
            <tr  bgcolor="#949494">
                <th>Session Info</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>id</td>
                <td><%out.print(session.getId());%></td>
            </tr>
            <tr>
                <td>Creation Time</td>
                <td><% out.print(createTime);%></td>
            </tr>
            <tr>
                <td>Time Of Last Success</td>
                <td><% out.print(lastAccessTime);%></td>
            </tr>
            <tr>
                <td>User ID</td>
                <td><% out.print(userID);%></td>
            </tr>
            <tr>
                <td>Number of Visits</td>
                <td><% out.print(visitCount);%></td>
            </tr>
        </table>
    </center>
</section>
<section id="form-handling">
<center>
    <h2>File Uploading</h2>
</center>
</section>
</body>
</html>
