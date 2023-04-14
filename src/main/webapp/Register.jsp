<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/wsh/styles.css">
	
	<style>
		.rq{
			color: red;
		}
	</style>
	
	<script>
	function mySubmit()
	{
		// bat loi
		error="";
		
		hoVaTen = document.getElementById("idHoVaTen").value;
		date = document.getElementById("idDate").value;
		phone = document.getElementById("idPhone").value;
		email = document.getElementById("idEmail").value;
		username = document.getElementById("idUsername").value;
		password = document.getElementById("idPassword").value;
		repass = document.getElementById("idRepass").value;
		// 
		if(hoVaTen.length==0){
			error="error";
			errorHoVaTen = document.getElementById("errorHoVaTen");
			errorHoVaTen.innerHTML = "<span class='rq'>Bạn cần nhập họ và tên</span>";
		}else{
			error="";
			errorHoVaTen.innerHTML = "<div></div>";
		}
		
		if(date.length==0){
			error="error";
			errorDate= document.getElementById("errorDate");
			errorDate.innerHTML= "<span class='rq'>Bạn cần nhập năm sinh</span>";
		}else{
			error="";
			errorDate.innerHTML = "<div></div>";
		}
		
		if(phone.length==0){
			error="error";
			errorPhone= document.getElementById("errorPhone");
			errorPhone.innerHTML= "<span class='rq'>Bạn cần nhập số điện thoại</span>";
		}else{
			error="";
			errorPhone.innerHTML = "<div></div>";
		}
		
		if(email.length==0){
			error="error";
			errorEmail= document.getElementById("errorEmail");
			errorEmail.innerHTML= "<span class='rq'>Bạn cần nhập email</span>";
		}else{
			error="";
			errorEmail.innerHTML = "<div></div>";
		}
		
		if(username.length==0){
			error="error";
			errorUsername= document.getElementById("errorUsername");
			errorUsername.innerHTML= "<span class='rq'>Bạn cần nhập tên đăng nhập</span>";
		}else{
			error="";
			errorUsername.innerHTML = "<div></div>";
		}
		
		if(password.length==0){
			error="error";
			errorPassword= document.getElementById("errorPassword");
			errorPassword.innerHTML= "<span class='rq'>Bạn cần nhập mật khẩu</span>";
		}else if(password.length<6){
			error="error";
			errorPassword= document.getElementById("errorPassword");
			errorPassword.innerHTML= "<span class='rq'>Mật khẩu cần ít nhất 6 kí tự</span>";
		}else{
			error="";
			errorPassword.innerHTML = "<div></div>";
		}
		
		if(repass.length==0){
			error="error";
			errorRepass= document.getElementById("errorRepass");
			errorRepass.innerHTML= "<span class='rq'>Bạn cần nhập lại mật khẩu</span>";
		}else if(repass != password || repass.length<6){
			error="error";
			errorRepass= document.getElementById("errorRepass");
			errorRepass.innerHTML= "<span class='rq'>Mật khẩu không trùng khớp</span>";
		}else{
			error="";
			errorRepass.innerHTML = "<div></div>";
		}
		
		
		 if(error.length>0){
			alert(error);
			return;
		}else{
			alert("Gửi đăng ký thành công");
			myForm=document.getElementById("myForm");
			myForm.submit();
		} 
	}
	</script>
	
