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

<div class="col-8 card bg-light mx-auto">
              <h3 class="text-center card-header">Calculadora</h3>
              <form class="card-body" method="post" action="CalculadoraServlet">
               
             <div class="form-group row">
	                  <label for="primeiroValor" class="col-form-label">Valor 1:</label>
	                  <div class="input-group">
	                 	 <input type="number" class="form-control" name="var1" aria-describedby="basic-addon1" placeholder="">
	                 </div>
                  </div>
         		 <div class="form-group row">
                  <label for="segundoValor" class="col-form-label">Valor 2:</label>
                  
               <div class="input-group">
                      <input type="number" class="form-control" name="var2" aria-describedby="basic-addon2"placeholder="">
                  </div>
                 <div class="align-items-center mt-2 mb-3">
                    
		            <button  type="reset" class="btn btn-success  btn-lg">Calcular</button>
		            <button type="submit" name="btnSomar"      value="+" class="btn btn-success btn-lg">+</button>
		            <button type="submit" name="btnSub"      value="-" class="btn btn-success btn-lg">-</button>
		            <button type="submit" name="btnMulti"   value="*" class="btn btn-success btn-lg">*</button>
		            <button type="submit" name="btnDiv"  value="/" class="btn btn-success btn-lg">/</button> 
         		 					
					 <h4>Resultado = ${requestScope.result}</h4>
				</div>
				
				</div> 
                
                </div>
                
               
              	 
                </form>
            
            
            
            
 
 
</body>
</html>