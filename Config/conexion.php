<?php
    //USADO EN EL TUTORIAL
    class Conectar{
        protected $dbh;

        protected function Conexion(){
            try{
                $conectar = $this->dbh = new PDO("mysql:local=localhost;dbname=db_tiendavirtual","root","");
                return $conectar;
            }catch (Exception $e) {
                print "Error BD!: ". $e->getMessage() . "<br/>";
                die();
            }
        }
        public function set_names(){
            return $this->dbh->query("SET NAMES 'utf8'");
        }
    }
?>