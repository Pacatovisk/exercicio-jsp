
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marcelo Viana Dias</title>
</head>
<body>
	
	<h1>Calcular a soma ou a média de dois valores</h1>

 	 <form  action="resultado.jsp" method="get">

         <label>1° Valor:</label>
         <input type="text" name="valor1">
          <br>
			 <br>
         <label>2° Valor:</label>
         <input type="text" name="valor2">
         
      
         <p><input type="radio" name="opcao"  value="soma">Soma</p>
         <p><input type="radio" name="opcao"  value="media">Media</p>
			
		<br>	
         <input type="submit" value="Calcular">
		 
		 <br>
 	</form>
 	<%

    String valor1 = request.getParameter("valor1");
    String valor2 = request.getParameter("valor2");
    String opcao = request.getParameter("opcao");

    double dValor1 = Double.parseDouble(valor1);
    double dValor2 = Double.parseDouble(valor2);
    double resultado = 0;

    if (opcao.equals("soma")) {
        resultado = dValor1 + dValor2;
    } else if(opcao.equals("media")) {
        resultado = (dValor1 + dValor2) / 2;
    }
    out.print("<br>Resultado: "+ resultado);
 	%>
 	

</body>

</html>