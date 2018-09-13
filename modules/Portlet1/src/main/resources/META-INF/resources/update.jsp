<%@include file="init.jsp" %>
<h1>Modificación Factura</h1>

<p>
	<a href='<portlet:renderURL/>'>Volver</a>
</p>

<portlet:actionURL name="update" var="updateFactura"></portlet:actionURL>

<%
	String num = renderRequest.getParameter("num");
	String cliente = renderRequest.getParameter("cliente");
	String importe = renderRequest.getParameter("importe");
%>

<form method="post" action="${updateFactura}">
	<div class="form-group">
		<label for="usr"><liferay-ui:message key="portlet1.lista.factura.num" /></label>
		<input type="text" class="form-control" name="<portlet:namespace/>num" value="<%=num%>">
	</div>

	<div class="form-group">
		<label for="usr"><liferay-ui:message key="portlet1.lista.factura.cliente" /></label> 
		<input type="text" class="form-control" name="<portlet:namespace/>cliente" value="<%=cliente%>">
	</div>

	<div class="form-group">
		<label for="usr"><liferay-ui:message key="portlet1.lista.factura.importe" /></label> 
		<input type="text" class="form-control" name="<portlet:namespace/>importe" value="<%=importe%>">
	</div>
	
	<div class="text-center">
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>
