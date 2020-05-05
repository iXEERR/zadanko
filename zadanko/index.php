<html>
 <head>
  <meta charset="utf-8">
  <title>Dodaj nowy obiekt</title>
 </head>
 <body>
		 
		 
		 
		  <h1>Dodawanie do bazy filmu</h1>
			  ID1 to James Cameron <br />
			  ID2 to Steven Spielberg <br />
			  ID3 to Clint Eastwood <br /><br /><br />
			  
			  
			  
			  
			  
		  <form method="get" action="insert.php">
		   <table border="0">
			  <tr><td>ID_REZYSERA</td><td><select name="id_rezysera">
				  
				  
				  
				  <?php
		include "polacz.php";
				  
		if ($sql =  $baza->prepare("SELECT id_rezysera FROM rezyser"))
		{
				$sql->execute();
				$sql->bind_result($id_rezysera);
				while ($sql->fetch())
				{
						echo "<option>$id_rezysera</option>";
				}
				$sql->close();
		}
		else die( "Błąd w zapytaniu SQL! Sprawdź kod SQL w PhpMyAdmin: ". $baza->error );


		?>
							  </select></td></tr>
							  
						  <tr><td>NAZWA_FILMU</td><td><input name="nazwa_filmu"></td></tr>
						  
						  <tr><td>ROK_WYDANIA</td><td><input name="rok_wydania"></td></tr>
						  
						  <tr><td colspan="2"><input type="submit" value="wstaw"></td></tr>
		   </table>
		</form>
 </body>
</html>