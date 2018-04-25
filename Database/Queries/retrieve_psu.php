<?php
	include 'connect.php';
	
	function retrieve_psu() {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_psu.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_psu
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_psu.model
				WHERE
					(component_type.typeID = 5)";

		$result = mysqli_query($con,$sql);
		return $result;
	}
?>