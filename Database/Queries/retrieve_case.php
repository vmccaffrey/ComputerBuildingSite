<?php
	function retrieve_case() {
		$sql = "SELECT
					component.brand,
					component.componentName,
					component.series,
					specs_case.*
				FROM
					component 
				INNER JOIN
					component_type
				INNER JOIN
					specs_case
				ON
					component.componentType = component_type.typeID
				AND
					component.model = specs_case.model
				WHERE
					(component_type.typeID = 8)";

		$result = mysqli_query(new mysqli('localhost', 'root', '', 'webdev'),$sql);
		return $result;
	}
?>