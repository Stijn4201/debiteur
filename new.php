<?php
echo '<h1>Nieuwe regel toevoegen</h1>';

if ($_POST) {
    include_once('db.php');
    echo "<h2>regel toevoegen.</h2>";
    $voornaam = $_POST['voornaam'];
    $tussenvoegsel = $_POST['tussenvoegsel'];
    $achternaam = $_POST['achternaam'];
    $email = $_POST['email'];
    $totaal = $_POST['totaal'];
    
    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO debiteur (voornaam, tussenvoegsel, achternaam, email, totaal)
                VALUES ('$voornaam', '$tussenvoegsel', '$achternaam', '$email', '$totaal')";
        // use exec() because no results are returned
        $conn->exec($sql);
        echo "New record created successfully";
    } catch (PDOException $e) {
        echo $sql . "<br>" . $e->getMessage();
    }

    $conn = null;
}

// formulier aanmaken
echo "
 <form action=\"new.php\" method='post'>
  <label for=\"fname\">voornaam:</label><br>
  <input type=\"text\" id=\"voornaam\" name=\"voornaam\"><br>
  <label for=\"address\">tussenvoegsel:</label><br>
  <input type=\"text\" id=\"tussenvoegsel\" name=\"tussenvoegsel\"><br>
  <label for=\"email\">achternaam:</label><br>
  <input type=\"text\" id=\"achternaam\" name=\"achternaam\"><br>
  <label for=\"phone\">email:</label><br>
  <input type=\"text\" id=\"email\" name=\"email\"><br>
  <label for=\"postalZip\">totaal</label><br>
  <input type=\"text\" id=\"totaal\" name=\"totaal\"><br>
  
  <input type=\"submit\" value=\"Wegschrijven\">
</form> 

<a href='index.php'>Terug naar index</a>
";