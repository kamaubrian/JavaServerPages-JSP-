<%@ page import ="java.io.*,java.util.*" %>
<html>
<head>
    <title> HTTP Header Request Example</title>
</head>
<body>
<center>
    <h2> Header Request Example</h2>
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
</body>
</html>