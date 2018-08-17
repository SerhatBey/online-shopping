$(function() {
	
	//jquery DataTable için Kod.
	
	
	var $table = $('#productListTable');
		
		
	if($table.length){
		//console.log('Tablo başarılı.!');	
		
		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		}
		else {
			jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';
		}
		
		$table.DataTable({
			lengthMenu: [[3,5,10,-1],['3 Kayıt', '5 Kayıt', '10 Kayıt', 'Tümü']],
			pageLength:5,
			ajax:{
				url : jsonUrl,
				dataSrc : ''					
			},
			
			columns : [
						{
							data: 'code',
							mRender: function(data, type, row){
								return '<img src="'+window.contextRoot+'/resources/images/imgProducts/'+data+'.png" style="width: 120px; height: 100px;" class="aw-zoom" />';
							}
						},
						{
							data: 'name'
						},
						{
							data: 'brand'
						},
						{
							data: 'unitPrice',
							mRender: function(data, type, row){
								return data + ' &#8378;'
							}	
						},
						{
							data: 'quantity',
								mRender: function(data, type, row){
									if(data < 1){
										return '<span style="color:red">Stoklar tükendi.</span>';
										
									}else{
										return data;
									}
								}
						},
						{
							data: 'id',
							bSortable : false,
							mRender: function(data, type, row){
								
								var str='';
								str += '<a href="' +window.contextRoot+ '/show/'+data+'/product" class="btn btn-primary" ><span class="glyphicon glyphicon-eye-open"></span></a> &#160;';
								
								if (row.quantity < 1) {
									
									str += '<a href="javascript:void(0)" class="btn btn-success disabled"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
									
								} else {
									str += '<a href="' +window.contextRoot+ '/cart/add/'+data+'/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
								}		
								
								return str;
							}
						}
			         ]
			
		});	
	}

	
});


	