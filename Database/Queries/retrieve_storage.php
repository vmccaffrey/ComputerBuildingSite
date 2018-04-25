<?php
	include 'connect.php';
	
	function retrieve_storage {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_storage.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_storage
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_storage.model
				WHERE
					(component_type.typeID = 4)";

		$result = mysqli_query($con,$sql);
		return $result;
	}
?>