    <?php
   

    $filename = "../Build.txt"; 
    $file_content = file($filename); 
    $x = count($file_content); 
    $fp = fopen($filename, "w+");  
    $file_content[0] = "This will change : the text in Line 1 : of the text file \n"; 
    $y = 0; 
    fwrite($fp, implode($file_content, '')); 
    fclose($fp); 
    

    header("Location: http://localhost/ComputerBuildingSite/layout/pc%20build.html");
    exit;
    ?>