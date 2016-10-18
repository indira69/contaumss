<style type="text/css" >
	.marginBottom-0 {margin-bottom:0;}

	.dropdown-submenu{position:relative;}
	.dropdown-submenu>.dropdown-menu{top:0;left:100%;margin-top:-6px;margin-left:-1px;-webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;}
	.dropdown-submenu>a:after{display:block;content:" ";float:right;width:0;height:0;border-color:transparent;border-style:solid;border-width:5px 0 5px 5px;border-left-color:#cccccc;margin-top:5px;margin-right:-10px;}
	.dropdown-submenu:hover>a:after{border-left-color:#555;}
	.dropdown-submenu.pull-left{float:none;}.dropdown-submenu.pull-left>.dropdown-menu{left:-100%;margin-left:10px;-webkit-border-radius:6px 0 6px 6px;-moz-border-radius:6px 0 6px 6px;border-radius:6px 0 6px 6px;}  
</style>

<script type="text/javascript">
(function($){
	$(document).ready(function(){
		$('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
			event.preventDefault(); 
			event.stopPropagation(); 
			$(this).parent().siblings().removeClass('open');
			$(this).parent().toggleClass('open');
		});
	});
})(jQuery);

</script>

<div  class="row">
    <div class="span12">
        <ul class="nav nav-tabs">	
 			<li >
 				<a href="<?=base_url();?>menuController/index" ><span class="glyphicon glyphicon-home"></span> Inicio </b></a>
 			</li>              

            <li class="dropdown" >
                <a href="<?=base_url();?>" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-list"></span> Contabilidad <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-pencil"></span> Comprobantes</a>
                    	<ul class="dropdown-menu">
                    		<li><a href="<?=base_url();?>contabilidad/comprobante?tipoComprobante=ingreso"><span class="glyphicon glyphicon-log-in"></span> Ingreso</a></li>
							<li><a href="<?=base_url();?>contabilidad/comprobante?tipoComprobante=egreso"><span class="glyphicon glyphicon-log-out"></span> Egreso</a></li>
							<li><a href="<?=base_url();?>contabilidad/comprobante?tipoComprobante=diario"><span class="glyphicon glyphicon-new-window"></span> Diario</a></li>
							<li><a href="<?=base_url();?>contabilidad/buscarComprobante"><span class="glyphicon glyphicon-edit"></span> Modificar</a></li>
							
							
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-unchecked"></span> Ajuste ...PENDIENTE</a></li>
							
							<li><a href="<?=base_url();?>contabilidad/verComprobante"><span class="glyphicon glyphicon-search"></span> Buscar</a></li>
							
						</ul>
					</li>
                    <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-list-alt"></span> Reportes</a>
                    	<ul class="dropdown-menu">
							<li><a href="<?=base_url();?>contabilidad/reporteContabilidad?reporte=DG"><span class="glyphicon glyphicon-book"></span> Libro Diario</a></li>
							<li><a href="<?=base_url();?>contabilidad/reporteContabilidad?reporte=MY"><span class="glyphicon glyphicon-book"></span> Libro Mayor</a></li>
							<li><a href="<?=base_url();?>contabilidad/reporteContabilidad?reporte=SS"><span class="glyphicon glyphicon-plus-sign"></span><span class="glyphicon glyphicon-minus-sign"></span> Balance Sumas y Saldos</a></li>
							<li><a href="<?=base_url();?>contabilidad/reporteContabilidad?reporte=BG"><span class="glyphicon glyphicon-book"></span><span class="glyphicon glyphicon-pencil"></span> Balance General</a></li>
							<li><a href="<?=base_url();?>contabilidad/reporteContabilidad?reporte=ER"><span class="glyphicon glyphicon-usd"></span><span class="glyphicon glyphicon-ok"></span> Estado de Resultados</a></li>
							
							<li><a href="#"><span class="glyphicon glyphicon-eye-open"></span> otros ....</a></li>
						</ul>
					</li>
					<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-pencil"></span> Cuentas</a>
                    	<ul class="dropdown-menu">
							<li><a href="<?=base_url();?>contabilidad/crudCuenta"><span class="glyphicon glyphicon-file"></span> CRUD Cuenta</a></li>
							<li><a href="<?=base_url();?>contabilidad/generarReportePlanDeCuentas"><span class="glyphicon glyphicon-print"></span> Plan de Cuentas</a></li>
						</ul>
					</li>
                    <li><a href="#"><span class="glyphicon glyphicon-calendar"></span> Iniciar Per&iacute;odo de  Gesti&oacute;n</a></li>
                    <li><a href="#">otros ...</a></li>
                </ul>
            </li>

            <li class="dropdown" >
                <a href="<?=base_url();?>" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-tasks"></span> Administraci&oacute;n <b class="caret"></b></a>
                <ul class="dropdown-menu">
                   
                    <li><a href="<?=base_url();?>menuController/respaldoBaseDatos"><span class="glyphicon glyphicon-floppy-save"></span> Respaldo Base  Datos</a></li>
                    <li><a href="#">otros ...</a></li>
                </ul>
            </li>
            
            <li >
 				<a href="<?=base_url();?>login/salir"  ><span class="glyphicon glyphicon-eject"></span> Salir </b></a>
 			</li> 

            </ul>
    </div>
</div>