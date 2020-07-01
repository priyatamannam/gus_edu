<?php
	require_once("config.php");

	$enquiries = mysqli_query($conn, "SELECT eid, first_name, last_name, email, enq_comment, enquired_on FROM enquiries WHERE first_name != ''");


?>

<html>
	<head>
		<title>Gus Education</title>

		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="css/styles.css" rel="stylesheet" type="text/css">


	</head>

	<body>

		<div class="container">
			<div class="row">
				
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 banner-img"></div>

				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

					<h3>Enquiries</h3>

					<div class="panel-group" id="enquiries_accordion">

						<?php
						if(mysqli_num_rows($enquiries) > 0)
						{
							$sno = 1;
							while($row = mysqli_fetch_array($enquiries))
							{
						?>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#enquiries_accordion" href="#enquiry<?php echo $sno;?>"><?php echo $row["first_name"]." ".$row["last_name"];?></a>
								</h4>
							</div>

							<div id="enquiry<?php echo $sno;?>" class="panel-collapse collapse <?php if($sno == 1){?>in<?php }?>">
								<div class="panel-body">
									<div><?php echo $row["enq_comment"];?></div>
									<div>Enquired On: <?php echo date("d-M-Y H:i:s",strtotime($row["enquired_on"]));?></div>
								</div>
							</div>
						</div>
						<?php
								$sno++;
							}
						}
						else
						{
						?>
						<div class="text-danger">No Enquiries Made Yet</div>
						<?php
						}
						?>
					</div> 
				</div>
			</div>
		</div>

		<script src="js/jquery-3.5.1.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>