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
            //Set Refresh, Autoload Time as 5 Seconds.
            response.setIntHeader("Refresh",5);

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
</body>


</html>
