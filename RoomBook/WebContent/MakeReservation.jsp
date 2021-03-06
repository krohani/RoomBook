<!DOCTYPE html>
<html lang="en" class="no-js">
<%@ taglib prefix="tl" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>RoomBook - Let's book a room, shall we....</title>
    <meta name="description" content="Great theme for creative people">
    <!-- Responsive helper -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Apple devices -->
    <link rel="apple-touch-icon-precomposed" href="img/favicon/favicon-apple.png" />
    <!-- 152x152 -->
    <link rel="icon" href="img/favicon/favicon.png">
    <!-- 32x32 or 64x64 -->

    <!-- For IE -->
    <!--[if IE]><link rel="shortcut icon" href="img/favicon/favicon.ico"><![endif]-->
    <!-- 16x16 -->

    <!-- For Mobile Windows -->
    <meta name="msapplication-TileColor" content="#D83434">
    <meta name="msapplication-TileImage" content="img/favicon/favicon.png">
    <!-- 32x32 or 64x64 -->

    <!-- Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.css">
    <link rel="stylesheet" href="css/screen.css">

    <script src="js/modernizr.js"></script>
</head>

<body>
    <div id="home" class="boxed-view">
        <header class="main-header clearfix">
            <!-- Header Shorcode Area -->
            <div class="header-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-8">
                            <ul class="inline-list uppercase font-small header-meta">
                                <li><i class="icon-312 font-13x"></i> Dallas, Texas 75251</li>
                                <li><i class="icon-274 font-13x"></i> kirk.rohani@gmail.com</li>
                            </ul>
                        </div>

                        <div class="col-md-6 col-sm-4">
                            <ul class="inline-list to-right header-social">
                                <li><a href="#"><i class="icon-528"></i></a>
                                </li>
                                <li><a href="#"><i class="icon-556"></i></a>
                                </li>
                                <li><a href="#"><i class="icon-537"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.header-bar -->

			<jsp:include page="mainmenu.jsp"/>
            <!-- /.nav-bar -->
        </header>
        <!-- /.main-nav -->

        <!-- main content -->
        <section class="box">
        <form id="reservation" method="POST" action="Reservation" >
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="text-dark-blue text-center fancy-heading">
							<h1 class="font-700">Book now</h1>
							<hr class="text-dark-blue size-30 center-me">
							<br>			
						</div>
					</div>
				</div> <!-- /.row -->

				<div class="row booking-nav">
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="text-center nav-step" data-target="1">
							<span></span>
							<h4 class="font-100">01. Booking Info</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="text-center nav-step" data-target="2">
							<span></span>
							<h4 class="font-100">02. Personal Info</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="text-center nav-step" data-target="3">
							<span></span>
							<h4 class="font-100">03. Payment Info</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="text-center nav-step" data-target="4">
							<span></span>
							<h4 class="font-100">04. Complete</h4>
						</div>
					</div>
				</div>
				<div class="booking-slider">
					<ul class="clean-list">
						<li>
							<div class="row">
								<div class="col-md-12">
									<div class="grey booking-info">
										<div class="row">
											<div class="col-md-2 col-sm-3">
												<figure>
													<a href="#" class="zoom-image">
														<img src="img/regular_double.jpeg" alt="">
													</a>
												</figure>
												
											</div>
											<div class="col-md-10 col-sm-9">
												<h3 class="blog-title text-dark-blue font-300"><tl:out value="${selectedRoom.type}"/> <tl:out value="${selectedRoom.bedType}"/> Room # <tl:out value="${selectedRoom.roomNumber}"/> (<span class="text-orange">$<tl:out value="${selectedRoom.price}" />/night</span>)</h3>
												<input type="hidden" name="roomNumber" value="${selectedRoom.roomNumber}" />												
												<ol class="inline-list tag-list font-small">
													<li>
														<a href="#" class="button-sm green text-white hover-green hover-text-white">SPA</a>
													</li>
													<li>
														<a href="#" class="button-sm green text-white hover-green hover-text-white">GYM</a>
													</li>
													<li>
														<a href="#" class="button-sm green text-white hover-green hover-text-white">WI-FI</a>
													</li>
													<li>
														<a href="#" class="button-sm green text-white hover-green hover-text-white">TV</a>
													</li>
													<li>
														<a href="#" class="button-sm green text-white hover-green hover-text-white">Parking</a>
													</li>
												</ol>
												<div class="grey booking-form">
														
														<div class="col-md-2">
															<p class="row no-padding">Check In Date</p>
															<i class="icon-233"></i>
															<input type="text" name="checkinDate" id="check-in" placeholder="Check in" value="06-19-2015">
														</div>
														<div class="col-md-2">
															<p class="row no-padding">Check Out Date</p>
															<i class="icon-233"></i>
															<input type="text" name="checkoutDate" id="check-out" placeholder="Check out" value="06-20-2015">
														</div>
														<div class="col-md-2">
															<p class="row no-padding">Number of Adults</p>
															<i class="icon-201"></i>
															<input type="text" name="numberOfAdults" readonly class="room-select" placeholder="Adults" value="2">
															<ul class="clean-list font-small">
																<li>1</li>
																<li>2</li>
																<li>3</li>
																<li>4</li>
																<li>5+</li>
															</ul>
														</div>
														<div class="col-md-2">
															<p class="row no-padding">Number of Children</p>
															<i class="icon-201"></i>
															<input type="text" name="numberOfChildren" readonly class="room-select" placeholder="Children" value="1">
															<ul class="clean-list font-small">
																<li>1</li>
																<li>2</li>
																<li>3</li>
																<li>4</li>
																<li>5+</li>
															</ul>

														</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<table>
										<tbody>
											<tr>
												<td>Room charges:</td>
												<td class="text-right">30 night x <span class="text-orange">$<tl:out value="${selectedRoom.price }"/></span></td>
											</tr>
											<tr>
												<td>Additional fees:</td>
												<td class="text-right text-orange">$119</td>
											</tr>
											<tr>
												<td class="uppercase font-500 text-green">Grand total:</td>
												<td class="text-right text-orange">$1589</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-md-8">
									<p>
										<b>Terms and Conditions</b>
										These terms and conditions, as may be amended from time to time, apply to all our services directly or indirectly (through distributors) made available online, through any mobile device, by email or by telephone. By accessing, browsing and using our website or any of our applications through whatever platform (hereafter collectively referred to as the "website") and/or by completing a reservation, you acknowledge and agree to have read, understood and agreed to the terms and conditions set out below (including the privacy statement).
									</p>
									<p>
										<label class="radio-fancy">
											<input type="radio" name="test-check">
											<span class="light-blue round-corners"><i class="darken round-corners"></i></span>
											<em>I read and accept the terms and conditions</em>
										</label>
									</p>
									<p class="clearfix">
										<a href="#" class="button-md green to-right hover-dark-green nav-step" data-target="next">Next</a>
									</p>
								</div>
							</div> <!-- /.row -->
						</li>

						<li>
							<div class="row">
								<div class="col-md-6">							
										<p>
											<input type="text" name="firstName" placeholder="First name">
										</p>
										<p>
											<input type="text" name="lastName" placeholder="Last name">
										</p>
										<p>
											<input type="email" name="email" placeholder="E-mail">
										</p>
										<p>
											<input type="tel" name="phone" placeholder="Telephone Number">
										</p>
										<p>
											<textarea name="notes" cols="30" rows="10" placeholder="Notes and special requests"></textarea>
										</p>
								</div>
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-6">
											<i class="icon-201"></i>
											<input type="text" name="earlyCheckIn" class="room-select" placeholder="Early Check In" >
											<ul class="clean-list font-small">
												<li>8:00 a.m.</li>
												<li>9:00 a.m.</li>
												<li>10:00 a.m.</li>
												<li>11:00 a.m.</li>
												<li>12:00 p.m.</li>
												<li>1:00 p.m.</li>
												<li value="No">Regular Check In</li>
											</ul>
										</div>
										<div class="col-md-6">
											<i class="icon-201"></i>
											<input type="text" name="lateCheckOut" class="room-select" placeholder="Late Check Out" >
											  <ul class="clean-list font-small">
												<li>3:00 p.m.</li>
												<li>4:00 p.m.</li>
												<li>5:00 p.m.</li>
												<li>6:00 p.m.</li>
												<li>7:00 p.m.</li>
												<li>8:00 p.m.</li>
												<li>9:00 p.m.</li>
												<li>10:00 p.m.</li>
												<li>11:00 p.m.</li>
												<li value="No">Regular Check Out</li>
											</ul>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-res-radio-button">
											<p>
												<label class="check-fancy white round-corners">
													<b>Yes</b>
													<input type="checkbox" name="smoking">
													<span class="round-corners green"></span>
													<b>No</b>
												</label>
												<span>Smoking Room</span>
											</p>
										</div>
										<br>
										<div class="col-res-radio-button">
											<p>
												<label class="check-fancy white round-corners">
													<b>Yes</b>
													<input name="pets" type="checkbox">
													<span class="round-corners green"></span>
													<b>No</b>
												</label>
												<span>Travel with pets</span>
											</p>
										</div>
										<div class="col-res-radio-button">
											<p>
												<label class="check-fancy white round-corners">
													<b>Yes</b>
													<input name="parking" type="checkbox">
													<span class="round-corners green"></span>
													<b>No</b>
												</label>
												<span>Need parking</span>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<a href="#" class="button-md grey text-dark hover-orange nav-step" data-target="prev">Back</a>
								</div>
								<div class="col-md-6 col-xs-6">
									<p class="text-right">
										<a href="#" class="button-md green hover-dark-green nav-step" data-target="next">Next</a>
									</p>
								</div>
							</div>
						</li>

						<li>
							<div class="row">
								<div class="col-md-6">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia voluptatem laborum magni facilis officiis vel accusantium sed hic cumque quis id a nihil dicta, dignissimos blanditiis tempore quidem tenetur culpa!
									<h3 class="font-300">Select Payment method</h3>
									<ul class="inline-list payment-method">
										<li>
											<label>
												<input type="radio" name="payment">
												<img src="http://placehold.it/64x40" alt="payment method">
											</label>
										</li>
										<li>
											<label>
												<input type="radio" name="payment">
												<img src="http://placehold.it/64x40" alt="payment method">
											</label>
										</li>
										<li>
											<label>
												<input type="radio" name="payment">
												<img src="http://placehold.it/64x40" alt="payment method">
											</label>
										</li>
										<li>
											<label>
												<input type="radio" name="payment">
												<img src="http://placehold.it/64x40" alt="payment method">
											</label>
										</li>
									</ul>
								</div>
								<div class="col-md-6">							
									<p>
										<input type="text" name="f_name" placeholder="Cardholder name">
									</p>
									<p>
										<input type="text" name="l_name" placeholder="Credit Card Number">
									</p>
									<div class="row">
										<div class="col-md-4">
											<p>
												<input type="email" name="email" placeholder="Expiration Date">
											</p>
										</div>
										<div class="col-md-4">
											<p>
												<input type="email" name="email" placeholder="Expiration Year">
											</p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4">
											<p>
												<input type="text" name="tel" placeholder="CVV">
											</p>
										</div>

										<div class="col-md-8">
											<a href="#" class="button-md no-shadow text-blue hover-text-green">Card Identification Number?</a>
										</div>
									</div>
									<br>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<a href="#" class="button-md grey text-dark hover-orange nav-step" data-target="prev">Back</a>
								</div>
								<div class="col-md-6 col-xs-6">
									<p class="text-right">
										<a href="javascript:;" onclick="document.forms['reservation'].submit();return false;" class="button-md green hover-dark-green nav-step" data-target="next">Confirm and Pay</a>
									</p>
								</div>
							</div>
						</li>
						<li></li>
					</ul>
				</div>
			</div> <!-- /.container -->
			</form>
		</section> <!-- /.box -->
        
	<jsp:include page="footer.jsp"/>
	</div><!-- /.boxed-view -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/options.js"></script>
</body>
</html>