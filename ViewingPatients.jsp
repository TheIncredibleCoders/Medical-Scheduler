
<%@page import="com.dbutils.DBsingletone.DBsingletone"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="Viewingpatients.css">
<style>
    .button {
    display: inline-block;
    width: 115px;
    height: 50px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
}
p {font-size:0; /* Fixes inline block spacing */  }
span { width:50%; display:inline-block; }
span.align-right { text-align:right; }

span a { font-size:16px; }
</style>
<div class="container">
    <div class="row">
    
    
    
        <div class="col-lg-19 col-lg ">
            
            <div class="panel panel-default panel-table">
              
                <div class="row">
                  <div class="col col-lg-6">
                      <h1 style="text-align:right;"><u>PATIENT REGISTRATION</u></h1>
                  </div>
                  <div class="col col-lg-6 text-right">
                      <p>
                        
                        <span class="align-right">
                            <span class="align-right">
                                
                                <a class="button" href="PatientRegister.jsp">Create New</a>
                        </span>
                        </span>
                       
                      </p>

                  </div>
                </div>
              </div>
                    
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><em class="fa fa-cog"></em></th>
                        <th class="hidden-xs"> Patient ID</th>
                        <th>First Name</th>
                                                <th>Last name</th>
                                                <th>Email</th>
                                                <th>Phone Number</th>
                                                <th>Primary Insurance</th>
                                                <th>Secondary Insurance</th>
                                                <th>Birth date</th>
                                                <th>Social Security Number </th>
                                                <th>Address</th>
                                                <th>Height</th>
                                                <th>Weight</th>
                    </tr> 
                  </thead>
                  <tbody>
                      <%
                                                
                                                DBsingletone dbs1 = DBsingletone.getDbSingletone();
                                                Connection con1 = dbs1.getConnection();
                                                System.out.println("Connection Ok");
                                                PreparedStatement stmt11 = con1.prepareStatement("select * from pregistration");
                                                ResultSet rs = stmt11.executeQuery();
                                                while (rs.next()) {
                                            %>
                          <tr>
                            <td align="center">
                              
                              <a href="DeletePatient.jsp?pid=<%=rs.getInt("pid")%>&email=<%=rs.getString("email")%>" class="btn btn-danger"><em class="fa fa-trash"></em></a>
                            </td>
                           
                            
                            <td class="hidden-xs"><%=rs.getString("pid")%></td>
                                                <td><%=rs.getString("firstname")%></td>
                                                <td><%=rs.getString("lastname")%></td>
                                                <td><%=rs.getString("email")%></td>
                                                <td><%=rs.getString("pnumber")%></td>
                                                <td><%=rs.getString("pinsurance")%></td>
                                                <td><%=rs.getString("sinsurance")%></td>
                                                <td><%=rs.getString("birthdate")%></td>
                                                <td><%=rs.getString("ssn")%></td>
                                                <td><%=rs.getString("address")%></td>
                                                <td><%=rs.getString("height")%></td>
                                                <td><%=rs.getString("weight")%></td>
                                               
                                                



                                            </tr>
                                            <%}%>
                                            
                        </tbody>
                </table>
            
              </div>
              
            </div>

</div></div>
</html>
