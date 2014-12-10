<!DOCTYPE html>
<html>
	<head>
		<title>Secundaria Columbia</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'elegant-press.css')}" type="text/css" />
		<script src="${resource(dir: 'js', file: 'elegant-press.js')}" type="text/javascript"></script>
		<style>
			#header h1 a:hover
			{
				font-size:50px;
			}
		</style>
	</head>

	<body>
		<div class="main-container">
  			<header>
    		<h1><a href="/columbia">Secundaria Columbia</a></h1>
    		<p id="tagline"><strong></strong></p>
  		</header>
		</div>

		<div class="main-container">
  			<div id="nav-container">
   				<nav> 
    				<ul class="nav">
      					<li class="active"><a href="/columbia">Página de inicio</a></li>
      					<li><g:link controller="opTutor" action="elegirHijo">Tutores</g:link></li>
                <li><g:link controller="opProfesor" action="elegirGrupo">Profesores</g:link></li>
                <li><g:link controller="opPrefecto">Prefectos</g:link></li>
          			<li><g:link controller="opAdministrador">Administrador</g:link></li>
				    </ul>
   				</nav> 
    			<div class="clear"></div>
  			</div>
		</div>

		<div class="main-container">
  			<div class="container1">
  				<div id="mySlides">
    				<div id="slide1">    
        				<img src="${resource(dir: 'images', file: 'slider1.jpg')}" alt="Slide 1 jFlow Plus" />
        				<span>
        					<b class="slideheading">Enseñanza personal y organizada, clave para mejorar</b><br />
        					Un ritmo y dinámica diferente al de la primaria gusta a los estudiantes de la secundaria. Saúl Leonel Rivera cursa el segundo grado en esta modalidad y es uno de los alumnos convencidos con el sistema. Y lo confirma el director José Alfredo Martínez Cárdenas ya que considera que la metodología de clases como la primaria “ha gustado a los padres y alumnos”...
        					<a href="#" title="" class="readmore">Leer más!</a></span>
					</div>    	

    				<div id="slide2">
        				<img src="${resource(dir: 'images', file: 'slider2.jpg')}" alt="Slide 2 jFlow Plus" />
        				<span>
        					<b class="slideheading">Habrá aulas interactivas</b><br /> 
        					La secundaria en coordinación con el Gobierno, incluirá a partir del 16 de Octubre aulas interactivas...
        					<a href="#" title="" class="readmore">Leer más!</a></span>
    				</div>   

					<div id="slide3">
        				<img src="${resource(dir: 'images', file: 'slider3.jpg')}" alt="Slide 3 jFlow Plus" />
        				<span>
        					<b class="slideheading">Un éxito la brigada Yoliztli Pro-Damnificados</b><br />
        					El pasado MIÉRCOLES 25 DE SEPTIEMBRE, alumnos y padres de familia de los grupos de TERCERO de Secundaria realizaron labores de limpieza y entrega de DESPENSAS y ROPA...
        					<a href="#" title="" class="readmore">Leer más!</a></span>
    				</div>
				</div>

				<div id="myController">
   					<span class="jFlowControl"></span>
   					<span class="jFlowControl"></span>
   					<span class="jFlowControl"></span>
				</div>

				<section class="jFlowPrev"><div></div></section>
				<section class="jFlowNext"><div></div></section>
				<br />
				<br />

				<article class="box" id="home_featured21">
      				<div class="block"><h2>Cuadro De Honor</h2>
        				<p>A continuación se hace un enlistado a los alumnos más sobresalientes de cada grupo así como de la institución con el fin de reconocer y felicitarlos tanto a ellos como a sus padres por sus grandes conocimientos y su dedicación que adquirieron en el tiempo que han estado con nosotros. Se enlistaran del promedio más alto al más bajo.<br />
						<a href="#" class="read_more">Leer Mas</a> 
						</p>
      				</div>

      				<div class="block"><h2>Listado de suspensiones de clases</h2>
        				<ul id="list">
        					<li>10 de Octubre entre de víveres a damnificados.</li>
        					<li>28 de Octubre talleres a profesores.</li>
        					<li>2 de Noviembre día de muertos.</li>
        					<li>8 de Noviembre aniversario de la Institución.</li>

        				</ul>
						<br />
						<br />
      					<img src="${resource(dir: 'images', file: 'browsers.png')}" alt="Web Browsers"/>
      				</div>

      				<div class="block last"><h2>Calendario 2013</h2>
        				<p>En el siguiente calendario en formato PDF los padres de familia podrán ver los días de clases así como los días oficiales en los cuales no se tendrán clases de todo el año escolar, también se observaran los días festivo para la Institución. <br />
						<a href="#" class="read_more">Leer Mas</a>
						</p>
      				</div>
      				<div class="clear"></div>
      				<div class="clear"></div>
    			</article>	
			</div>

			<div class="container2">
     			<article id="home_featured2">
      				<ul>
        				<li>
          					<div class="imgholder">
          						<a href="${resource(dir: 'images', file: 'slide1.jpg')}" data-gal="prettyPhoto[featured]" title="First Featured Title">
          							<img src="${resource(dir: 'images', file: 'featured1.jpg')}" width="275" height="145" alt="" />
          						</a>
          					</div>
          					<h4>Salida Real Del Monte</h4>
          					<p>El día 20 de Noviembre se llevara a cabo una salida al mágico pueblo del Real Del Monte.</p>
        				</li>
        				<li>
          					<div class="imgholder">
          						<a href="${resource(dir: 'images', file: 'slide2.jpg')}" data-gal="prettyPhoto[featured]" title="Second Featured Title">
          							<img src="${resource(dir: 'images', file: 'featured2.jpg')}" width="275" height="145" alt="" />
          						</a>
          					</div>
          					<h4>Visita al MUNCYT</h4>
          					<p>Para tener una mejor información sobre la ciencia y la tecnología se llevara a cabo el día 7 de Noviembre una visita al Museo Nacional De Ciencia Y Tecnología.</p>
        				</li>
        				<li class="last">
          					<div class="imgholder">
          						<a href="${resource(dir: 'images', file: 'slide3.jpg')}" data-gal="prettyPhoto[featured]" title="Third Featured Title">
          							<img src="${resource(dir: 'images', file: 'featured3.jpg')}" width="275" height="145" alt="" />
          						</a>
          					</div>
          					<h4>Visita a Bellas Artes</h4>
          					<p>Como cierre de las actividades de arte se tendrá la opción de ir al Instituto Nacional De Bellas Artes para una exposición.</p>
        				</li>
    	   			</ul>
    	  			<br class="clear" />
    			</article>
    			<br class="clear" />
  			</div>
  			<footer>
    			<p class="tagline_right">Design by José Fernando Silva Hernández</p>
    			<br class="clear" />
		 	</footer
		 </div>
	</body>
</html>