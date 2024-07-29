<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista książek</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Barlow&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style2.css">
    <link rel="icon" href="book.png">
</head>
<body>
    <div class="container">
        <a href="./index.php"><img src="./undo.png" alt="undo" id="undo"></a>
        <h1 id="head">Lista książek</h1>
            <span id="sort-option">Wybierz w jaki sposób mają być sortowane książki</span>
                <div id="top">
                    <form method="POST">
                        <select name="sorttype">
                            <option value="asc">Rosnąco</option>
                            <option value="desc">Malejąco</option>
                        </select>
                        <select name="what">
                            <option value="books.book_name">wg. Książki</option>
                            <option value="authors.name">wg. Imienia Autora</option>
                            <option value="authors.surname">wg. Nazwiska Autora</option>
                        </select>
                            <input type="submit" name="send" value="Sortuj książki"></input>
                    </form>
                </div>

            <?php
                $connect = new mysqli('localhost','root','','library');
                $sort = "asc";
                if(isset($_POST['send'])){
                    $sort = $_POST['sorttype'];
                    $what = $_POST['what'];
                    $question = $connect -> query("SELECT books.id, 
                    books.book_name, authors.name, authors.surname 
                    FROM books, authors WHERE books.authors_id=authors.id 
                    ORDER BY $what $sort");
                    echo 
                       "<table>
                        <tr style='background-color:orange'>
                            <td>Tytuł książki</td>
                            <td>Imię Autora</td>
                            <td>Nazwisko Autora</td>
                        </tr>";
                    while($row = mysqli_fetch_array($question))
                        {
                            echo
                            "<tr>
                                <td><p>{$row['book_name']}</p></td>
                                <td><p>{$row['name']}</p></td>
                                <td><p>{$row['surname']}</p></td>
                            </tr>";
                        }
                } 
                else {
                    echo "<h1 id='text'>Proszę wybrać obie opcje</h1>";
                }
                    $connect -> close();
            ?>
        </table>
    </div>
</body>
</html>