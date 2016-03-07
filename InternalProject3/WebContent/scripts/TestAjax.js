/**
 * 
 */
(function(){
	
	var dataList = document.getElementById("json-testlist");
	var input = document.getElementById("testCode");

	//Create a new XMLHttpRequest.
	var request = new XMLHttpRequest();

	// Handle state changes for the request.
	request.onreadystatechange = function(response) {
		if (request.readyState === 4) {
			if (request.status === 200) {
				// Parse the JSON
				var jsonOptions = JSON.parse(request.responseText);
				// Loop over the JSON array.
				jsonOptions.forEach(function(item) {
					// Create a new <option> element.
					var option = document.createElement('option');
					// Set the value using the item in the JSON array.
					option.value = item.testCode;
					// Add the <option> element to the <datalist>.
					dataList.appendChild(option);
				});

			} else {
				// An error occured :(
				input.placeholder = "Couldn't load datalist options";
			}
		}
	};
	// Set up and make the request.
	request.open('GET', 'data/tests.json', true);
	request.send();
	
})();


function getTestDetails() {

	// Create a new XMLHttpRequest.
	var request = new XMLHttpRequest();

	var testCode = document.getElementById("testCode");
	var testName = document.getElementById("testName");
	var testAmt = document.getElementById("testAmt");

	request.onreadystatechange = function(response) {
		if (request.readyState === 4) {
			if (request.status === 200) {
				var jsonOptions = JSON.parse(request.responseText);
				jsonOptions.forEach(function(item) {
					if (item.testCode == testCode.value) {
						testName.value = item.testName;
						testAmt.value = item.price;
					}
				});
			}
		}
	}
	request.open('GET', 'data/tests.json', true);
	request.send();
}
