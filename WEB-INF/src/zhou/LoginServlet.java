

@webServlet(name="login", urlPatterns={"/login"})
public class LoginServlet extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,java.io.IOException {

        String errMsg = "";
        RequestDispatcher rd;
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        if (pass.length > 0 && pass.length > 0) {

            HttpSession session = request.getSession(true);
            session.setAttribute("name", username);
            rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        } else {

            errMsg += "您的用户名密码不符合";
        }
        if (errMsg != null && !errMsg.equals("")) {
            rd = request.getRequestDispatcher("/servletLogin.jsp");
            request.setAttribute("err", errMsg);
            rd.forward(request, response);
        }
    }
}