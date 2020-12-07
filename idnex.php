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
	//echo "<pre>";
	//print_r($objPHPExcel->getWorksheetIterator()); die;
	$highestRow = $worksheet->getHighestRow();
	//echo $highestRow; //die;
	
	for($row=1;$row<=$highestRow;$row++)
	{
		$html.="<tr>";
		$TypeOfService = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(0, $row)->getValue());
		$CustomerID = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(1, $row)->getValue());
		$DeliveryBoyID = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(2, $row)->getValue());
		$Hawb = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(3, $row)->getValue());
		$Destination = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(4, $row)->getValue());
		$Pcs = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(5, $row)->getValue());
		$Item = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(6, $row)->getValue());
		$Weight = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(7, $row)->getValue());
		$Volweight = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(8, $row)->getValue());
		$AmountUsd = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(9, $row)->getValue());
		$AmountinBDT = mysqli_real_escape_string($db,$worksheet->getCellByColumnAndRow(10, $row)->getValue());
		
		$sql = "INSERT INTO tblsaleinfo(SaleinfoUUID, TypeOfService , CustomerID , DeliveryBoyID, Hawb, Destination, Pcs, Item, Weight, Volweight, AmountUsd, AmountinBDT, SaleinfoIsActive, UserIDInserted, UserIDUpdated, UserIDLocked, DateInserted, DateUpdated, DateLocked) VALUES ('', '$TypeOfService' , '$CustomerID' , '$DeliveryBoyID', '$Hawb', '$Destination', '$Pcs', '$Item', '$Weight', '$Volweight', '$AmountUsd', '$AmountinBDT', '', '', '', '', '', '', '')";
		
	//	echo $sql; //die;
		
		mysqli_query($db,$sql);
		$html.='<td>'.$TypeOfService.'</td>';
		$html.='<td>'.$CustomerID.'</td>';
		$html.='<td>'.$DeliveryBoyID.'</td>';
		$html.='<td>'.$Hawb.'</td>';
		$html.='<td>'.$Destination.'</td>';
		$html.='<td>'.$Pcs.'</td>';
		$html.='<td>'.$Item.'</td>';
		$html.='<td>'.$Weight.'</td>';
		$html.='<td>'.$Volweight.'</td>';
		$html.='<td>'.$AmountUsd.'</td>';
		$html.='<td>'.$AmountinBDT.'</td>';
		$html.='</tr>';
	}
}
$html.='</table>';

echo $html;
//unlink($target_path);
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