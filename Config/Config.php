<?php

//define("BASE_URL", "http://localhost/tienda_virtual/");
const BASE_URL = "http://localhost/ProyectoTiendaTuCompu";
//const BASE_URL = "https://tiendacristina.000webhostapp.com";

//Zona horaria
date_default_timezone_set('America/Lima');

//Datos de conexión a Base de Datos
const DB_HOST = "localhost";
const DB_NAME = "db_tiendavirtualtucompu";
//const DB_NAME = "id20125475_tiendacris";
const DB_USER = "root";
//const DB_USER = "id20125475_root";
const DB_PASSWORD = "";
//const DB_PASSWORD = "RtkiX52(YN[[bB5d";
const DB_CHARSET = "utf8";

//Deliminadores decimal y millar Ej. 24,1989.00
const SPD = ".";
const SPM = ",";

//Simbolo de moneda
//const SMONEY = "S/ ";
const SMONEY = "$ ";
const CURRENCY = "USD";

//api paypal
//sandbox paypal
const URLPAYPAL = "https://api-m.sandbox.paypal.com";
const IDCLIENTE = "AdtJ3oKWzj7VjQmfnGFkuUeKw_9508Wj-RW6FxKywklPCZoXar5dl3JYQTygY3hK84d6MPRGeSXtVKr6";
const SECRET = "EC9aholCrYzHsoFyp10T9HIEaUyDI9j_TggL6jiysOliYzQ4XE5HP0hlovMYFi618G42UBiEJmiNYsJj";

//Datos envio de correo
const NOMBRE_REMITENTE = "TuCompu";
const EMAIL_REMITENTE = "no-reply@cris.com";
const NOMBRE_EMPESA = "TuCompu";
const WEB_EMPRESA = "https://tucompu.000webhostapp.com/";

const DESCRIPCION = "La mejor tienda en linea en ventas de pizzas";
// Hastag no dejar espacios
const SHAREDHASH = "PizzaRaulFan";

//datos empresa
const DIRECCION = "Av. La Honradez 811-805, Los Olivos 15307";
const TELEMPRESA = "(01) 207 - 8130";
const EMAIL_EMPRESA = "pizza-raul@gmail.com";
const EMAIL_PEDIDOS = "pizza-raul@gmail.com";
const EMAIL_SUSCRIPCION = "gustavo2018.gcr@gmail.com";
const EMAIL_CONTACTO = "gustavo2018.gcr@gmail.com";

const CAT_SLIDER = "10,11,12,16,17";
const CAT_BANNER = "13,14,15,18,19,20,21,22,23,24";
const CAT_FOOTER = "10,11,12,13,14,15";

//Datos para Encriptar / Desencriptar
const KEY = 'cris';
const METHODENCRIPT = "AES-128-ECB";

//Envío
const COSTOENVIO = 8;

//Modulos
const MCLIENTES = 3;
const MPEDIDOS = 5;
const MSUSCRIPTORES = 7;
const MDCONTACTOS = 8;
const MDPAGINAS = 9;

//Páginas
const PINICIO = 4;
const PTIENDA = 2;
const PCARRITO = 5;
const PNOSOTROS = 1;
const PCONTACTO = 3;
const PPREGUNTAS = 6;
const PTERMINOS = 7;
const PSUCURSALES = 8;
const PERROR = 9;

//Roles
const RADMINISTRADOR = 1;
const RCLIENTES = 3;

const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

//Productos por pagina
const CANTPORDHOME = 8;
const PROPORPAGINA = 4;
const PROCATEGORIA = 1;
const PROBUSCAR = 4;

//Redes sociales
const FACEBOOK = "https://www.facebook.com/pizzaraul";
const INSTAGRAM = "https://www.instagram.com/pizzaraul";
const WHATSAPP = "51991644337";

?>