<?php

require "db.php";

if(isset($_GET["id"])){
  $id = $_GET['id'];
  try {
    $stmt = $conn->prepare("SELECT * FROM debiteur WHERE id = $id");
    $stmt->execute();
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    echo "<form method='post'>";
    foreach ($stmt->fetch() as $k => $v) {
        if($k == "id"){

        } else {
          echo "<label>$k:</label><br>
          <input type=\"text\" id=\"$k\" name=\"$k\" value='$v'><br>";
        }
    }
  } catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
  }
}
echo "<br><input type=\"submit\" value=\"Wegschrijven\" name='submit'><br><br>
<a href='index.php'>Terug naar index</a>
";

if(isset($_POST['submit'])){
  try {
    $id = $_GET['id'];
    $voornaam = $_POST['voornaam'];
    $tussenvoegsel = $_POST['tussenvoegsel'];
    $achternaam = $_POST['achternaam'];
    $email = $_POST['email'];
    $totaal = $_POST['totaal'];
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "UPDATE debiteur SET voornaam='$voornaam', tussenvoegsel='$tussenvoegsel', achternaam='$achternaam', email='$email', totaal='$totaal' WHERE id = $id";
    $conn->exec($sql);
    echo "Record updated successfully";
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}
}

?>