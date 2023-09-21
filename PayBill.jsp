<html>
	<head><title>Pay Bills</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	</head>
	<body>
		<form action="#">
		
		<!-- Biller Category -->
			<h2 class="billCatHead">Biller Category</h2>
			<select name="Biller_Category" onchange='this.form.submit()' class="billCatSelect">
			<option value="Plase Select">Please Select</option>
			<option value="DTH">DTH</option>
			<option value="Electricity">Electricity</option>
			<option value="Gas">Gas</option>
			<option value="Mobile_Pospaid">Mobile Pospaid</option>
			</select>
			
			<!-- Biller Category == DTH = Details -->
			<%
				String Bill_Cat=request.getParameter("Biller_Category");
				if(Bill_Cat !=null && (!Bill_Cat.equals("Electricity")) && (!Bill_Cat.equals("Gas")) && (!Bill_Cat.equals("Mobile_Pospaid"))){
				%>
				<h2 class="billerHead">Biller</h2>
					<select name="Biller_DTH" onchange='this.form.submit()' class="billCatSelect">
					<option value="Please Select">Please Select</option>
					<option value="Dish_TV">Dish TV</option>
					<option value="Sun_Direct_TV">Sun Direct TV</option>
					<option value="Tata_Sky">Tata Sky</option>
					<option value="Videocon_D2H">Videocon D2H</option>
					</select>
				
				<% 
				}
			%> 
			<!--Select to any option in DTH = Biller  -->
			<%
				String Bill_DTH=request.getParameter("Biller_DTH");
				if(Bill_DTH !=null){
				%>
				<h2 class="billCatHead">My Detail</h2>
					<input type="tel" name="" placeholder="+91" id="inputtag">
					<input type="email" name="" placeholder="Enter Email" id="inputtag">
				<h2 class="billCatHead">Consumer Detail</h2>	
				<p id="text">Customer ID / Registered Telephone No</p> <input type="tel" name="" id="inputtag">
				<p id="text">Payment Channel</p> <input type="text" name="" value="Internet" readonly="Internet" id="inputtag">
				<p id="text">Payment Modes</p> <select name="mode" id="inputtag">
								<option value="Select Payment Mode">--Select Payment Mode--</option>
								<option value="Internet Banking">Internet Banking</option>
								</select>
				<p id="text">Quick Pay Amount</p> <input type="text" name="" placeholder="Enter Amount" id="inputtag">
				<br><br>	
				<p id="text">CCF + Tax(es)</p> <input type="text" name="" placeholder="CCF + Tax(es)" id="inputtag">				
				<p id="text">Net Payable Amount</p> <input type="text" name="" placeholder="Amount" id="inputtag">
				<input type="button" value="QUICK PAY" id="btn">
				<% } %>
			
			<!--Biller Category select Electricity to = Biller -->
			<%
				if(Bill_Cat != null && Bill_Cat.equals("Electricity")){
				%>
				<h2 class="billerHead">Biller</h2>
					<select name="Biller_Electricity" onchange='this.form.submit()' class="billCatSelect">
					<option value="Please Select">Please Select</option>
					<option value="yamuna">BSES yamuna power limited</option>
					<option value="rajdhani">BSES rajdhani power limited</option>
					</select>
				<% } %>
				
				<!--Select to any option in Electricity = Details  -->
			<%
				String Bill_Ele=request.getParameter("Biller_Electricity");
				if(Bill_Ele !=null){
				%>
				<h2 class="billCatHead">My Detail</h2>
					<input type="tel" name="" placeholder="+91" id="inputtag">
					<input type="email" name="" placeholder="Enter Email" id="inputtag">
				<h2 class="billCatHead">Consumer Detail</h2>
				<p id="text">CA Number</p> <input type="text" name="" id="inputtag">
				<input type="button" value="FETCH BILL" id="btn">
				<% } %>
				
				<!--Biller Category select Gas to = Biller -->
				<%
				if(Bill_Cat != null && Bill_Cat.equals("Gas")){
				%>
				<h2 class="billCatHead">Biller</h2>
					<select name="Biller_Gas" onchange='this.form.submit()' class="billCatSelect">
					<option value="Please Select">Please Select</option>
					<option value="Aavantika">Aavantika Gas Ltd.</option>
					<option value="Charotar">Charotar Gas Sahakari Mandali Ltd.</option>
					<option value="Oil-Adani">Indian Oil-Adani Gas Private Limited</option>
					<option value="Indraprastha">Indraprastha Gas</option>
					</select>
				<% } %>
				
				<!--Select to any option in  = Details  -->
			<%
				String Bill_Gas=request.getParameter("Biller_Gas");
				if(Bill_Gas !=null){
				%>
				<h2 class="billCatHead">My Detail</h2>
					<input type="tel" name="" placeholder="+91" id="inputtag">
					<input type="email" name="" placeholder="Enter Email" id="inputtag">
				<h2 class="billCatHead">Consumer Detail</h2>
				<p id="text">Customer Number</p> <input type="text" name="" id="inputtag">
				<input type="button" value="FETCH BILL" id="btn">
				<% } %>
				
				<!--Biller Category select Moblie Postpaid to = Biller -->
				<%
				if(Bill_Cat != null && Bill_Cat.equals("Mobile_Pospaid")){
				%>
				<h2 class="billCatHead">Biller</h2>
					<select name="Biller_Mobile" onchange='this.form.submit()' class="billCatSelect">
					<option value="Please Select">Please Select</option>
					<option value="Airtel">Airtel Postpaid</option>
					<option value="Jio">Jio Postpaid</option>
					<option value="Idea">Idea Postpaid</option>
					<option value="Vodafone">Vodafone Postpaid</option>
					<option value="Tata">Tata Docomo CDMA Moblie Postpaid</option>
					</select>
				<% } %>
				
				<!--Select to any option in Moblie Postpaid = Biller  -->
			<%
				String Bill_Moblie=request.getParameter("Biller_Mobile");
				if(Bill_Moblie !=null){
				%>
				<h2 class="billCatHead">My Detail</h2>
					<input type="tel" name="" placeholder="+91" id="inputtag">
					<input type="email" name="" placeholder="Enter Email" id="inputtag">
				<h2 class="billCatHead">Consumer Detail</h2>	
				<p id="text">Moblie Number</p> <input type="tel" name="" id="inputtag">
				<p id="text">Payment Channel</p> <input type="text" name="" value="Internet" readonly="Internet" id="inputtag">
				<p id="text">Payment Modes</p> <select name="mode" id="inputtag">
								<option value="Select Payment Mode">--Select Payment Mode--</option>
								<option value="Internet Banking">Internet Banking</option>
								</select>
				<p id="text">Quick Pay Amount</p> <input type="text" name="" placeholder="Enter Amount" id="inputtag">
				<br><br>	
				<p id="text">CCF + Tax(es)</p> <input type="text" name="" placeholder="CCF + Tax(es)" id="inputtag">				
				<p id="text">Net Payable Amount</p> <input type="text" name="" placeholder="Amount" id="inputtag">
				<input type="button" value="QUICK PAY" id="btn">
				<% } %>
		</form>		
	</body>
</html>