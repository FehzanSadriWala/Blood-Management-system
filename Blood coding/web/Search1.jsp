<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dbconnection.LoadConnection"%>
<!DOCTYPE HTML>
<html>
<head>
<title>RaktPlus</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/login.css" rel="stylesheet" type="text/css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sciencelab Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web 
template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function 
hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/modernizr.custom.97074.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
<!--script-->
<script src="js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
 <!--script-->
</head>
<body background="images/backk.gif">
    <jsp:include page="Header.jsp"></jsp:include>
    <div class="col-md-3" style="background-color: burlywood; height: 680px;">
        <center> <h3 style="margin-top: 30px; color: saddlebrown;">RaktPlus @ your service</h3><br/><br/>
                    <table>
                    <tr>
                        <td><a href="AboutHospital.jsp"><input type="submit" value="About Hospital" style="width:200px; height:40px;font-size: larger;"></a></td>
                    </tr>
                    <tr>
                        <td><a href="AboutDoctors.jsp"><input type="submit" value="About Doctors" style="width:200px; height:40px;font-size: larger;"></a></td>
                    </tr>
                    <tr>
                        <td><a href="BloodInfo.jsp"><input type="submit" value="Blood Info" style="width:200px; height:40px;font-size: larger;"></a></td>
                    </tr>
                    
                    <tr>
                        <td><a href="DonorInstruction.jsp"><input type="submit" value="Donor Instruction" style="width:200px; height:40px;font-size: larger;"></a></td>
                    </tr>
                    <tr>
                        <td><a href="HealthTips.jsp"><input type="submit" value="Health Tips" style="width:200px; height:40px;font-size: larger;"></a></td>
                    </tr>
                    <tr>
                        <td><a href="HelpfulDonation.jsp"><input type="submit" value="Helpful Donation" style="width:200px; height:40px;font-size: larger;"></a></td>
                    </tr>
                    <tr>
                        <td><a href="NewsBlood.jsp"><input type="submit" value="Blood Bank" style="width:200px; height:40px;font-size: larger;"></a></td>
                    </tr>
                    </table>
        </center>
                </div>
    <div class="services-section" id="search">
        <div class="container">
            <center><img src="images/search details.JPG" alt=""/></center>
            <div class="services-grids">
            <center>
                <table>
                    <tr style="font-size: large; font-weight: bold;">
                        <td>Blood Group</td>
                        <td>Quantity</td>
                        <td>Location</td>
                        <td>Cost Per Unit</td>
                    </tr>
                    <%
                String bg=request.getParameter("a");
                String loc=request.getParameter("b");
                try
                {
                    Connection c=LoadConnection.getConnection();
                    PreparedStatement ps = c.prepareStatement("select * from details where BloodGroup=? and Location=?");
                    ps.setString(1, bg);
                    ps.setString(2, loc);
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                    %>
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>  
                             <% String s= (String)session.getAttribute("uname");
                            if(s!=null){
                             %> 
                        </tr>
                            <a href="Seeker1.jsp?bg=<%=rs.getString(1)%>&qun=<%=rs.getString(2)%>&loc=<%=rs.getString(3)%>&cost=<%=rs.getString(4)%>">
                            <input type="submit" value="Accidental" style="width:100px; height:30px; font-size:large;"></a>
                            <a href="Seeker2.jsp?bg=<%=rs.getString(1)%>&qun=<%=rs.getString(2)%>&loc=<%=rs.getString(3)%>&cost=<%=rs.getString(4)%>">
                            &emsp;&emsp;&emsp; <input type="submit" value="Non-Accidental" style="width:150px; height:30px; font-size:large;"></a><br/><br/>
                            <%}%>
                        <% String s1=(String)session.getAttribute("uname");
                        if(s1==null){
                        %><!--<h4 style="font-family: monospace;">Continue through login</h4><br><br>-->
                        <a href="Login.jsp"><input type="submit" value="Apply Now" style="width:150px; height:30px; font-size:large;"></a><br/><br/><%}%>
                <%}}
                catch(Exception e)
                {
                    System.out.println(e);
                }%> 
                </table>     
            </center>
            <center> 
                <br/><br/>
        <img src="images/blood-donation-logo_23-2147506524.jpg" alt=""/>
        <img src="images/shharc-blood-bank.jpg" alt=""/>
        </center>
            </div>
        </div>
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
