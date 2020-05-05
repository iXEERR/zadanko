<?php
include "polacz.php";
	$id_rezysera = wczytaj("id_rezysera");
	$nazwa_filmu = wczytaj("nazwa_filmu");
	$rok_wydania = wczytaj("rok_wydania");




	$sql = $baza->prepare("INSERT INTO film VALUES (?, ?, ?);");
	if ($sql)
	{
			$sql->bind_param("iss", $id_rezysera, $nazwa_filmu, $rok_wydania);
			$sql->execute();
			$sql->close();
	}
	
	
	else
		die( 'Błąd: '. $baza->error);
	
	
$baza->close();
header ("Location: http://localhost/zadanko/index.php");
?>