<?php 
headerTienda($data);
//$banner = media()."/tienda/images/bg-01.jpg";
 $banner = $data['page']['portada'];
 $idpagina = $data['page']['idpost'];
 ?>
 <script>
 	document.querySelector('header').classList.add('header-v4');
 </script>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url(<?= $banner ?>);">
	<h2 class="ltext-105 cl0 txt-center">
		<?= $data['page']['titulo'] ?>
	</h2>
</section>
    
	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Misión
						</h3>

						<p class="stext-113 cl6 p-b-26">
						En "TuCompu", nuestra misión es ofrecer a nuestros clientes una experiencia excepcional en el mundo de la tecnología. Nos apasiona brindar soluciones informáticas de calidad y superar las expectativas de nuestros clientes en todo momento. Trabajamos arduamente para proporcionar productos auténticos y confiables, fabricados con los mejores componentes y materiales del mercado.

Creemos en la importancia de la atención al detalle y nos comprometemos a brindar un servicio cálido, amigable y eficiente en un entorno acogedor. Nuestro equipo de expertos en tecnología está siempre dispuesto a ayudarte a encontrar la computadora, laptop o accesorio perfecto para tus necesidades específicas. Nos enorgullece ofrecer un servicio personalizado y asesoramiento experto para garantizar que encuentres exactamente lo que estás buscando.

Además, en "TuCompu" nos preocupamos por el medio ambiente y la sostenibilidad. Trabajamos para reducir nuestro impacto ecológico mediante la adopción de prácticas empresariales responsables. Fomentamos el reciclaje de productos electrónicos y promovemos la reutilización de materiales para minimizar el desperdicio y contribuir a un futuro más verde.

Te invitamos a visitar "TuCompu" y descubrir nuestra amplia selección de productos tecnológicos. Desde computadoras de escritorio de última generación hasta laptops de alto rendimiento, periféricos y accesorios, tenemos todo lo que necesitas para potenciar tu vida digital. ¡Esperamos brindarte una experiencia inolvidable en "TuCompu"!
						</p>

						<p class="stext-113 cl6 p-b-26">
							Además, nos comprometemos a tener un impacto positivo en nuestras comunidades locales y en el medio ambiente. Nos esforzamos por establecer relaciones sólidas y sostenibles con proveedores locales, apoyando a la economía local y promoviendo prácticas comerciales éticas. Implementamos iniciativas ecológicas para minimizar nuestro impacto ambiental, como el uso de envases biodegradables y la gestión eficiente de los recursos.
						</p>

						
					</div>
				</div>

				<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="<?= media() ?>/tienda/images/mision.png" alt="IMG">
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="order-md-2 col-md-7 col-lg-8 p-b-30">
					<div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Visión
						</h3>

						<p class="stext-113 cl6 p-b-26">
						En "TuCompu", nuestra visión es convertirnos en la tienda de referencia en el campo de la tecnología en nuestra comunidad y más allá. Buscamos ser el destino preferido de las personas que buscan soluciones informáticas de calidad, combinadas con creatividad y originalidad en cada recomendación y producto que ofrecemos. Queremos establecer una reputación sólida como un referente tecnológico de primera categoría, donde la excelencia y la satisfacción del cliente sean nuestras principales prioridades. Aspiramos a expandirnos y abrir nuevas sucursales en diferentes ciudades, compartiendo nuestra pasión por la tecnología con un público más amplio.

Además, nos esforzamos por ser líderes en la industria de la computación, siendo un modelo a seguir en términos de innovación, calidad, sostenibilidad y responsabilidad social. Nos comprometemos a mantenernos al tanto de las últimas tendencias tecnológicas y ofrecer productos vanguardistas que mejoren la vida digital de nuestros clientes. También nos preocupamos por reducir nuestro impacto ambiental, promoviendo el reciclaje de productos electrónicos y adoptando prácticas empresariales sostenibles.

Nuestro objetivo final es crear momentos memorables para nuestros clientes, estableciendo relaciones duraderas y convirtiéndonos en un referente en la industria de la tecnología. Queremos ser reconocidos como un ícono en el mundo de la informática, donde cada experiencia en "TuCompu" sea única y excepcional. ¡Estamos comprometidos a brindarte la mejor atención y a ser tu socio confiable en todo lo relacionado con la tecnología!
						</p>

						<div class="bor16 p-l-29 p-b-9 m-t-22">
							<p class="stext-114 cl6 p-r-40 p-b-11">
							Nuestro objetivo final es crear momentos memorables para nuestros clientes, fomentando relaciones duraderas y convirtiéndonos en un ícono comercial en la industria de la tecnología.
							</p>
						</div>
					</div>
				</div>

				<div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
					<div class="how-bor2">
						<div class="hov-img0">
							<img src="<?= media() ?>/tienda/images/vision.png" alt="IMG">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	

<?php
    footerTienda($data);
?>