<?php
	include 'connect.php';
	
	function retrieve_ram {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_ram.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_ram
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_ram.model
				WHERE
					(component_type.typeID = 6)";

		$result = mysqli_query($con,$sql);
		return $result;
	}
?>