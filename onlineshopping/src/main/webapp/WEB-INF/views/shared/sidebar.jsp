</br>
<!-- Gerekli Kategorilerin çekilmesi -->
<div class="list-group" style="background-color: #E89C1A;">

    <p class="lead" style="margin: 10px;"><strong>___Kategoriler___</strong></p>
    
	<c:forEach items="${categories}" var="category">
	
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" 
			onmouseover="this.style.backgroundColor = '#E88A1A';"
			onmouseout="this.style.backgroundColor ='#fff';"
		 >${category.name}</a>
		
	</c:forEach>
	
</div> 