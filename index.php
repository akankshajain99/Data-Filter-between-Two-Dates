<?php 
include_once 'db_con.php';
$sql = "SELECT * from details";
$run = mysqli_query($dbc, $sql);

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Data Filter between Two Dates</title>
	<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<section style="padding-top:50px;">
	<div class="container">
		<div class="row">
			<h1>Data Filter between Two Dates</h1>
			<form method="post" action="index.php">
				<br>
				<div class="col-lg-4">
					<div class="form-group">
						<input type="date" name="start_date" class="form-control">
					</div>
				</div><br>
				<div class="col-lg-4">
					<div class="form-group">
						<input type="date" name="end_date" class="form-control">
					</div>
				</div><br>
				<div class="col-lg-4">
					<div class="form-group">
						<input type="submit" name="submit_date" class="btn btn-primary" value="Filter">
					</div>
				</div><br>
			</form>
			
			<?php 
				if (isset($_POST['submit_date'])) {
					
					$start_date = $_POST['start_date'];
					$end_date = $_POST['end_date'];

					$query = mysqli_query($dbc, "SELECT * from details where reg_date between '$start_date' and '$end_date' ");

					if (mysqli_num_rows($query)>0) {?>
						
						

						<div class="col-lg-12">
							<table class="table table-striped">
								<thead>
									<th>Name</th>
									<th>Email</th>
									<th>Date</th>
								</thead>
								<tbody>
								<?php foreach ($query as $value) {?>
									<tr>
										<td><?=$value['name']?></td>
										<td><?=$value['email']?></td>
										<td><?=$value['reg_date']?></td>
									</tr>
								<?php	} ?>
								</tbody>
							</table>
						</div>
							
					<?php	
					}else{

						echo "No data found";
					}

				}else{
			?>

			<div class="col-lg-12">

				<table class="table table-striped">
					<thead>
						<th>#</th>
						<th>Name</th>
						<th>Email</th>
						<th>Reg. Date</th>
					</thead>
					<tbody>
						<?php 
							$i=1;
							while ($row=mysqli_fetch_assoc($run)) {
								
								$name = $row['name'];
								$email = $row['email'];
								$reg_date = $row['reg_date'];
							
					    ?>
						<tr>
							<td><?=$i;?></td>
							<td><?=$name;?></td>
							<td><?=$email;?></td>
							<td><?=$reg_date;?></td>
						</tr>
					<?php $i++; } ?>
					</tbody>
					
				</table>
				
			</div>
		<?php } ?>
		</div>
	</div>
</section>
</body>
</html>