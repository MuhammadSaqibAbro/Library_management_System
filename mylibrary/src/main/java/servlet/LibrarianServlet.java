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
import model.Librarian;
import dao.LibrarianDao;
import daoimp.LibrarianDaoImp;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/LibrarianServlet")
public class LibrarianServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        

        String email = request.getParameter("librarianEmail");
        String password = request.getParameter("librarianPassword");
       

       
        Librarian librarian = new Librarian();
        librarian.setLibrarianEmail(email);
        librarian.setLibrarianPassowrd(password);
        LibrarianDao LibrarianDao=new LibrarianDaoImp();
        LibrarianDao.addLibrarian(librarian);
        
       

//        RequestDispatcher dispatcher = request.getRequestDispatcher("saqib.jsp");
//        dispatcher.forward(request, response);


    }
}

