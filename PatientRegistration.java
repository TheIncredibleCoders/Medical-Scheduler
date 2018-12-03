package Patient;
import com.dbutils.DBsingletone.DBsingletone;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PatientRegistration", urlPatterns = {"/PatientRegistration"})
public class PatientRegistration extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();

        boolean res = false;
        try {
            String firstname = request.getParameter("firstname");
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
            String femaleradio = request.getParameter("femaleradio");
            String maleradio = request.getParameter("maleradio");
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            PreparedStatement psmt = con.prepareStatement("select * from pregistration where email='" + email + "'");
            ResultSet rs = psmt.executeQuery();
            if (rs.next()) {
                response.sendRedirect("PatientResgister.jsp?res=Already Existing");
            } else {
                PreparedStatement ps = con.prepareStatement("insert into pregistration (firstname,lastname,pid,email,pnumber,pinsurance,sinsurance,birthdate,ssn,address,height,weight,femaleradio,maleradio) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, firstname);
                ps.setString(2, lastname);
                ps.setString(3, email);
                ps.setString(4, pnumber);
                ps.setString(5, pinsurance);
                ps.setString(6, sinsurance);
                ps.setString(7, birthdate);
                ps.setString(8, ssn);
                ps.setString(9, address);
                ps.setString(10, height);
                ps.setString(11, weight);
                ps.setString(12, femaleradio);
                ps.setString(13, maleradio);

                int i = ps.executeUpdate();

                if (i == 1) {
                    response.sendRedirect("PatientRegister.jsp?res=success");
                } else {
                    response.sendRedirect("PatientRegister.jsp?res=Ty Again");
                }
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
