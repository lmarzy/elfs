<article class="product product--main">
			
			<div class="product--main__image">

				<img class="full-width" alt="{{ mainProduct.productImg.mainAlt }}" src="{{ mainProduct.productImg.main }}">
			
			</div>

			<div class="product--main__info">

				<header>
					
					<h1>{{ mainProduct.productTitle }}</h1>

					<p>&pound;{{ mainProduct.productPrice }} <span class="smallprint">inc postage</span></p>

				</header>
					
				<p>The set includes</p>

				<ul class="product--main__set">
					
					{% for info in mainProduct.productInfo %}

						<li>{{ info }}</li>

					{% endfor %}

				</ul>

				<p>The elf is approx 11inches long and comply with EN71 / CE safety regulations and are suitable from the age of 3+ due to small parts.</p>

				<p class="smallprint">Adult supervision is required. Please note these elf's are intended as an occasional/decorative toy.</p>

				<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post" class="product__buy">
					<input type="hidden" name="cmd" value="_s-xclick">
					<table>
					<tr><td><input type="hidden" name="on0" value="Select your Elf set">Select your Elf set</td></tr><tr><td><select name="os0">
						<option value="1 Girl Elf Set">1 Girl Elf Set £13.50 GBP</option>
						<option value="1 Boy Elf Set (Shorts)">1 Boy Elf Set (Shorts) £13.50 GBP</option>
						<option value="1 Boy Elf Set (Tunic)">1 Boy Elf Set (Tunic) £13.50 GBP</option>
						<option value="1 Girl, 1 Boy (Tunic) Set">1 Girl, 1 Boy (Tunic) Set £25.00 GBP</option>
						<option value="1 Girl, 1 Boy (Shorts) Set">1 Girl, 1 Boy (Shorts) Set £25.00 GBP</option>
					</select> </td></tr>
					<tr><td><input type="hidden" name="on1" value="Enter Children(s) Names">Enter Children(s) Names</td></tr><tr><td><input type="text" name="os1" maxlength="200"></td></tr>
					</table>
					<input type="hidden" name="currency_code" value="GBP">
					<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----
					">
					<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online.">
					<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
					</form>


			</div>

	</article>