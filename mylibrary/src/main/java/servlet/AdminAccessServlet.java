package servlet;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Admin;
import model.login;
import dao.AdminDao;
import daoimp.AdminDaoImp;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/AdminAccessServlet")
public class AdminAccessServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String adminEmail = request.getParameter("adminEmail");
        String adminPassword = request.getParameter("adminPassword");

        AdminDao adminDao = new AdminDaoImp();
        List<Admin> adminList = adminDao.getAllAdmin();

        if (adminList != null && !adminList.isEmpty()) {
            for (Admin admin : adminList) {
//                if (admin.getAdminEmail().equals(adminEmail) && admin.getAdminPassowrd().equals(adminPassword)) {
//                    HttpSession session = request.getSession();
//                    session.setAttribute("loggedInAdmin", admin);
//                    RequestDispatcher dispatcher = request.getRequestDispatcher("selection.jsp");
//                    dispatcher.forward(request, response);
//                    return; // Exit the loop once login is successful
//                }
                String adminEmail2 = admin.getAdminEmail();
                String adminPassword2 = admin.getAdminPassowrd();

                if (adminEmail != null && adminPassword != null &&
                        adminEmail.equals(adminEmail2) && adminPassword.equals(adminPassword2)) {
                    // Your logic here
                	 HttpSession session = request.getSession();
                     session.setAttribute("loggedInAdmin", admin);
                     RequestDispatcher dispatcher = request.getRequestDispatcher("Adminselection.jsp");
                     dispatcher.forward(request, response);
                } else {
                    // Handle the case where adminEmail or adminPassword is null 
                    // or not equal to the expected email and password combination
                }

            }
            // If control reaches here, login failed
            System.out.println("Invalid Email or Password");
            // You might want to redirect to a login error page or display a message
        } else {
            // Handle empty list appropriately
            System.out.println("Admin list is empty");
            // You might want to redirect to a login error page or display a message
        }
    }
}
