package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.InvoiceBean;

public class InvoiceAction extends ActionSupport {
    private InvoiceBean invoiceBean;

    public String execute() {
        if (invoiceBean == null) {
            return INPUT;
        }
        return SUCCESS;
    }

    public void validate() {
        if (invoiceBean.getSubject() == null || invoiceBean.getSubject().isEmpty()) {
            addFieldError("invoiceBean.subject", getText("error.subject.required"));
        }
        if (invoiceBean.getDateFrom() == null) {
            addFieldError("invoiceBean.dateFrom", getText("error.dateFrom.required"));
        }
        if (invoiceBean.getDateTo() == null) {
            addFieldError("invoiceBean.dateTo", getText("error.dateTo.required"));
        }
        if (invoiceBean.getGrossAmount() <= 0) {
            addFieldError("invoiceBean.grossAmount", getText("error.grossAmount.required"));
        }
    }

    public InvoiceBean getInvoiceBean() {
        return invoiceBean;
    }

    public void setInvoiceBean(InvoiceBean invoiceBean) {
        this.invoiceBean = invoiceBean;
    }
}
