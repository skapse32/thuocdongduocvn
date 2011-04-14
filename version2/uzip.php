<META http-equiv=Content-Type content="text/html; charset=utf-8"> 
<?php
    // The unzip script
    // Created by Alex at http://www.learncpp.com
    // Dịch lại bởi Diễn đàn Tin học Việt Nam: www.diendantinhoc.vn
    // Code này sẽ liệt kê tất cả các file zip đang có trên  hosting.
    // và cho phép bạn chọn file nào để giải nén.
    //
    // Để sử dụng, bạn upload file này lên  hosting.
    // và chạy file này, ví dụ: http://www.tenmien.com/unzip.php
 
    // See if there's a file parameter in the URL string
    $file = $_GET['file'];
 
    if (isset($file))
    {
       echo "Đang giải nén " . $file . "<br>";
       system('unzip -o ' . $file);
       exit;
    }
 
    // create a handler to read the directory contents
    $handler = opendir(".");
 
    echo "Hãy chọn file để giải nén: " . "<br>";
 
    // A blank action field posts the form to itself
    echo '<FORM action="" method="get">';
 
    $found = FALSE; // Used to see if there were any valid files
 
    // keep going until all files in directory have been read
    while ($file = readdir($handler))
    {
        if (preg_match ("/.zip$/i", $file))
        {
            echo '<input type="radio" name="file" value=' . $file . '> ' . $file . '<br>';
            $found = true;
        }
    }
 
    closedir($handler);
 
    if ($found == FALSE)
        echo "Không tìm thấy file nào có đuôi .zip<br>";
    else
        echo '<br>Lưu ý: Các file khi giải nén sẽ ghi đè lên file cũ (nếu đã có sẵn).<br><br><INPUT type="submit" value="Unzip!">';
 
    echo "</FORM>";
?>