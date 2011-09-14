<?php

$email = $_POST['email'];

if($email != "")
{
    $list = fopen("../misc/emails.txt", "a");
    if(!$list)
    {
        die("Couldn't open file!");
    }

    fwrite($list, $email);
    fwrite($list,"\n");
    fclose($list);
    
    header("Location: http://www.bathouselabs.com/thankyou.html");
}
else
{
    header("Location: http://www.bathouselabs.com/subscribe.html");
}

?>
