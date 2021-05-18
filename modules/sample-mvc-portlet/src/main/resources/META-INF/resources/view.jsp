<%@ include file="/init.jsp" %>
<%@ page pageEncoding="utf-8" %>

<h1>Hello, <%=themeDisplay.getUser().getFullName()%>! </h1>
	<h2>May the 4th be with you:)</h2>
<p>

	<b>
		<liferay-ui:message key="samplemvc.caption"/>
	</b>
</p>