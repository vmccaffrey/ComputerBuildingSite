<?php
	include 'connect.php';
	
	function retrieve_gpu {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_gpu.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_gpu
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_gpu.model
				WHERE
					(component_type.typeID = 7)";

		$result = mysqli_query($con,$sql);
		return $result;
	}
?>