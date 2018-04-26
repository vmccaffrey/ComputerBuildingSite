    <?php
   
    preg_match_all("/<tr>(.*?)<\/tr>/", $table, $matches);
    $rows = $matches[1];
    foreach($rows as $row) {
        preg_match_all("/<td>(.*?)<\/td>/", $row, $matches);
        $data[] = $matches[1];
        }
    $file = fopen('../..Build.txt', 'w');
    foreach($data as $row) {
        $line = implode(",", $row)."\n";
        fwrite($file, $line, strlen($line));
        }
    fclose($file);
    
    

    header("Location: http://localhost/ComputerBuildingSite/layout/pc%20build.html");
    exit;
    ?>