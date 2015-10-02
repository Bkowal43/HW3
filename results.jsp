<%-- 
    Document   : results
    Created on : Oct 2, 2015, 12:00:28 PM
    Author     : Bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator Results</title>
		<link rel="stylesheet" type="text/css" href="design.css" />
    </head>
        <%
        double hoursWorked= Integer.parseInt(request.getParameter("hours"));
        double hourlyPay= Integer.parseInt(request.getParameter("pay"));
        double preTaxDed= Integer.parseInt(request.getParameter("preTax"));
        double postTaxDed= Integer.parseInt(request.getParameter("postTax"));
        double hoursOt;
        double totalHoursWorked=hoursWorked;
        if(hoursWorked<=40){
            hoursOt=0;
        }
        else{
            hoursOt= hoursWorked-40;
            hoursWorked=40;
            totalHoursWorked=hoursWorked+hoursOt;        
        }
        double otRate= hourlyPay*1.5;
        double grossPay=((hoursWorked*hourlyPay)+(hoursOt*otRate));
        double preTaxPay=grossPay-preTaxDed;
        double taxAmount;
        if(preTaxPay<500){
            taxAmount=preTaxPay*.18;
        }
        else{
            taxAmount=preTaxPay*.22;
        }
        double postTaxPay=preTaxPay-taxAmount;
        double netPay=postTaxPay-postTaxDed;
        
        
        
        
        
        
        %>
    <body>
        <h1>Salary Info</h1>
        <div id=resultsBox>
		<table>
            <tr>
                <td>Total Hours Worked:</td>
                <td><%= totalHoursWorked %></td>
            </tr>
            <tr>
                <td>Hourly Rate:</td>
                <td><%= hourlyPay %></td>
            </tr>
            <tr>
                <td># of Hours Overtime:</td>
                <td><%= hoursOt %></td>
            </tr>
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td><%= otRate %></td>
            </tr>
            <tr>
                <td>Gross Pay:</td>
                <td><%= grossPay %></td>
            </tr>
            <tr>
                <td>Pre-tax Pay:</td>
                <td><%= preTaxPay %></td>
            </tr>
            <tr>
                <td>Tax Amount:</td>
                <td><%= taxAmount %></td>
            </tr>
            <tr>
                <td>Post-tax Pay:</td>
                <td><%= postTaxPay %></td>
            </tr>
            <tr>
                <td>Post-tax Deduct</td>
                <td><%= postTaxDed %></td>
            </tr>
            <tr>
                <td>Net Pay</td>
                <td><%= netPay %></td>
            </tr>
        </table>
		</div>
    </body>
</html>
