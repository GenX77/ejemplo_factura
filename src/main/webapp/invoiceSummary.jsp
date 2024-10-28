<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Invoice Summary</title>
</head>
<body>

<h1>Resumen de la Factura</h1>
<p><b>Concepto:</b> <s:property value="invoiceBean.subject"/></p>
<p><b>Fecha desde:</b> <s:property value="invoiceBean.dateFrom"/></p>
<p><b>Fecha hasta:</b> <s:property value="invoiceBean.dateTo"/></p>
<p><b>Importe Bruto:</b> <s:property value="invoiceBean.grossAmount"/> €</p>
<p><b>Importe con IVA (21%):</b> <s:property value="invoiceBean.amountWithTax"/> € (IVA incluido)</p>

</body>
</html>
