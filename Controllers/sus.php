<?php
    header('Content-Type: application/json');

    require_once("../Config/conexion.php");
    require_once("../Models/SUS.php");
    $categoria = new Suscriptoroes();

    $body = json_decode(file_get_contents("php://input"),true);

    switch($_GET["op"]) {
        //mostrar todos los usuarios
        case 'GetAll':
            $datos=$categoria->get_suscriptor();
            echo json_encode($datos);
        break;

        //Buscar por ID
        case 'GetId':
            $datos = $categoria->get_suscriptor_x_id($body["idsuscripcion"]);
            if (empty($datos)) {
                $mensaje = "El usuario no esta suscrito";
                echo json_encode(array("mensaje" => $mensaje));
            } else {
                echo json_encode($datos);
            }
        break;

        //Buscar por correo
        case 'GetCorreo':
            $datos = $categoria->get_suscriptor_x_correo($body["email"]);
            if (empty($datos)) {
                $mensaje = "El usuario no esta suscrito";
                echo json_encode(array("mensaje" => $mensaje));
            } else {
                echo json_encode($datos);
            }
        break;
        
        //Registrar usuario
        case 'IsrtUsr':
            $datos=$categoria->insert_suscriptor($body["nombre"],$body["email"]);
            echo "El usuario fue registrado";
        break;

        //Optener correos de usuarios
        case 'GetAllCorreo':
            $datos=$categoria->get_all_correo($body);
            echo json_encode($datos);
        break;

        //Opcion para desuscribirse
        case 'DScrb':
            $datos=$categoria->del_suscriptor($body["email"]);
            echo "El usuario se desuscribio";
        break;

        //Opcion para volver a suscribirse
        case 'Scrb':
            $datos=$categoria->sub_suscriptor($body["email"]);
            echo "El usuario se suscribio";
        break;
    }
?>