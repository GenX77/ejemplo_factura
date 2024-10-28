<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title><s:text name="form.title.message"/></title>
    <s:head/>
    <sx:head/>
    <script type="text/javascript">
        function calcularTotal() {
            const grossAmount = parseFloat(document.getElementById("grossAmount").value) || 0;
            const taxRate = parseFloat(document.getElementById("taxRate").value) || 0;

            const totalAmount = grossAmount + (grossAmount * taxRate / 100);
            document.getElementById("totalAmount").value = totalAmount.toFixed(2);
        }
    </script>
</head>
<body>

<s:form theme="simple" id="itemAdd" name="itemAdd" action="invoice" method="post" validate="true">
    <h1><s:text name="form.title.message"/></h1>
    <table>
        <tr>
            <td class="evenRow">
                <s:fielderror fieldName="invoiceBean.subject"/>
                <s:text name="form.subject.message"/>
                <s:textfield id="subject" name="invoiceBean.subject"/>
            </td>
        </tr>
        <tr>
            <td class="evenRow">
                <s:fielderror fieldName="invoiceBean.dateFrom"/>
                <s:text name="form.fromDate.message"/>
                <sx:datetimepicker id="dateFrom" name="invoiceBean.dateFrom"/>
            </td>
        </tr>
        <tr>
            <td class="evenRow">
                <s:fielderror fieldName="invoiceBean.dateTo"/>
                <s:text name="form.toDate.message"/>
                <sx:datetimepicker id="dateTo" name="invoiceBean.dateTo"/>
            </td>
        </tr>
        <tr>
            <td class="evenRow">
                <s:fielderror fieldName="invoiceBean.grossAmount"/>
                <s:text name="form.grossAmount.message"/>
                <s:textfield id="grossAmount" name="invoiceBean.grossAmount" onkeyup="calcularTotal()"/>
            </td>
        </tr>
        <tr>
            <td class="evenRow">
                <s:text name="form.taxRate.message"/>
                <s:select id="taxRate" name="invoiceBean.taxRate" list="#{'0':'0%', '5':'5%', '10':'10%', '21':'21%'}" onchange="calcularTotal()"/>
            </td>
        </tr>
        <tr>
            <td class="evenRow">
                <s:text name="form.totalAmount.message"/>
                <s:textfield id="totalAmount" name="invoiceBean.totalAmount" readonly="true"/>
            </td>
        </tr>
        <tr>
            <td class="evenRow">
                <s:submit align="left" value="Enviar"/>
            </td>
        </tr>
    </table>
</s:form>

</body>
</html>
