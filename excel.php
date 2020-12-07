<?php

$db = new mysqli("localhost","root","","excel_bd");


include("PHPExcel/IOFactory.php");

if(isset($_REQUEST['btn'])){
$target_path = "up/upp/";
$ext = pathinfo(basename($_FILES['file']['name']), PATHINFO_EXTENSION);
$filename = $_FILES['file']['name'];

//$target_path = $target_path . $_FILES['uploadedfile']['name'];

$target_path = $target_path . $filename;

move_uploaded_file($_FILES['file']['tmp_name'], $target_path);
	



$objPHPExcel = PHPExcel_IOFactory::load($target_path);
$html="<table border ='1'>";
foreach($objPHPExcel->getWorksheetIterator() as $worksheet)
{
	$highestRow = $worksheet->getHighestRow();
	for($row=2;$row<=$highestRow;$row++)
	{
		$html.="<tr>";
		$name = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(0, $row)->getValue());
		$email = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(1, $row)->getValue());
		
		$sql = "INSERT INTO tbl_excel(name,excel_e)VALUES('$name','$email')";
		
		mysqli_query($db,$sql);
		$html.='<td>'.$name.'</td>';
		$html.='<td>'.$email.'</td>';
		$html.='</tr>';
	}
}
$html.='</table>';

unlink($target_path);
}
?>

<html>
<head>

</head>
<body>
<form method="post" enctype="multipart/form-data">
<input type="file" name="file"> <br>
<input type="submit" name="btn" value="save"> 
</form>
</body>

</html>