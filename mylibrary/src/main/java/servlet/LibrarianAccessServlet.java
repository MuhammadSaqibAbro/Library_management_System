package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Librarian;
import dao.LibrarianDao;
import daoimp.LibrarianDaoImp;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/LibrarianAccessServlet")
public class LibrarianAccessServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String librarianEmail = request.getParameter("librarianEmail");
        String librarianPassword = request.getParameter("librarianPassword");

        LibrarianDao librarianDao = new LibrarianDaoImp();
        List<Librarian> librarianList = librarianDao.getAllLibrarian();


        if (librarianList != null && !librarianList.isEmpty()) {
            for (Librarian librarian : librarianList) {
                String dbEmail = librarian.getLibrarianEmail();
                String dbPassword = librarian.getLibrarianPassowrd();

                if (dbEmail != null && dbPassword != null &&
                        librarianEmail.equals(dbEmail) && librarianPassword.equals(dbPassword)) {
                    // Set the logged-in librarian's password in the session, not the password from the form
                    HttpSession session = request.getSession();
                    session.setAttribute("loggedInLibrarian", dbPassword);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("Librarianselection.jsp");
                    dispatcher.forward(request, response);
                    return; // Exit the loop once login is successful
                }
            }
            // If control reaches here, login failed
            System.out.println("Invalid Email or Password");
            // You might want to redirect to a login error page or display a message
        } else {
            // Handle empty list appropriately
            System.out.println("Librarian list is empty");
            // You might want to redirect to a login error page or display a message
        }
    }
}
