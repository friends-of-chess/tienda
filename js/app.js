(function(){
	$.get("productos.php", function(productos) {

  		// Acciones a realizar cuando se obtiene una respuesta
  		//console.log(productos);

  		$.each(productos, function(index, producto){
  			$('#productos').append('<tr><td class="celda">' + producto.nombre + '</td><td>'+ producto.precio +' €</td></tr>');
  		});

	});
})();