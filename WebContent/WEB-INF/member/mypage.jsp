<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<style>
* {
	margin: 0 auto;
}

.fixedMenu {
	position: fixed;
	background: #fff;
	z-index: 999;
}

.fixedMenuNav {
	background: #007bff;
}

.fixedMenu .nav-link {
	color: #fff;
	font-weight: bold;
}

.container {
	padding-top: 150px;
}

#pwChange_btn {
	width: 200px; /* 원하는 너비설정 */
	padding: .8em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border: 1px solid #999;
	border-radius: 10px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

#age {
	width: 150px; /* 원하는 너비설정 */
	padding: .8em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border: 1px solid #999;
	border-radius: 10px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

#nickname {
	width: 150px; /* 원하는 너비설정 */
	padding: .8em .5em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border: 1px solid #999;
	border-radius: 10px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

td {
	font-size: 1.3em;
	font-weight: 600;
	color: #819FF7;
}

input[type=button]:hover {
	background: #6133FF;
	color: white;
}

input[type=submit]:hover {
	background: #6133FF;
	color: white;
}
</style>
<script>
	$(function() {
		$("#pwChange_btn").on("click", function() {
			// 				location.href="getPw.me";
			open("pwChangeGo.me", "_brank", "width=600px,height=500px")
		})
		$("#back_btn").on("click", function() {
			location.href = "main.me";
		})
		$("#modify_btn").on("click", function() {
			$("#mpForm").submit();
		})
	})
</script>
</head>
<body>

	<!-- 고정메뉴 -->
	<div class="container-fluid fixedMenu">
		<div class="row fixedMenuNav p-2">
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 d-none d-md-block"></div>
			<div class="col-lg-6 col-md-6col-sm-12 col-xs-12">
				<ul class="nav justify-content-center">
					<li class="nav-item"><a class="nav-link active" href="#">메인페이지</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">메뉴1</a></li>
					<li class="nav-item"><a class="nav-link" href="#">메뉴2</a></li>
					<li class="nav-item"><a class="nav-link" href="#">메뉴3</a></li>
				</ul>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 d-none d-md-block"></div>
		</div>
		<div class="row p-1">
			<div class="col-lg-4 col-md-3 col-sm-12 col-xs-12 d-none d-md-block"></div>
			<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
				<div class="input-group mt-3 mb-3">
					<input type="search" class="form-control" placeholder="검색어를 입력하세요"
						aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button"
							id="button-addon2">찾아보기</button>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-3 col-sm-12 col-xs-12 d-none d-md-block"></div>
		</div>
	</div>


	<div class="container">
		<form method="post" action="modify.me" id="mpForm">
			<div class="row">
				<div class="col-lg-8">

					<table class="table "
						style="border: 1px solid #dddddd; border-radius: 1em; border-collapse: separate">
						<tr>
							<td colspan="3" class="btn-primary"
								style="text-align: center; vertical-align: middle; border-radius: 2em"><h4>마이
									페이지 (회원 정보 수정)</h4>
						</tr>
						<c:forEach var="i" items="${ list}">

							<tbody>

								<tr class="pt-4">
									<td
										style="width: 200px; height: 80px; text-align: center; vertical-align: middle"><span>이름</span>
									<td colspan="2"
										style="text-align: left; vertical-align: middle"><span>${i.name }</span>
								</tr>
								<tr class="pt-4">
									<td
										style="width: 200px; height: 80px; text-align: center; vertical-align: middle"><span>아이디(이메일)</span>
									<td colspan="2"
										style="text-align: left; vertical-align: middle"><span>${i.email }</span>
								</tr>
								<tr class="pt-4">
									<td
										style="width: 200px; height: 80px; text-align: center; vertical-align: middle"><span>비밀번호</span>
									<td colspan="2"><input type="button"
										class=" btn btn-primary float-left" id="pwChange_btn"
										value="비밀번호 변경하기">
								</tr>


								<tr class="pt-4">
									<td
										style="width: 200px; height: 80px; text-align: center; vertical-align: middle"><span>닉네임</span>
									<td colspan="2"
										style="text-align: center; vertical-align: middle"><span><input
											class="form-control" type="text" style="width: 200px"
											id="nickname" name=nickname value="${i.nickname}"
											maxlength="6"></span>
								</tr>
								<tr class="pt-4">
									<td
										style="width: 200px; height: 80px; text-align: center; vertical-align: middle"><span>나이</span>
									<td colspan="2"
										style="text-align: left; vertical-align: middle">${i.age }
										대
								</tr>
								<tr class="pt-4">
									<td
										style="width: 200px; height: 80px; text-align: center; vertical-align: middle"><span>성별</span>
									<td style="text-align: left; vertical-align: middle"><span><input
											type="radio" name="gender" value="M">남자<input
											class=" ml-3" type="radio" name="gender" value="F">여자</span>
									<td>
								</tr>

								<tr class="pt-4">

									<td style="text-align: center" colspan="3"><input
										class="btn btn-primary float-center" style="width: 10rem"
										id="modify_btn" type="submit" value="수정"><input
										class="btn btn-primary float-center ml-1" style="width: 10rem"
										id="back_btn" type="button" value="뒤로가기">
								</tr>
							</tbody>

						</c:forEach>
					</table>
				</div>
			</div>
		</form>
	</div>
</body>
</html>