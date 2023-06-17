<?php 
    headerTienda($data);
?>
<script>
  document.querySelector('header').classList.add('header-v4');
</script>
<div class="container text-center">
	<main class="app-content">
	<div class="page-error tile">
        <h1><i class="fa fa-exclamation-circle"></i> Error 404: Página no encontrada</h1>
        <p>No se encuentra la página que ha solicitado.</p>
        <p><a class="btn btn-primary" href="javascript:window.history.back();">Regresar</a></p>
    </div>
    </main>
</div>
<?php footerTienda($data); ?>

