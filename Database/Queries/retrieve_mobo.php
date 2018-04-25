<?php
	include 'connect.php';
	
	function retrieve_mobo() {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_motherboard.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_motherboard
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_motherboard.model
				WHERE
					(component_type.typeID = 2)";

		$result = mysqli_query($con,$sql);
		return $result;
	}
?>