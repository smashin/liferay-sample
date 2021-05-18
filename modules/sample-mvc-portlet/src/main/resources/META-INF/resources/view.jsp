<%@ page import="com.liferay.portal.kernel.portlet.LiferayWindowState" %>
<%@ page import="com.liferay.portal.kernel.log.LogFactoryUtil" %>
<%@ page import="com.liferay.portal.kernel.util.ParamUtil" %>
<%@ page contentType="text/html; UTF-8" language="java" %>
<%@ include file="init.jsp"%>

<%
    com.liferay.portal.kernel.log.Log LOG = LogFactoryUtil.getLog("ru.sample.jsp.view");
    String greet = ParamUtil.getString(request, "greet");
    LOG.info("greet from request:" + greet);
%>

<h1>Hello, <%=themeDisplay.getUser().getFullName()%>! </h1>

<c:if test="${not empty greet}">
    <h2>Hello ${greet}! May the 4th be with you:)</h2>
</c:if>

<p>
    <b>
        <liferay-ui:message key="samplemvc.caption"/>
    </b>
</p>

<liferay-portlet:renderURL var="renderURL" windowState="<%=LiferayWindowState.MAXIMIZED.toString()%>">
    <liferay-portlet:param name="mvcRenderCommandName" value="/sample/render"/>
    <liferay-portlet:param name="redirect" value="<%=themeDisplay.getURLCurrent()%>"/>
</liferay-portlet:renderURL>

<aui:button href="<%=renderURL %>" value="Show hostname"/>

<liferay-portlet:actionURL name="greet" var="greetUrl"/>

<aui:form action="<%=greetUrl%>" method="post" name="fm">
    <aui:input name="greet" type="text"></aui:input>
    <aui:button-row>
        <aui:button type="submit"></aui:button>
    </aui:button-row>
</aui:form>

<portlet:resourceURL id="/sample/captcha" var="captchaURL"/>
<liferay-captcha:captcha url="<%=captchaURL%>"/>