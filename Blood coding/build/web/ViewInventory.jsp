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
    <%
            String s= (String)session.getAttribute("uname");
            if(s!=null && "admin".equals(s.intern()))
            {%>
    <div class="col-md-3" style="background-color: burlywood; height: 1300px;">
        <center>  <h3 style="margin-top: 30px; color: saddlebrown;">RaktPlus @ your service</h3><br/><br/>
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
                    </table><br/>
            <img src="images/slidercollage1.jpg" alt=""/>
        </center>
                </div>
    <div class="services-section" id="search">
        <div class="container">
            <center>
                <img src="images/View Inventory.JPG" alt=""/></center>
            <div class="services-grids">
                <form method="get" style="font-size:20px;font-family:Times New Roman";">
                <center><table>
                    <tr style="color: forestgreen;">
                         <td>Blood Group</td>
                         <td>Quantity</td>
                         <td>Location</td>
                         <td>Cost Per Unit</td>
                    </tr>
                    <%
                    PreparedStatement ps=com.dbconnection.LoadConnection.getConnection().prepareStatement("select * from details");
                    ResultSet rs= ps.executeQuery();
                    int i=0;
                    while(rs.next())
                    {
                        i++;
                        if(i==0)
                        {
                            out.println("<tr>");
                        }
                        %>                   
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                     <%
                        out.println("</tr>");
                    }%>
                         </table>
                </center>
                </form>
            </div>
        </div>
    </div>
        <%}
            else
            {%>
            <img src="images/PlzLogin.png" alt=""/>
            <%}
        %>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>