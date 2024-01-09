create_product_card = (id, img, name, price) => {
	return `
	<a class="card" href="/product/${id}">
		<table>
			<tbody>
				<tr>
					<td><img src="${img}" alt=""></td>
				</tr>
				<tr style="padding-top: 15px;">
					<td><span class="desc">${name}</span><br></td>
				</tr>
				<tr>
					<td><span class="price">${price} ₽</span></td>
				</tr>
			</tbody>
		</table>
	</a>
	`
}

get_search = () => {
	let query = document.getElementById('id_query').value

	if (query) {
		let xhr = new XMLHttpRequest();

		let url = '/search/' + query;

		xhr.open('GET', url);
		xhr.send();
		xhr.responseType = 'json';

		xhr.onload = () => {
			let ans = xhr.response['products']
			console.log(ans)

			if (ans.length > 0){

				let data = ""

				for (let i=0; i<ans.length; i++){

					data = data + create_product_card(
						ans[i]['product']['id'],
						ans[i].img,
						ans[i].product.name,
						ans[i].product.price
					)
				}

				document.getElementById('results').innerHTML = data
				document.getElementById('search_results').style.display = 'block'
			} else {
				document.getElementById('search_results').style.display = 'none'
			}
		}
	} else {
		document.getElementById('search_results').style.display = 'none'
	}
}


jQuery(window).scroll(function() {
	let main = document.getElementById('id_main')

	if(jQuery(window).scrollTop() + jQuery(window).height() >=
		jQuery(document).height() - 15){

		if (global_locker == false) {
			global_locker = true

			let query = "/get_products/";
			if (ids.length > 0) {
				for (let i=0; i<ids.length; i++)
					query += `-${ids[i]}`
			}
			else {
				query += `-`
			}

			let xhr = new XMLHttpRequest();

			xhr.open('GET', query);
			xhr.send();
			xhr.responseType = 'json';

			xhr.onload = () => {
				let products = xhr.response['products']

				let container = document.getElementById('js_main_block')

				for (var i=0; i<products.length; i++){

					ids.push(products[i].id)

					container.innerHTML += create_product_card(
						products[i].id, products[i].img, products[i].name, products[i].price
					)

				}
			}

			global_locker = false
		}
	}
});
