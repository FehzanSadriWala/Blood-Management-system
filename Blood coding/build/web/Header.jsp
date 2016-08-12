<div class="header-top">
    <div class="container">
        <div class="logo">
            <a href="Index.jsp">Rakt<span>Plus</span></a>
        </div>
        <div style="margin-left:65%">
            <p id="demo"></p>
            <script>
                document.getElementById("demo").innerHTML = Date();
            </script>
        </div>
        <div class="top-menu">
            <span class="menu"><img src="images/nav.png" alt=""/></span>
                <ul>
                    <li><a href="#home" class="active scroll">Home</a></li>
                    <li><a href="Search.jsp">Search</a></li>
                    <li><a href="#aboutus" class="scroll">About us</a></li>
                    <%
                        String uname=(String)session.getAttribute("uname");
                        if(uname==null)
                        {%>
                        <li><a href="Register.jsp">Registration</a></li>
			<li><a href="Login.jsp">Login</a></li>
                        <%}
                        else
                        {%>
                        <li><a href="Logout.jsp">Logout</a></li>
                        <%
                        if(uname.equals("admin"))
                        {%>
                        <li><a href="Admin.jsp">Admin</a></li> 
                       <%}                        
                        }
                    %>
			<li><a href="#contact" class="scroll">Contact</a></li>
		</ul>
            </div>
        <!--script-nav-->
        <script>
            $("span.menu").click(function(){
            $(".top-menu ul").slideToggle("slow" , function(){
            });
            });
        </script>
        <div class="clearfix"></div>
    </div>
</div>