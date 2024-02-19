package servlet;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;
import dao.BookDao;
import daoimp.BookDaoImp;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/BookServlet")
public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String bookIdString = request.getParameter("bookId");
        int bookId = Integer.parseInt(bookIdString);
        String bookName = request.getParameter("bookName");
        String authorName = request.getParameter("authorName");
       

       
        Book book = new Book();
        book.setBookid(bookId);
        book.setBookName(bookName);
        book.setBookAuthorName(authorName);
        BookDao bookdao=new BookDaoImp();
        boolean bool= bookdao.addBook(book);
        if(bool) {
        	 try (PrintWriter out = response.getWriter()) {
                 // Write the HTML content
                 out.println("<!DOCTYPE html>");
                 out.println("<html lang=\"en\">");
                 out.println("<head>");
                 out.println("    <meta charset=\"UTF-8\">");
                 out.println("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
                 out.println("    <title>Stylish Alert Message</title>");
                 out.println("    <style>");
                 out.println("        body {");
                 out.println("            font-family: 'Arial', sans-serif;");
                 out.println("            display: flex;");
                 out.println("            align-items: center;");
                 out.println("            justify-content: center;");
                 out.println("            height: 100vh;");
                 out.println("            margin: 0;");
                 out.println("            background-color: #f4f4f4;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-container {");
                 out.println("            width: 300px;");
                 out.println("            padding: 15px;");
                 out.println("            border: 2px solid #3498db;");
                 out.println("            background-color: #fff;");
                 out.println("            border-radius: 5px;");
                 out.println("            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);");
                 out.println("            text-align: center;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-message {");
                 out.println("            font-size: 18px;");
                 out.println("            color: #3498db;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-button {");
                 out.println("            padding: 10px;");
                 out.println("            background-color: #3498db;");
                 out.println("            color: #fff;");
                 out.println("            border: none;");
                 out.println("            border-radius: 3px;");
                 out.println("            cursor: pointer;");
                 out.println("            margin-top: 10px;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-button:hover {");
                 out.println("            background-color: #2980b9;");
                 out.println("        }");
                 out.println("    </style>");
                 out.println("</head>");
                 out.println("<body>");
                 out.println("");
                 out.println("<div class=\"alert-container\">");
                 out.println("    <p class=\"alert-message\">Book Added Seccessfully.</p>");
                 out.println("    <button class=\"alert-button\" onclick=\"closeAlert()\">Close</button>");
                 out.println("</div>");
                 out.println("");
                 out.println("<script>");
                 out.println("    function closeAlert() {");
                 out.println("        // You can customize this function as needed");
                 out.println("        alert(\"Alert closed!\");");
                 out.println("    }");
                 out.println("</script>");
                 out.println("");
                 out.println("</body>");
                 out.println("</html>");
             }
        }else {
        	 try (PrintWriter out = response.getWriter()) {
                 // Write the HTML content
                 out.println("<!DOCTYPE html>");
                 out.println("<html lang=\"en\">");
                 out.println("<head>");
                 out.println("    <meta charset=\"UTF-8\">");
                 out.println("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
                 out.println("    <title>Stylish Alert Message</title>");
                 out.println("    <style>");
                 out.println("        body {");
                 out.println("            font-family: 'Arial', sans-serif;");
                 out.println("            display: flex;");
                 out.println("            align-items: center;");
                 out.println("            justify-content: center;");
                 out.println("            height: 100vh;");
                 out.println("            margin: 0;");
                 out.println("            background-color: #f4f4f4;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-container {");
                 out.println("            width: 300px;");
                 out.println("            padding: 15px;");
                 out.println("            border: 2px solid #3498db;");
                 out.println("            background-color: #fff;");
                 out.println("            border-radius: 5px;");
                 out.println("            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);");
                 out.println("            text-align: center;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-message {");
                 out.println("            font-size: 18px;");
                 out.println("            color: #3498db;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-button {");
                 out.println("            padding: 10px;");
                 out.println("            background-color: #3498db;");
                 out.println("            color: #fff;");
                 out.println("            border: none;");
                 out.println("            border-radius: 3px;");
                 out.println("            cursor: pointer;");
                 out.println("            margin-top: 10px;");
                 out.println("        }");
                 out.println("");
                 out.println("        .alert-button:hover {");
                 out.println("            background-color: #2980b9;");
                 out.println("        }");
                 out.println("    </style>");
                 out.println("</head>");
                 out.println("<body>");
                 out.println("");
                 out.println("<div class=\"alert-container\">");
                 out.println("    <p class=\"alert-message\">Operation Failed.</p>");
                 out.println("    <button class=\"alert-button\" onclick=\"closeAlert()\">Close</button>");
                 out.println("</div>");
                 out.println("");
                 out.println("<script>");
                 out.println("    function closeAlert() {");
                 out.println("        // You can customize this function as needed");
                 out.println("        alert(\"Alert closed!\");");
                 out.println("    }");
                 out.println("</script>");
                 out.println("");
                 out.println("</body>");
                 out.println("</html>");
             }
        }
        bookdao.getAllBook();
        List<Book> books = bookdao.getAllBook();
        HttpSession session = request.getSession();
        session.setAttribute("books", books);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("saqib.jsp");
//        dispatcher.forward(request, response);


    }
}

