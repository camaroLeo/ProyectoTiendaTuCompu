<?php
    class Suscriptoroes extends Conectar{
        //Obtener todos los usuarios suscritos
        public function get_suscriptor(){
            $conectar= parent::Conexion();
            parent::set_names();
            $sql="SELECT idsuscripcion, nombre, email, DATE_FORMAT(datecreated, '%d/%m/%Y') as fecha
            FROM suscripciones WHERE estado = 1 ORDER BY idsuscripcion DESC";
            $sql=$conectar->prepare($sql);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }

        //Obtener usuario por id
        public function get_suscriptor_x_id($idsuscripcion){
            $conectar= parent::Conexion();
            parent::set_names();
            $sql="SELECT * FROM suscripciones WHERE idsuscripcion = ? AND estado = 1";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$idsuscripcion);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }

        //Obtener usuario por correo
        public function get_suscriptor_x_correo($email){
            $conectar= parent::Conexion();
            parent::set_names();
            $sql="SELECT * FROM suscripciones WHERE email = ? AND estado = 1 ";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$email);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }
        
        //Obtener todos los correos de los usuarios 
        public function get_all_correo($email){
            $conectar= parent::Conexion();
            parent::set_names();
            $sql="SELECT email FROM suscripciones WHERE estado = 1";
            $sql=$conectar->prepare($sql);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }

        //Insertar datos
        public function insert_suscriptor($nombre,$email){
            $conectar= parent::Conexion();
            parent::set_names();
            $sql="INSERT INTO suscripciones (idsuscripcion,nombre,email,datecreated,estado) VALUES (NULL,?,?,CURRENT_TIMESTAMP,1);";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$nombre);
            $sql->bindValue(2,$email);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }

        //Desactivar suscripcion
        public function del_suscriptor($email){
            $conectar= parent::Conexion();
            parent::set_names();
            $sql="UPDATE suscripciones set estado = '0' WHERE email = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$email);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }

        //Activar suscripcion
        public function sub_suscriptor($email){
            $conectar= parent::Conexion();
            parent::set_names();
            $sql="UPDATE suscripciones set estado = '1' WHERE email = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$email);
            $sql->execute();
            return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
        }

    }
?>