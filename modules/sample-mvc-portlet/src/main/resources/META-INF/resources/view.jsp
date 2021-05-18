<%@ include file="/init.jsp" %>
<%@ page contentType="text/html; UTF-8" pageEncoding="utf-8" language="java" %>

<h1>Hello, <%=themeDisplay.getUser().getFullName()%>! </h1>
	<h2>May the 4th be with you:)</h2>
<p>

	<b>
		<liferay-ui:message key="samplemvc.caption"/>
	</b>
</p>

<liferay-portlet:renderURL var="renderURL" >
	<liferay-portlet:param name="mvcRenderCommandName" value="/sample/render"/>
</liferay-portlet:renderURL>

<aui:button href="<%=renderURL %>" value="go to render" />