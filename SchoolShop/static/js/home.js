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

					data = data + `
					<a class="card" href="/product/${ans[i]['product']['id']}">
						<table>
							<tbody>
							<tr>
								<td><img src="${ans[i].img}" alt=""></td>
							</tr>
							<tr style="padding-top: 15px;">
								<td><span class="desc">${ans[i].product.name}</span><br></td>
							</tr>
							<tr>
								<td><span class="price">${ans[i].product.price} ₽</span></td>
							</tr>
							</tbody>
						</table>
					</a>
					`
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