</head>
<body style="background-image: url('img/bg/bg1.jpg'); background-size: cover;">

		<%
	
	
		String value_hoVaTen = request.getAttribute("value_hoVaTen")+"";
		String value_date = request.getAttribute("value_date")+"";
		String value_phone = request.getAttribute("value_phone")+ "";
		String value_email = request.getAttribute("value_email")+"";
		String value_username = request.getAttribute("value_username")+"";
		String value_password = request.getAttribute("value_password")+"";
		String value_repass = request.getAttribute("value_repass")+"";
		
		value_hoVaTen= (value_hoVaTen.equals("null"))?"":value_hoVaTen;
		value_date=(value_date.equals("null"))?"":value_date;
		value_phone= (value_phone.equals("null"))?"":value_phone;
		value_email= (value_email.equals("null"))?"":value_email;
		value_username= (value_username.equals("null"))?"":value_username;
		value_password= (value_password.equals("null"))?"":value_password;
		value_repass= (value_repass.equals("null"))?"":value_repass;
		
	%> 

	<header class="topbar" >
		<div class="container" data-v-878436c2>
			<div class="row">
				<a class="logo col-3" href="login.jsp">
					<img src="/wsh/img/logo/img_wsh3.ico" alt="biet tuong" width="34"> 
				</a>
				<label class="form-lable col-9 mt-2 text-primary" ><h6> Hoai Bao - Nhat Vy</h3></label>
			</div>
		</div>
	</header>
	<main>
		<div class="container bg-white" >
			<form action="registerController" id="myForm" method="post"	>
				<h2 style="text-align: center">
					<font style="vertical-align: center;">
						<font style="vertical-align: center;">Đăng ký</font>
					</font>
				</h2>
				<div class="mb-3">
					<a class="logo col-3" href="">
						<img src="/wsh/img/logo/img_name.ico" alt="biet tuong" width="20"> 
					</a>
					<label for="exampleInputEmail1 col-9" class="form-label">Họ và tên
						<span class="rq">*</span>	
					</label> 
					<input class="form-control" type="text" placeholder="Họ và tên" 
							 id="idHoVaTen" name="hoVaTen" value="<%=value_hoVaTen %>" required>
					<div id="errorHoVaTen"></div>
				</div>
				<div class="mb-3">
					<a class="logo col-3" href="">
						<img src="/wsh/img/logo/img_date.ico" alt="biet tuong" width="20"> 
					</a>
					<label for="exampleInputEmail1" class="form-label">Năm sinh
						<span class="rq">*</span>
					</label> 
					<input class="form-control" type="text" placeholder="Năm sinh" 
							id="idDate" name="date" value="<%=value_date%>" required>
					
					<div id="errorDate"></div>
				</div>
				<div class="mb-3">
					<a class="logo col-3" href="">
						<img src="/wsh/img/logo/img_phone.ico" alt="biet tuong" width="20"> 
					</a>
					<label for="exampleInputEmail1" class="form-label">Số điện thoại
						<span class="rq">*</span>
					</label> 
					<input class="form-control" type="text" placeholder="Số điện thoại" 
							id="idPhone" name="phone" value="<%=value_phone%>" required>
					
					<div id="errorPhone"></div>
				</div>
				<div class="mb-3">
					<a class="logo col-3" href="">
						<img src="/wsh/img/logo/img_email.ico" alt="biet tuong" width="20"> 
					</a>
					<label for="exampleInputEmail1" class="form-label">Email
						<span class="rq">*</span>
					</label> 
					<input class="form-control" type="email" placeholder="Email" 
							id="idEmail" name="email" value="<%=value_email%>" required>
					
					<div id="errorEmail"></div>
				</div>
				<div class="mb-3">
					<a class="logo col-3" href="">
						<img src="/wsh/img/logo/img_acc.ico" alt="biet tuong" width="20"> 
					</a>
					<label for="exampleInputEmail1" class="form-label">Tên đăng nhập
						<span class="rq">*</span>
					</label> 
					<input class="form-control" type="text" placeholder="Tên đăng nhập" 
							id="idUsername" name="username" value="<%=value_username%>" required>
					
					<div id="errorUsername"></div>
				</div>
				<div class="mb-3">
					<a class="logo col-3" href="">
						<img src="/wsh/img/logo/img_pw.ico" alt="biet tuong" width="20"> 
					</a>
					<label for="exampleInputEmail1" class="form-label">Mật khẩu
						<span class="rq">*</span>
					</label> 
					<input class="form-control" type="password" placeholder="Mật khẩu" 
							id="idPassword" name="password" value="<%=value_password%>" required>
					
					<div id="errorPassword"></div>
				</div>
				<div class="mb-3">
					<a class="logo col-3" href="">
						<img src="/wsh/img/logo/img_repw.ico" alt="biet tuong" width="20"> 
					</a>
					<label for="exampleInputEmail1" class="form-label">Nhập lại mật khẩu
						<span class="rq">*</span>
					</label> 
					<input class="form-control" type="password" placeholder="Nhập lại mật khẩu" 
							id="idRepass" name="repass" value="<%=value_repass%>" required>
					
					<div id="errorRepass"></div>
				</div>
				<button type="submit" id="submit" class="btn btn-primary " onclick="mySubmit()">
					<font style="vertical-align: inherit;">
						<font style="vertical-align: inherit;">Đăng ký ngay</font>
					</font>				
				</button>	
			</form>
		</div>
		<script src="validate.js"></script>
	</main>
</body>
</html>