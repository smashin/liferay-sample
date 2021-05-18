<%@ page import="com.liferay.portal.kernel.portlet.LiferayWindowState" %>
<%@ include file="/init.jsp" %>
<%@ page contentType="text/html; UTF-8" pageEncoding="utf-8" language="java" %>

<h1>Hello, <%=themeDisplay.getUser().getFullName()%>! </h1>

<h2>May the 4th be with you:)</h2>

<p>
	<b>
		<liferay-ui:message key="samplemvc.caption"/>
	</b>
</p>

<liferay-portlet:renderURL var="renderURL" windowState="<%=LiferayWindowState.MAXIMIZED.toString()%>">
	<liferay-portlet:param name="mvcRenderCommandName" value="/sample/render"/>
	<liferay-portlet:param name="redirect" value="<%=themeDisplay.getURLCurrent()%>"/>
</liferay-portlet:renderURL>

<aui:button href="<%=renderURL %>" value="Show hostname" />