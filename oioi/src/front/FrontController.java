package front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.IdCheckCon;
import com.controller.JoinCon;
import com.controller.LoginCon;
import com.controller.LogoutCon;
import com.controller.UpdateCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
		
		private HashMap<String, ICommand> map = new HashMap<String, ICommand>();
		
		private void putData() {
			map.put("JoinService.do", new JoinCon());
			map.put("IdCheckService.do", new IdCheckCon());
			map.put("LoginService.do", new LoginCon());
			map.put("LogoutService.do", new LogoutCon());
			map.put("updateService.do", new UpdateCon());
		}	
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String resultURL = requestURI.substring(contextPath.length() + 1);
			request.setCharacterEncoding("EUC-KR");
			String moveURL = null;
			putData();
			ICommand iCommand = map.get(resultURL);
			moveURL = iCommand.execute(request, response);
			
			if(iCommand instanceof IdCheckCon) {
				response.getWriter().print(moveURL);
			}else {
			
				moveURL = iCommand.execute(request, response);
				response.sendRedirect(moveURL);
			}
		}

}
