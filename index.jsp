<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="design.css" />
    </head>
    <body>
        <h1> Salary Calculator </h1>
        <div id = dataBox>
		<form name="Salary Calculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    
                    <tr>
                        
                        <td>Hours Worked:    </td>
                        <td><input type="text" name="hours" value="" size="50" required />    </td>
                    </tr>
                    <tr>
                        
                        <td>Hourly Pay:    </td>
                        <td><input type="text" name="pay" value="" size="50" required />    </td>
                    </tr>
                    <tr>
                        
                        <td>Pre-tax Deduct:    </td>
                        <td><input type="text" name="preTax" value="" size="50" required />    </td>
                    </tr>
                    <tr>
                        
                        <td>Post-tax Deduct:    </td>
                        <td><input type="text" name="postTax" value="" size="50" required />    </td>
                    </tr>
                </tbody>
                
                
            </table>
            
            <input type="reset" value="Clear" name="clear"/>
            <input type="submit" value="Submit" name="submit"/>
        </form>
		</div>
    </body>
</html>
