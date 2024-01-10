function calculate_panels(inches) {
	if (Number.isInteger(inches / 3) == false) {
		return NaN;		
	}
	var max_panels = Math.ceil(inches / 18)+2;
	var options = {};
	for (const a of Array(max_panels).keys()) {
		// 24
		for (const b of Array(max_panels).keys()) {
			// 21
			for (const c of Array(max_panels).keys()) {
				if ((a*24)+(b*21)+(c*18) == inches) {
					// match
					item = {'24': a, '21': b, '18': c};
					item["commercial"] = (a > 0);
					panels = (a+b+c);
					item["bundles"] = (Math.ceil(a/2)+Math.ceil(b/2)+Math.ceil(c/2));
					item["panels"] = panels;
					alphabet = "abcdefghijklmnopqrstuvwxyz";
					letter = alphabet[Math.floor(Math.random() * alphabet.length)];
					label = panels + letter;
					options[label] = item;
				}
			}
		}
	}
	result = [];
	var keys = Object.keys(options);
	keys.sort();
	for (var i=0; i<keys.length; i++) {
		var key = keys[i];
		var value = options[key];
		result.push(value);
	} 
	return result;
}

function onFormFilled() {
	var input1 = document.getElementById("icon_prefix1").valueAsNumber;
	var input2 = document.getElementById("icon_prefix2").valueAsNumber;
	var input = (input1 * 12) + input2;
	console.log(input);
	htmltxt = "<li class='collection-item avatar'><i class='material-icons circle red'>sentiment_dissatisfied</i><span class='title'>Error</span><p>Cannot calculate panels.</p></li>";
	document.getElementById("fillme").innerHTML = htmltxt;
	window.htmltxt = "";
	result = calculate_panels(input);
	window.result = result;
	if (result.forEach == undefined) {
		return false;
	}
	result.forEach(function (item, index) {
		var color = ["green","blue"][ + item["commercial"] ];
		var subtext = "<li class='collection-item avatar'>";
		subtext = subtext + "<i class='material-icons circle " + color + "'>confirmation_number</i>";
		subtext = subtext + "<span class='title'>" + item["panels"] + " panels</span>";
		subtext = subtext + "<p>" + item["24"] + " 24's <br>";
		subtext = subtext + " " + item["21"] + " 21's <br> " + item["18"] + " 18's";
		rc = "Residential";
		if (item["commercial"] == true) {
			rc = "Commercial";
		} 
		subtext = subtext + "</p><span class='secondary-content'><b>" + rc + "</b></span></li>";
		window.htmltxt = window.htmltxt + subtext;
	});
	document.getElementById("fillme").innerHTML = window.htmltxt;
	return false;
};