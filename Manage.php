<?
	include "./script/{$_REQUEST["Base"]}/Scriptvariables.php";
	
	SetFormvariable("RecordShowFrom", 1);
    SetFormvariable("RecordShowUpTo", $Application["DatagridRowsDefault"]);
    SetFormvariable("SortBy", "{$OrderByValue}");
    SetFormvariable("SortType", "ASC");

	if(isset($_REQUEST["ActionNew{$Entity}"]))include "./script/{$_REQUEST["Base"]}/Insertupdate.php";
	// Delete a data
	if(isset($_GET["DeleteConfirm"]))SQL_Delete($Entity="{$Entity}", $Where="{$Entity}ID = {$_REQUEST[$Entity."ID"]} AND {$Entity}UUID = '{$_REQUEST[$Entity."UUID"]}'");

    $Where="1 = 1";
	if($_POST["FreeText"]!="")
		$Where.=" and {$_REQUEST["SearchCombo"]} LIKE '%{$_POST["FreeText"]}%'";
	//include 'library/reader.php';
	
	//$db = new mysqli("localhost","root","","nibizdemodata");
	
	echo $SQL_InsertUpdate;
	
	include("library/IOFactory.php");
	
	if(isset($_REQUEST['btn'])){
		
		$target_path = $Application["UploadPath"];
				
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
				$TypeOfService = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(0, $row)->getValue());
				$CustomerID = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(1, $row)->getValue());
				$DeliveryBoyID = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(2, $row)->getValue());
				$Hawb = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(3, $row)->getValue());
				$Destination = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(4, $row)->getValue());
				$Pcs = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(5, $row)->getValue());
				$Item = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(6, $row)->getValue());
				$Weight = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(7, $row)->getValue());
				$Volweight = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(8, $row)->getValue());
				$AmountUsd = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(9, $row)->getValue());
				$AmountinBDT = mysqli_real_escape_string($TheEntityName,$worksheet->getCellByColumnAndRow(10, $row)->getValue());
				
				$sql = "INSERT INTO tblsale(SaleinfoUUID, TypeOfService , CustomerID , DeliveryBoyID, Hawb, Destination, Pcs, Item, Weight, Volweight, AmountUsd, AmountinBDT, SaleinfoIsActive, UserIDInserted, UserIDUpdated, UserIDLocked, DateInserted, DateUpdated, DateLocked) VALUES ('', '$TypeOfService' , '$CustomerID' , '$DeliveryBoyID', '$Hawb', '$Destination', '$Pcs', '$Item', '$Weight', '$Volweight', '$AmountUsd', '$AmountinBDT', '', '', '', '', '', '', '')";
				
				//echo $sql; die;
				
				mysqli_query($TheEntityName,$sql);
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
			
	}
		$MainContent.='
		
		<form method="post" enctype="multipart/form-data">
		<input type="file" name="file"> <br>
		<input type="submit" name="btn" value="save"> 
		</form>
		';
	// DataGrid
	$MainContent.= CTL_Datagrid(
		$Entity,
		$ColumnName=array( "TypeOfService" , "CustomerID" , "DeliveryBoyID", "Hawb", "Destination", "Pcs", "Item", "Weight", "Volweight", "AmountUsd", "AmountinBDT","{$Entity}IsActive" ),
		$ColumnTitle=array( "Type Of Service", "Customer ID"   ,"Delivery Boy ID", "Hawb", "Destination","Pcs"   , "Item", "Weight"   ,"Vol. Weight"   ,"Amount in $"   ,"Amount in BDT"   , "IsActive" ),
		$ColumnAlign=array( "left", "left"   , "left"   , "left"   , "left"   , "left"   , "left"   , "left"   , "left"   , "left"   , "left"   , "left" ),
		$ColumnType=array( "text","text","text","text","text","text","text","text","text","text", "text"   ,"yes/no"),
		$Rows=SQL_Select($Entity="{$Entity}", $Where ,  $OrderBy="{$_REQUEST["SortBy"]} {$_REQUEST["SortType"]}", $SingleRow=false, $RecordShowFrom=$_REQUEST["RecordShowFrom"], $RecordShowUpTo=$Application["DatagridRowsDefault"], $Debug=false),
		$SearchHTML="".CTL_InputText($Name="FreeText","","",26, $Class="DataGridSearchBox")." ",
		$ActionLinks=true,
		$SearchPanel=true,
		$ControlPanel=true,
		$EntityAlias="".$EntityCaption."",
		$AddButton=true
	);
?>