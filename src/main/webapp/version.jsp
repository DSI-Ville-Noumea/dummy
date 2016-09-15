<%@page import="java.net.InetAddress"%>
dummy.version=${version}<br/>
dummy.tomcat.version=<%= application.getServerInfo() %><br/>
dummy.tomcat.catalina_base : <%= System.getProperty("catalina.base") %><br>
dummy.hostname=<%=InetAddress.getLocalHost().getHostName()%><br/>
dummy.hostaddress=<%=InetAddress.getLocalHost().getHostAddress()%><br/>
dummy.canonicalhostname=<%=InetAddress.getLocalHost().getCanonicalHostName()%><br/>

dummy.client.remote_addr=<%=request.getRemoteAddr() %><br/>

tomcat.version : <%= application.getServerInfo() %><br>


<%
	HttpSession theSession = request.getSession(false);

	// print out the session id
	if (theSession != null) {
		//pw.println( "<BR>Session Id: " + theSession.getId() );
		synchronized (theSession) {
			// invalidating a session destroys it
			theSession.invalidate();
			//pw.println( "<BR>Session destroyed" );
		}
	}
%>