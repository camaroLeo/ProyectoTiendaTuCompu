<?php 
headerTienda($data);
$banner = $data['page']['portada'];
$idpagina = $data['page']['idpost'];
 ?>
<script>
  document.querySelector('header').classList.add('header-v4');
</script>

 <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url(<?= $banner ?>);">
  <h2 class="ltext-105 cl0 txt-center">
    <?= $data['page']['titulo'] ?>
  </h2>
</section>

<section class="py-5 text-center">
    <div class="container">
      <p>¡Ven a visitar nuestras sucursales y disfruta de una experiencia deliciosa en nuestra pizzería! En cada una de nuestras sucursales encontrarás un ambiente acogedor y un equipo amable listo para servirte.</p>
      <a href="" class="btn btn-info">VER PRODUCTOS</a>
    </div>
</section>
<div class="py-5 bg-light">
  <div class="container">
    <div class="row">

      <div class="col-md-4">
        <div class="card mb-4 box-shadow">
          <img src="<?= media() ?>/images/sucursal1.jpg" alt="Sucural uno">
          <div class="card-body">
            <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p>
            <p>Dirección: Av. Huandoy Mz B Lte 59 – Asoc. San Roque. <br>
              Teléfono:  (01)207-8130 <br>
              Correo: pizzaraul_huandoy@gmail.com
            </p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card mb-4 box-shadow">
          <img src="<?= media() ?>/images/sucursal2.jpg" alt="Sucural uno">
          <div class="card-body">
            <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p>
            <p>Dirección: Av. Eduardo de Habich 411, San Martín de Porres <br>
              Teléfono: (01) 2078130 <br>
              Correo: pizzaraul_habich@gmail.com
            </p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card mb-4 box-shadow">
          <img src="<?= media() ?>/images/sucursal3.jpg" alt="Sucural uno">
          <div class="card-body">
            <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p>
            <p>Dirección: Av. José Granda 3289, San Martín de Porres <br>
              Teléfono: (01) 2078130 <br>
              Correo: pizzaraul_Jgranda@gmail.com
            </p>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
</div>
<?php 
  footerTienda($data);
?>