<?php	
	function retrieve_cpu() {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_cpu.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_cpu
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_cpu.model
				WHERE
					(component_type.typeID = 1)";

		$result = mysqli_query(new mysqli('localhost', 'root', '', 'webdev'),$sql);
		return $result;
	}
?>