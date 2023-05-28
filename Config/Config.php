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
const SMONEY = "S/ ";

//Datos envio de correo
const NOMBRE_REMITENTE = "TuCompu";
const EMAIL_REMITENTE = "no-reply@cris.com";
const NOMBRE_EMPESA = "TuCompu";
const WEB_EMPRESA = "https://tiendacristina.000webhostapp.com/";

const CAT_SLIDER = "10,11,12,16,17";
const CAT_BANNER = "13,14,15,18,19,20,21,22,23,24";

//Datos para Encriptar / Desencriptar
const KEY = 'cris';
const METHODENCRIPT = "AES-128-ECB";

//Envío
const COSTOENVIO = 8;
?>