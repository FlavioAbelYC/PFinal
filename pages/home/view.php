
<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
           Nosotros
        </h2>

        <br>
    </div>
    
    <div class="col-lg-4 profesional center">
        <i class="fa fa-desktop"></i>
        <h3>Profesionales</h3>
        <p>Todos las personas que trabajan en esta empresa, tienen el titulo de tecnico mecanico, esto con el fin de tener personas capaces de trabajar con la experiencia necesaria.</p>
    </div>

    <div class="col-lg-4 friendly center">
        <i class="fa fa-user"></i>
        <h3>Amigables</h3>
        <p>El ambiente laboral es muy buena, ya que tanto como los jefes y los trabajadores tienen una relacion de respeto.</p>
    </div>

    <div class="col-lg-4 suitable center">
        <i class="fa fa-cog"></i>
        <h3>Calidad garantizada</h3>
        <p>Todos los trabajos realizados por la empresa, estan reconocidas por la mayoria de las mineras del sur del Perú</p>
    </div>
</div>

<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">Nuestros servicios</h2>
    </div>
    <div class="col-md-4">
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                      <i class="fa fa-circle fa-stack-2x text-primary"></i>
                      <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                </span> 
            </div>
            <div class="media-body">
                <h4 class="media-heading">Herramientas</h4>
                <p>La empresa cuenta con herramientas mas modernas para facilitar los procesos y acabado de los trabajos.</p>
            </div>
        </div>
        
    </div>
    <div class="col-md-4">
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                      <i class="fa fa-circle fa-stack-2x text-primary"></i>
                      <i class="fa fa-code fa-stack-1x fa-inverse"></i>
                </span> 
            </div>
            <div class="media-body">
                <h4 class="media-heading">Sistematizacion de procesos</h4>
                <p>Al trabajar en diferentes tipos de balanzas, nos encargamos de minimizar los procesos y maximizar los resultados.</p>
            </div>
        </div>
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                      <i class="fa fa-circle fa-stack-2x text-primary"></i>
                      <i class="fa fa-users fa-stack-1x fa-inverse"></i>
                </span> 
            </div>
            <div class="media-body">
                <h4 class="media-heading">Personal Capacitado</h4>
                <p>Nuestra empresa cuenta con personal capaz de realizar cualquier tipo de trabajo, sea en altura,calientes, etc. El persona cuenta con las capacitaciones actualizadas</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                      <i class="fa fa-circle fa-stack-2x text-primary"></i>
                      <i class="fa fa-camera fa-stack-1x fa-inverse"></i>
                </span> 
            </div>
            <div class="media-body">
                <h4 class="media-heading">Evidencia</h4>
                <p>Los jefes de la empresa se encargan de evidenciar todos los trabajos realizados para que las demas.</p>
            </div>
        </div>
    </div>
</div>

<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
            Portafolio
        </h2>

        <br>
    </div>
    
    <div class="row">
        <?php
        // Funcion para mostrar 6 registro del portafolio
        $query = mysqli_query($mysqli, "SELECT * FROM is_portfolio ORDER BY portfolio_id DESC LIMIT 6")
                                        or die('Hubo un error en la consulta : '.mysqli_error($mysqli));

        while($data = mysqli_fetch_assoc($query)) {
        ?>
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <a data-toggle="modal" class="open_modal" href="#" data-id="<?php echo $data['portfolio_id']; ?>">
                        <img src="images/portfolio/<?php echo $data['image']; ?>" alt="Portfolio">
                    </a>
                    <div class="caption">
                        <p><?php echo $data['title']; ?></p>
                    </div>
                </div>
            </div>
        <?php  
        }
        ?>
    </div>

    <div class="row">
        <div class="col-lg-12 col-md-12 center">
            <a style="width:150px" href="portfolio" class="btn btn-info"> Ver todo</a>
        </div>
    </div>
</div>

<div id="modal-form" class="modal" tabindex="-1">

</div>

<script type="text/javascript" src="assets/js/jquery.js"></script>

<!-- Javascript untuk popup modal Edit--> 
<script type="text/javascript">
   $(document).ready(function () {
   $(".open_modal").click(function(e) {
      var m = $(this).attr("data-id");
           $.ajax({
                   url: "pages/portfolio/modal.php",
                   type: "GET",
                   data : {id: m,},
                   success: function (ajaxData){
                   $("#modal-form").html(ajaxData);
                   $("#modal-form").modal('show',{backdrop: 'true'});
               }
               });
        });
      });
</script>
