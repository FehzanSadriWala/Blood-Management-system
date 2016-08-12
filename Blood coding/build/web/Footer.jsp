<%@ page import="java.io.*,java.util.*" %>
<html>
    <head>
        <title>Applcation object in JSP</title>
    </head>
    <body>
        <div class="footer-section">
            <div class="container">
		<div class="footer-bottom">
                    <p></p>
                <p>Copyright@CSE GITS 2016 <span>Akanksha Gohil, </span><span>Dhwani Dashora, </span><span>Farheen Sadriwala, </span><span>Jai Prakash</span><a href="#"></a></p>
		</div>
		<script type="text/javascript">
                    $(document).ready(function() {
                    $().UItoTop({ easingType: 'easeOutQuart' });
                    });
		</script>
		<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
                <%
                    Integer hitsCount = 
                      (Integer)application.getAttribute("hitCounter");
                    if( hitsCount ==null || hitsCount == 0 ){
                       /* First visit */
                      // out.println("Welcome to my website!");
                       hitsCount = 1;
                    }else{
                       /* return visit */
                       //out.println("Welcome back to my website!");
                       hitsCount += 1;
                    }
                    application.setAttribute("hitCounter", hitsCount);
                %>
                <center>
                <p>Total number of visits: <%= hitsCount%></p>
                </center>
            </div>
	</div>
</body>
</html>