<?php
require 'db.php';

echo "<table id='table' style='border: solid 1px black;'>";
echo "<tr><th>Id</th><th>First Name</th><th>insertion</th><th>last name</th><th>gmail</th><th>euro</th><th>Action</th></tr>";

class TableRows extends RecursiveIteratorIterator
{
    function __construct($it)
    {
        parent::__construct($it, self::LEAVES_ONLY);
    }

    function current()
    {
        return "<td style='width:150px;border:1px solid black;'>" . parent::current() . "</td>";
    }

    function beginChildren()
    {
        echo "<tr>";
    }

    function endChildren()
    {
        echo "</tr>" . "\n";
    }
}

try {
  $stmt = $conn->prepare("SELECT * FROM debiteur");
  $stmt->execute();

// set the resulting array to associative
  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  foreach (new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k => $v) {
      echo $v;
      if($k == "id"){
        $v = strip_tags($v);
        $editlink = "<a href='edit.php?id=$v'>E</a>";
        $deletelink = "<a href='delete.php?id=$v'>D</a>";
        
        }
      if ($k=="totaal"){
        echo "<td>$editlink</td>";
        echo "<td>$deletelink</td>";
      }
  }
} catch (PDOException $e) {
  echo "Error: " . $e->getMessage();
}



?>
<a href='new.php'>new</a>