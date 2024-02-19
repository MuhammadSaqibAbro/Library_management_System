package servlet;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Admin;
import model.Book;
import dao.AdminDao;
import daoimp.AdminDaoImp;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        

        String email = request.getParameter("adminEmail");
        String password = request.getParameter("adminPassword");
       

       
        Admin admin = new Admin();
        admin.setAdminEmail(email);
        admin.setAdminPassowrd(password);
        AdminDao admindao=new AdminDaoImp();
        admindao.addAdmin(admin);
        
       

//        RequestDispatcher dispatcher = request.getRequestDispatcher("saqib.jsp");
//        dispatcher.forward(request, response);


    }
}

