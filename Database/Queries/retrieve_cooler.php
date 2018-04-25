<?php
	include 'connect.php';
	
	function retrieve_cooler {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_cooler.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_cooler
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_cooler.model
				WHERE
					(component_type.typeID = 3)";

		$result = mysqli_query($con,$sql);
		return $result;
	}
?>