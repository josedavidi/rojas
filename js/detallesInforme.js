$(document).ready(function(){
	$('#btn_showInfomrme').click(function(){
		var etiId = $(this).parents('tr').find('td')[0].innerHTML;
		$.ajax({
			url:'views/detalleInforme.php',
			type:'GET',
			data:'eti='+etiId,
			bedoreSend:function(){
				$('#shoInforme').html('Cargando...');
			},
			success:function(res){
				$('#shoInforme').html(res);
			}
		})
		
	})
})