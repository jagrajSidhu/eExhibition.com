<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
      <!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
      <title>Home Page</title>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <link rel="stylesheet" href="mm_health_nutr.css" type="text/css" />
      <script language="JavaScript" type="text/javascript">

      //--------------- LOCALIZEABLE GLOBALS ---------------
      //To display date on top
      var d=new Date();
      var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

      //Ensure correct for language. English is "January 1, 2004"

      var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();

      //---------------   END LOCALIZEABLE   ---------------
      </script>

      <style type="text/css">
      <!--
      .style3 {font-size: 14px}
      .style4 {font-size: 12px}
      .style5 {
	       color: #000000;
	       font-size: 16px;
              }
      .style6 {font-size: 16px}
      -->
      </style>
</head>
<body bgcolor="#F4FFE4"  onload="setInterval('banner()',3000)">
  
     Current Time: <script language="JavaScript" type="text/javascript">
       document.write(TODAY);	</script>
       
      	<form id="form1" name="form1" action="login.jsp" method="post" >
      <label>User Name :
        <input type="text" name="name" />
        </label>
      <p>
        <label>Password :&nbsp;&nbsp;     
        <input type="password" name="pass" />
        </label>
      </p>
      <p>
        <label>
        <input type="submit" name="login"  value="log in" />
        </label>
    
      </p>
      
    </form>
			
</body>
</html>
