<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="col-12 card bg-light mx-auto">
              <h3 class="text-center card-header">Calculadora</h3>
              <form class="card-body" method="post" action="CalculadoraServlet">
               
             <div class="form-group row">
	                  <label for="primeiroValor" class="col-form-label">Valor 1:</label>
	                  <div class="input-group">
	                 	 <input type="number" class="form-control" name="var1" aria-describedby="basic-addon1" placeholder="2">
	                 </div>
                  </div>
         		 <div class="form-group row">
                  <label for="segundoValor" class="col-form-label">Valor 2:</label>
                  
               <div class="input-group">
                      <input type="number" class="form-control" name="var2" aria-describedby="basic-addon2"placeholder="3">
                  </div>
                 <div>
	                 <select class="form-select" name="operacao" size="3" aria-label="size 3 select example">
						  <option>Escolha uma operação</option>
						  <option value="soma">somar</option>
						  <option value="sub">subtrair</option>
						  <option value="div">dividir</option>
						  <option value="mult">multiplicar</option>
					 </select>
					 <button type="reset" class="btn btn-success">Calcular</button>
					 <h4>Resultado = ${requestScope.result}</h4>
				</div> 
                
                </div>
                
               
              	 
                </form>
            
            </div>
            
            
 
 
</body>
</html>