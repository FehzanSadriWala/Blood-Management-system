<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE HTML>
<html>
<head>
<title>RaktPlus</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
    <jsp:useBean id="ac" class="com.vbeans.SeekerBean" scope="session"></jsp:useBean>
        <div class="col-md-3" style="background-color: burlywood; height: 960px;">
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
            <img src="images/seek11.jpg" alt=""/>
        </center>
                </div>
    <div class="team">
        <div class="container">
            <center>
                <center>  
                    <img src="images/Seeker details.JPG" alt=""/></center>
                    <table>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Blood Group: </td><td><%=ac.getBg()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Location: </td><td><%=ac.getLoc()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Cost Per Person: </td><td><%=ac.getCop()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Quantity: </td><td><%=ac.getQun()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Total Cost: </td><td><%=ac.getTc()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Patient Name: </td><td><%=ac.getPname()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Gender: </td><td><%=ac.getGen()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Receiver Name: </td><td><%=ac.getRcnm()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Receiver No.: </td><td><%=ac.getRcno()%></td>
                        </tr>
                        <tr>
                            <td style=" font-size:20px; font-family:Times New Roman">Email: </td><td><%=ac.getEmail()%></td>
                        </tr>
                        <tr>
                            <td style="font-size:20px; font-family:Times New Roman">Receiving Date: </td><td><%=ac.getRdt()%></td>
                        </tr>                 
                    </table>
                </center>
                <br/><br/>
                <h4 style="margin-left: 25%; color: forestgreen;">Note*:</h4><p style="margin-left: 25%;color: forestgreen;">The receipt produced must be taken to the selected hospital for the acquisition of blood units.</p>  
        </div>
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>