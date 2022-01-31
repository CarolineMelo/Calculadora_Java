package br.com.rd.calculadora;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraServlet
 */
@WebServlet("/CalculadoraServlet")
public class CalculadoraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculadoraServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		process3(request, response);
	}
	
	private void process3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if ((request.getParameter("var1") != null) && (request.getParameter("var1") != null)) {
		
		int var1 = Integer.parseInt(request.getParameter("var1"));
		int var2 = Integer.parseInt(request.getParameter("var2"));
		String operacao = request.getParameter("operacao");
		
		

		Calcular cal = new Calcular(var1, var2);
		int result;		
//				if(operacao.equals("soma") ) {
//					 int result = cal.somar();
//					 request.setAttribute("res", result);
//					
//				} else if (operacao.equals("sub")) {
//					int result = cal.subtrair();
//					 request.setAttribute("res", result);
//					 
//				}else if (operacao.equals("div")) {
//					int result = cal.dividir();
//					request.setAttribute("res", result);
//					
//				}else if (operacao.equals("mult")){
//					int result = cal.multiplicar();
//					request.setAttribute("res", result);
//				}
		
		if(request.getParameter("btnSomar") != null) {
			 result = cal.somar();
		} else if (request.getParameter("btnSub") != null) {
			 result = cal.subtrair();
		}else if (request.getParameter("btnMulti") != null) {
			 result = cal.multiplicar();
		}else {
			result = cal.dividir();
		}
	request.setAttribute("result", result); 
	}
		
	
		
	request.getRequestDispatcher("/").forward(request, response); //redireciona para ele mesmo
	
	}
}

