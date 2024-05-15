<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = " ";
$database = "inmobiliaria";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
  die("Conexión fallida: " . $conn->connect_error);
}

// Recuperar los datos del formulario
$precio_min = $_POST['precio_min'];
$precio_max = $_POST['precio_max'];
$habitaciones = $_POST['habitaciones'];
$fecha_construccion = $_POST['fecha_construccion'];

// Consulta SQL para buscar viviendas
$sql = "SELECT * FROM viviendas WHERE precio BETWEEN $precio_min AND $precio_max AND habitaciones = $habitaciones AND fecha_construccion > '$fecha_construccion'";

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de Búsqueda</title>
    <link rel="stylesheet" href="formulario.css">
</head>
<body>
    <h1>Resultados de Búsqueda</h1>
    <div class="resultados">
        <?php
        if ($result->num_rows > 0) {
            echo "<table>";
            echo "<tr><th>ID</th><th>Precio</th><th>Metros Cuadrados</th><th>Habitaciones</th><th>Fecha de Construcción</th><th>Amueblada</th></tr>";
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["id"] . "</td><td>" . $row["precio"] . "</td><td>" . $row["metros_cuadrados"] . "</td><td>" . $row["habitaciones"] . "</td><td>" . $row["fecha_construccion"] . "</td><td>" . ($row["amueblada"] ? 'Sí' : 'No') . "</td></tr>";
            }
            echo "</table>";
        } else {
            echo "No se encontraron viviendas que coincidan con los criterios de búsqueda.";
        }
        $conn->close();
        ?>
    </div>
</body>
</html>
