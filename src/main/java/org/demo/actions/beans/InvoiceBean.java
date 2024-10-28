package org.demo.actions.beans;

import java.util.Date;

public class InvoiceBean {
    private String subject;
    private Date dateFrom;
    private Date dateTo;
    private double grossAmount;

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Date getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public Date getDateTo() {
        return dateTo;
    }

    public void setDateTo(Date dateTo) {
        this.dateTo = dateTo;
    }

    public double getGrossAmount() {
        return grossAmount;
    }

    public void setGrossAmount(double grossAmount) {
        this.grossAmount = grossAmount;
    }

    public double getAmountWithTax() {
        return grossAmount * 1.21; // Aplicar un IVA del 21%
    }
}
