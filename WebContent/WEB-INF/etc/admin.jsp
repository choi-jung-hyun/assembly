<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
#nav_menu * {
	margin: 0 auto;
}

.fixedMenuNav {
	background: #007bff;
}

.fixedMenu .nav-link {
	color: #fff;
	font-weight: bold;
}
</style>
</head>
<body id="page-top">
	<!-- ================================================= 고정메뉴 ================================================= -->
	<div class="container-fluid fixedMenu" id=nav_menu>
		<div class="row fixedMenuNav p-2">
			<div class="col-lg-2 col-md-3 col-sm-12 col-xs-12 d-none d-md-block"></div>
			<div class="col-lg-8 col-md-6col-sm-12 col-xs-12">
				<ul class="nav justify-content-center">
					<li class="nav-item"><a class="nav-link active" href="goMain.win">메인페이지</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">학습하기</a></li>
					<li class="nav-item"><a class="nav-link" href="goInfo.win">사이트 소개</a></li>
					<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="list.board01?currentPage=1">자유게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="#">문의하기</a></li>
					<c:if test="${type==4}">
						<li class="nav-item"><a class="nav-link" href="#">관리자 게시판</a></li>
					</c:if>
				</ul>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-12 col-xs-12 d-none d-md-block"></div>
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

	<!-- ================================================= Page Wrapper ================================================= -->
	<div id="wrapper">

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Sidebar Toggle (Topbar) -->
			<button id="sidebarToggleTop"
				class="btn btn-link d-md-none rounded-circle mr-3">
				<i class="fa fa-bars"></i>
			</button>

			<!-- Topbar Search -->
			<form
				class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<div class="input-group-append"></div>
				</div>
			</form>

			<!-- Topbar Navbar -->
			<ul class="navbar-nav ml-auto">

				<!-- Nav Item - Search Dropdown (Visible Only XS) -->
				<li class="nav-item dropdown no-arrow d-sm-none"><a
					class="nav-link dropdown-toggle" href="#" id="searchDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
				</a> <!-- Dropdown - Messages -->
					<div
						class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
						aria-labelledby="searchDropdown">
						<form class="form-inline mr-auto w-100 navbar-search">
							<div class="input-group">
								<input type="text" class="form-control bg-light border-0 small"
									placeholder="Search for..." aria-label="Search"
									aria-describedby="basic-addon2">
								<div class="input-group-append">
									<button class="btn btn-primary" type="button">
										<i class="fas fa-search fa-sm"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>


				<!-- Dropdown - Alerts -->
				<div
					class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
					aria-labelledby="alertsDropdown">
					<h6 class="dropdown-header">Alerts Center</h6>
					<a class="dropdown-item d-flex align-items-center" href="#">
						<div class="mr-3">
							<div class="icon-circle bg-primary">
								<i class="fas fa-file-alt text-white"></i>
							</div>
						</div>
						<div>
							<div class="small text-gray-500">December 12, 2019</div>
							<span class="font-weight-bold">A new monthly report is
								ready to download!</span>
						</div>
					</a> <a class="dropdown-item d-flex align-items-center" href="#">
						<div class="mr-3">
							<div class="icon-circle bg-success">
								<i class="fas fa-donate text-white"></i>
							</div>
						</div>
						<div>
							<div class="small text-gray-500">December 7, 2019</div>
							$290.29 has been deposited into your account!
						</div>
					</a> <a class="dropdown-item d-flex align-items-center" href="#">
						<div class="mr-3">
							<div class="icon-circle bg-warning">
								<i class="fas fa-exclamation-triangle text-white"></i>
							</div>
						</div>
						<div>
							<div class="small text-gray-500">December 2, 2019</div>
							Spending Alert: We've noticed unusually high spending for your
							account.
						</div>
					</a> <a class="dropdown-item text-center small text-gray-500" href="#">Show
						All Alerts</a>
				</div>

				<!-- Nav Item - Messages -->
				<li class="nav-item dropdown no-arrow mx-1"><a
					class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> </a> <!-- Dropdown - Messages -->
					<div
						class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="messagesDropdown">
						<h6 class="dropdown-header">Message Center</h6>
						<a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
								<div class="status-indicator bg-success"></div>
							</div>
							<div class="font-weight-bold">
								<div class="text-truncate">Hi there! I am wondering if you
									can help me with a problem I've been having.</div>
								<div class="small text-gray-500">Emily Fowler · 58m</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
								<div class="status-indicator"></div>
							</div>
							<div>
								<div class="text-truncate">I have the photos that you
									ordered last month, how would you like them sent to you?</div>
								<div class="small text-gray-500">Jae Chun · 1d</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
								<div class="status-indicator bg-warning"></div>
							</div>
							<div>
								<div class="text-truncate">Last month's report looks
									great, I am very happy with the progress so far, keep up the
									good work!</div>
								<div class="small text-gray-500">Morgan Alvarez · 2d</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
								<div class="status-indicator bg-success"></div>
							</div>
							<div>
								<div class="text-truncate">Am I a good boy? The reason I
									ask is because someone told me that people say this to all
									dogs, even if they aren't good...</div>
								<div class="small text-gray-500">Chicken the Dog · 2w</div>
							</div>
						</a> <a class="dropdown-item text-center small text-gray-500" href="#">Read
							More Messages</a>
					</div></li>

				<div class="topbar-divider d-none d-sm-block"></div>

				<!-- Nav Item - User Information -->
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> </a> <!-- Dropdown - User Information -->
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">
						<a class="dropdown-item" href="#"> <i
							class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
							Log
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#" data-toggle="modal"
							data-target="#logoutModal"> <i
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							Logout
						</a>
					</div></li>

			</ul>

			</nav>
			<!-- End of Topbar -->

			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Page Heading -->
				<div
					class="d-sm-flex align-items-center justify-content-between mb-4">
					<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>

				</div>

				<!-- Content Row -->
				<div class="row">

					<!-- ====================================== 금일 방문자 수 ====================================== -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-primary shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-primary text-uppercase mb-1">금일의
											방문자</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800"
											id=visitCount>${visitCount }</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-calendar fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-success shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-success text-uppercase mb-1">학습
											프로그램 1</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Earnings (Monthly) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-info shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-info text-uppercase mb-1">학습
											프로그램 2</div>
										<div class="row no-gutters align-items-center">
											<div class="col-auto">
												<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
											</div>
											<div class="col">
												<div class="progress progress-sm mr-2">
													<div class="progress-bar bg-info" role="progressbar"
														style="width: 50%" aria-valuenow="50" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Pending Requests Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-left-warning shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div
											class="text-xs font-weight-bold text-warning text-uppercase mb-1">학습
											프로그램 3</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-comments fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Content Row -->

				<div class="row">

					<!-- Area Chart -->
					<div class="col-xl-8 col-lg-7">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">일일 방문자 수</h6>
								<div class="dropdown no-arrow">
									<a class="dropdown-toggle" href="#" role="button"
										id="dropdownMenuLink" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> <i
										class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
										aria-labelledby="dropdownMenuLink">
										<div class="dropdown-header">Dropdown Header:</div>
										<a class="dropdown-item" href="#">Action</a> <a
											class="dropdown-item" href="#">Another action</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#">Something else here</a>
									</div>
								</div>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-area">
									<canvas id="myAreaChart"></canvas>
								</div>
							</div>
						</div>
					</div>

					<!-- Pie Chart -->
					<div class="col-xl-4 col-lg-5">
						<div class="card shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">성별 누적 통계</h6>
								<div class="dropdown no-arrow">
									<a class="dropdown-toggle" href="#" role="button"
										id="dropdownMenuLink" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> <i
										class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
										aria-labelledby="dropdownMenuLink">
										<div class="dropdown-header">Dropdown Header:</div>
										<a class="dropdown-item" href="#">Action</a> <a
											class="dropdown-item" href="#">Another action</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#">Something else here</a>
									</div>
								</div>
							</div>
							<!-- Card Body -->
							<div class="card-body">
								<div class="chart-pie pt-4 pb-2">
									<canvas id="myPieChart"></canvas>
								</div>
								<div class="mt-4 text-center small">
									<span class="mr-2"> <i
										class="fas fa-circle text-primary"></i> 남성
									</span> <span class="mr-2"> <i
										class="fas fa-circle text-success"></i> 여성
									</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
										Referral
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Content Row -->
				<div class="row">

					<!-- Content Column -->
					<div class="col-lg-6 mb-4">

						<!-- Project Card Example -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">연령대별 방문자 수</h6>
							</div>
							<div class="card-body">
								<h4 class="small font-weight-bold">
									Server Migration <span class="float-right">20%</span>
								</h4>
								<div class="progress mb-4">
									<div class="progress-bar bg-danger" role="progressbar"
										style="width: 20%" aria-valuenow="20" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								<h4 class="small font-weight-bold">
									Sales Tracking <span class="float-right">40%</span>
								</h4>
								<div class="progress mb-4">
									<div class="progress-bar bg-warning" role="progressbar"
										style="width: 40%" aria-valuenow="40" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								<h4 class="small font-weight-bold">
									Customer Database <span class="float-right">60%</span>
								</h4>
								<div class="progress mb-4">
									<div class="progress-bar" role="progressbar" style="width: 60%"
										aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
								<h4 class="small font-weight-bold">
									Payout Details <span class="float-right">80%</span>
								</h4>
								<div class="progress mb-4">
									<div class="progress-bar bg-info" role="progressbar"
										style="width: 80%" aria-valuenow="80" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								<h4 class="small font-weight-bold">
									Account Setup <span class="float-right">Complete!</span>
								</h4>
								<div class="progress">
									<div class="progress-bar bg-success" role="progressbar"
										style="width: 100%" aria-valuenow="100" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
						</div>

						<!-- Color System -->
						<div class="row">
							<div class="col-lg-6 mb-4">
								<div class="card bg-primary text-white shadow">
									<div class="card-body">
										Primary
										<div class="text-white-50 small">#4e73df</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 mb-4">
								<div class="card bg-success text-white shadow">
									<div class="card-body">
										Success
										<div class="text-white-50 small">#1cc88a</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 mb-4">
								<div class="card bg-info text-white shadow">
									<div class="card-body">
										Info
										<div class="text-white-50 small">#36b9cc</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 mb-4">
								<div class="card bg-warning text-white shadow">
									<div class="card-body">
										Warning
										<div class="text-white-50 small">#f6c23e</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 mb-4">
								<div class="card bg-danger text-white shadow">
									<div class="card-body">
										Danger
										<div class="text-white-50 small">#e74a3b</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 mb-4">
								<div class="card bg-secondary text-white shadow">
									<div class="card-body">
										Secondary
										<div class="text-white-50 small">#858796</div>
									</div>
								</div>
							</div>
						</div>

					</div>

					<div class="col-lg-6 mb-4">

						<!-- Illustrations -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">답변 게시판</h6>
							</div>
							<div class="card-body">
								<div class="text-center">
									<img class="img-fluid px-3 px-sm-4 mt-3 mb-4"
										style="width: 25rem;" src="img/undraw_posting_photo.svg"
										alt="">
								</div>
							</div>
						</div>

						<!-- Approach -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">자유 게시판</h6>
							</div>
							<div class="card-body"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin-2.min.js"></script>

		<!-- Page level plugins -->
		<script src="vendor/chart.js/Chart.min.js"></script>

		<!-- Page level custom scripts -->
		<script>
			Chart.defaults.global.defaultFontFamily = 'Nunito',
					'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
			Chart.defaults.global.defaultFontColor = '#858796';

			function number_format(number, decimals, dec_point, thousands_sep) {
				// *     example: number_format(1234.56, 2, ',', ' ');
				// *     return: '1 234,56'
				number = (number + '').replace(',', '').replace(' ', '');
				var n = !isFinite(+number) ? 0 : +number, prec = !isFinite(+decimals) ? 0
						: Math.abs(decimals), sep = (typeof thousands_sep === 'undefined') ? ','
						: thousands_sep, dec = (typeof dec_point === 'undefined') ? '.'
						: dec_point, s = '', toFixedFix = function(n, prec) {
					var k = Math.pow(10, prec);
					return '' + Math.round(n * k) / k;
				};
				// Fix for IE parseFloat(0.55).toFixed(0) = 0;
				s = (prec ? toFixedFix(n, prec) : '' + Math.round(n))
						.split('.');
				if (s[0].length > 3) {
					s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
				}
				if ((s[1] || '').length < prec) {
					s[1] = s[1] || '';
					s[1] += new Array(prec - s[1].length + 1).join('0');
				}
				return s.join(dec);
			}

			// =============================  차트_그래프 (myAreaChart)  =============================
			var ctx = document.getElementById("myAreaChart");
			var myLineChart = new Chart(
					ctx,
					{      			 						
            		    type : 'line',
						data : {
							labels : [ 	
								<c:forEach var="temp" items="${vdto }">
								"${temp.visitDate }",
							   </c:forEach>	
									],
							datasets : [ {
								label : "Earnings",
								lineTension : 0.3,
								backgroundColor : "rgba(78, 115, 223, 0.05)",
								borderColor : "rgba(78, 115, 223, 1)",
								pointRadius : 3,
								pointBackgroundColor : "rgba(78, 115, 223, 1)",
								pointBorderColor : "rgba(78, 115, 223, 1)",
								pointHoverRadius : 3,
								pointHoverBackgroundColor : "rgba(78, 115, 223, 1)",
								pointHoverBorderColor : "rgba(78, 115, 223, 1)",
								pointHitRadius : 10,
								pointBorderWidth : 2,
								data : [
									<c:forEach var="temp" items="${vdto }">
									${temp.visitCount },
								   </c:forEach>
									],
							} ],
						},
						options : {
							maintainAspectRatio : false,
							layout : {
								padding : {
									left : 10,
									right : 25,
									top : 25,
									bottom : 0
								}
							},
							scales : {
								xAxes : [ {
									time : {
										unit : 'date'
									},
									gridLines : {
										display : false,
										drawBorder : false
									},
									ticks : {
										maxTicksLimit : 7
									}
								} ],
								yAxes : [ {
									ticks : {
										maxTicksLimit : 5,
										padding : 10,
										// Include a dollar sign in the ticks
										callback : function(value, index,
												values) {
											return number_format(value) + '명';
										}
									},
									gridLines : {
										color : "rgb(234, 236, 244)",
										zeroLineColor : "rgb(234, 236, 244)",
										drawBorder : false,
										borderDash : [ 2 ],
										zeroLineBorderDash : [ 2 ]
									}
								} ],
							},
							legend : {
								display : false
							},
							tooltips : {
								backgroundColor : "rgb(255,255,255)",
								bodyFontColor : "#858796",
								titleMarginBottom : 10,
								titleFontColor : '#6e707e',
								titleFontSize : 14,
								borderColor : '#dddfeb',
								borderWidth : 1,
								xPadding : 15,
								yPadding : 15,
								displayColors : false,
								intersect : false,
								mode : 'index',
								caretPadding : 10,
								callbacks : {
									label : function(tooltipItem, chart) {
										var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
												|| '';
										return "방문자 수 : "
										+ number_format(tooltipItem.yLabel) + '명';
									}
								}
							}
						}
					});

			// Set new default font family and font color to mimic Bootstrap's default styling
					Chart.defaults.global.defaultFontFamily = 'Nunito',
					'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
			Chart.defaults.global.defaultFontColor = '#858796';

// =============================  차트_도넛 (myPieChart)  =============================
			var ctx = document.getElementById("myPieChart");
			var myPieChart = new Chart(ctx, {
				type : 'doughnut',
				data : {
					labels : [ "남성", "여성" ],
					datasets : [ {
						data : [ 55, 15 ],
						backgroundColor : [ '#4e73df', '#36b9cc' ],
						hoverBackgroundColor : [ '#2e59d9', '#2c9faf' ],
						hoverBorderColor : "rgba(234, 236, 244, 1)",
					} ],
				},
				options : {
					maintainAspectRatio : false,
					tooltips : {
						backgroundColor : "rgb(255,255,255)",
						bodyFontColor : "#858796",
						borderColor : '#dddfeb',
						borderWidth : 1,
						xPadding : 15,
						yPadding : 15,
						displayColors : false,
						caretPadding : 10,
					},
					legend : {
						display : false
					},
					cutoutPercentage : 80,
				},
			});
		</script>
</body>

</html>