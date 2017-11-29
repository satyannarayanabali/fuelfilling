<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<title>Fuel Filling</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body class="bodyClass">

	<table style="width: 700px; height: 400px; background-color: #2176A8;">
		<tr>
			<td><img src="/images//ibotrics.jpeg"></td>
		</tr>
		<tr>
			<td width="200px"></td>
			<td width="200px"></td>
			<td align="right" width="200px"><select id="sessionId">
					<option value="0">Select</option>
					<option value="1">Fuel Filling - 01</option>
					<option value="2">Fuel Filling - 02</option>
					<option value="3">Fuel Filling - 03</option>
					<option value="4">Fuel Filling - 04</option>

			</select></td>
			<td width="100px"></td>
		</tr>
		<tr>
			<td width="200px"></td>
			<td colspan="2" align="center">
				<h1>
					<label style="color: white; font-weight: bold;">Fuel
						Filling</label>
				</h1>
			</td>
		</tr>


		<tr>
			<td></td>
			<td colspan="2" align="center">
				<div id="divFuelFilling1">
					<jsp:include page="/WEB-INF/jsp/fuelfilling1.jsp"></jsp:include>
				</div>
				<div id="divFuelFilling2">
					<jsp:include page="/WEB-INF/jsp/fuelfilling2.jsp"></jsp:include>
				</div>
				<div id="divFuelFilling3">
					<jsp:include page="/WEB-INF/jsp/fuelfilling3.jsp"></jsp:include>
				</div>
				<div id="divFuelFilling4">
					<jsp:include page="/WEB-INF/jsp/fuelfilling4.jsp"></jsp:include>
				</div>
			</td>
			<td></td>
		</tr>
	</table>

</body>
</html>
<script>
$("#divFuelFilling1").hide();
$("#divFuelFilling2").hide();
$("#divFuelFilling3").hide();
$("#divFuelFilling4").hide();

	$(function() {
		$("#sessionId").change(function() {
			var selectedVal = $("#sessionId").val();

			alert(selectedVal);
			var formData = {

			}

			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "/fuelFilling"+selectedVal,
				dataType : 'json',
				success : function(response) {
					$("#divFuelFilling"+selectedVal).html(response);
					$("#divFuelFilling"+selectedVal).show();
				}
			});

		});
	});
</script>