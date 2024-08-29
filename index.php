<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Najlepsza biblioteka</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Barlow&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=New+Amsterdam&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./style.css">
    <link rel="icon" href="book.png">
</head>
<body>
    <a href="./book-list.php" id="list">Lista Książek</a>
    <div id="middle">
        <div id="mid1">
            <h1 id="middle-desc">Nowe książki w naszej bibliotece</h1>
        </div>
        <div id="mid2">
            <?php
                $connect = new mysqli('localhost','root','','library');
                $question = $connect -> query("SELECT book_name 
                FROM books ORDER BY add_date DESC LIMIT 3");
                    while($row = mysqli_fetch_array($question))
                        { echo "
                            <div class='container'>
                               <p>{$row['book_name']}</p>
                            </div>";
                        }
                $connect -> close();
            ?>
       </div>
    </div>
    <a href="#bottom"><img src="./arrow.png" id="arrow" alt="Strzałka"></img></a>
    <div id="bottom">
            <?php
            $connect = new mysqli('localhost','root','','library');
            $question2 = $connect -> query("SELECT count(id) FROM clients");
            while($row = mysqli_fetch_array($question2)) 
            {
                echo "<div class='container-bottom'>
                <div class='container-bottom-1'><p>{$row['count(id)']}</p></div>
                <div class='container-bottom-2'><p>Liczba osób które odwiedziły 
                naszą bibliotekę od momentu jej otwarcia</p></div>
                </div>";
            };
            $question3 = $connect -> query("SELECT client_id, count(book_id) FROM 
            borrowed GROUP BY client_id ORDER BY count(book_id) DESC LIMIT 1");
            while($row = mysqli_fetch_array($question3))
            {
                $top_client=$row['client_id'];
                    $question4 = $connect -> query("SELECT name, surname
                    FROM clients WHERE id='$top_client'");
                    while($row = mysqli_fetch_array($question4))
                    {
                        echo "<div class='container-bottom'>
                        <div class='container-bottom-1'><p>{$row['name']} 
                        {$row['surname']}</p></div>
                        <div class='container-bottom-2'>
                        <p>Najbardziej zaangażowany czytelnik</p></div>
                        </div>";
                    }
            };
            $connect -> close();
            ?>
    </div>
</body>
</html>