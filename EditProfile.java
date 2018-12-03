package Patient;

import com.dbutils.DBsingletone.DBsingletone;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EditProfile", urlPatterns = {"/EditProfile"})
public class EditProfile extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try {
            String firstname = request.getParameter("firstname");
              HttpSession session = request.getSession();           
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String pnumber = request.getParameter("pnumber");
            String pinsurance = request.getParameter("pinsurance");
            String sinsurance = request.getParameter("sinsurance");
            String birthdate = request.getParameter("birthdate");
            String ssn = request.getParameter("ssn");
            String address = request.getParameter("address");
            String height = request.getParameter("height");
            String weight = request.getParameter("weight");
            int pid = (int) session.getAttribute("pid");
          
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            PreparedStatement ps = con.prepareStatement("update   pregistration set firstname='"+firstname+"',lastname='"+lastname+"',email='"+email+"',pnumber='"+pnumber+"',pinsurance='"+pinsurance+"',sinsurance='"+sinsurance+"',birthdate='"+birthdate+"',ssn='"+ssn+"',address='"+address+"',height='"+height+"',weight='"+weight+"', where pid='"+pid+"'");
            int i = ps.executeUpdate();
            if (i == 1) {
                response.sendRedirect("ViewingPatients.jsp?res=Success");
            } else {
                 response.sendRedirect("ViewingPatients.jsp?res=Failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
