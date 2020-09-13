<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script type="text/javascript">
	function check()
	{
        var uname = document.getElementById("username");
        var pass = document.getElementById("password");
        var uLabel = document.getElementById("lbluser");
        var pLabel = document.getElementById("lblpass");
        if(uname.value.trim()== "" && pass.value.trim() == "")
        {
        	uname.style.border = "solid 3px red";
        	pass.style.border = "solid 3px red";
        	uLabel.style.visibility = "visible";
        	pLabel.style.visibility = "visible";
            return false;
        }
        else if(uname.value.trim()== "")
        {
        	uLabel.style.visibility = "visible";
        	pLabel.style.visibility = "hidden";
        	uname.style.border = "solid 3px red";
        	pass.style.border = "";
            return false;
        }
        else if(pass.value.trim() == "")
        {
        	pLabel.style.visibility = "visible";
        	uLabel.style.visibility = "hidden";
        	pass.style.border = "solid 3px red";
        	uname.style.border = "";
            return false;
        }
        else
        {
             return true;	
        }
	}
</script>
</head>
<body>
	<form action="login" method="post">
		UserName : <input type="text" name="username" id="username" placeholder="enter username">
		<label id="lbluser" style="color:red; visibility: hidden">Invalid</label>
		<br><br>
		Password : <input type="password" name="password" id="password" placeholder="enter password">
		<label id="lblpass" style="color:red; visibility: hidden">Invalid</label>
		<br><br>
		<input type="submit" onclick="return check()" value="login">
		<input type="hidden" id="msg">
	</form>
</body>
</html>