<?php
$link = mysqli_connect("db", "root", "root", "webinarru");

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

if ($result = mysqli_query($link, "SELECT *
FROM (
    SELECT @count := COUNT(*) + 1, @limit := 1
    FROM firstnames 
) AS vars
STRAIGHT_JOIN (
    SELECT r.*, @limit := @limit - 1
    FROM firstnames AS r
    WHERE
        (@count := @count - 1)
        AND RAND() < @limit / @count
) AS i INNER JOIN lastnames using(id)")) {

while ($row = mysqli_fetch_row($result)) {
        printf ("%s %s\n", $row[3], $row[5]);
    }

    mysqli_free_result($result);
}


mysqli_close($link); echo  gethostname();
?>
