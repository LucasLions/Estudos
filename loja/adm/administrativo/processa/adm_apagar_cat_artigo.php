<?php
	include_once("../../conexao/conexao.php");
	$id = $_GET['id'];
	
	$result_niveis_acessos = "DELETE FROM categorias_artigos WHERE id = '$id'";
	$resultado_niveis_acessos = mysqli_query($conn, $result_niveis_acessos);	
?>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
	</head>

	<body> <?php
		if(mysqli_affected_rows($conn) != 0){
			echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/loja/adm/administrativo.php?link=50'>
				<script type=\"text/javascript\">
					alert(\"Categoria de Artigo apagado com Sucesso.\");
				</script>
			";	
		}else{
			echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/loja/adm/administrativo.php?link=50'>
				<script type=\"text/javascript\">
					alert(\"Categoria de Artigo não foi apagado com Sucesso.\");
				</script>
			";	
		}?>
	</body>
</html>
<?php $conn->close(); ?>