/**
 * 
 */
var dataList = document.getElementById('json-datalist');
var input = document.getElementById('pCode');

// Create a new XMLHttpRequest.
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
				option.value = item.pCode;
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
request.open('GET', 'data/patients.json', true);
request.send();

function getValues() {
	var request = new XMLHttpRequest();
	var pCode = document.getElementById("pCode");
	var pName = document.getElementById("pName");
	var pAge = document.getElementById("pAge");
	var pPhone = document.getElementById("pPhone");
	var pEmail = document.getElementById("pEmail");

	request.onreadystatechange = function(response) {
		if (request.readyState === 4) {
			if (request.status === 200) {
				var jsonOptions = JSON.parse(request.responseText);
				jsonOptions.forEach(function(item) {
					if (item.pCode == pCode.value) {
						pName.value = item.pName;
						pAge.value = item.pAge;
						pPhone.value = item.pPhone;
						pEmail.value = item.pEmail;
					}
				});
			}
		}
	}
	request.open('GET', 'data/patients.json', true);
	request.send();
}

function getName() {
	var request = new XMLHttpRequest();
	var docCode = document.getElementById("docCode");
	var docName = document.getElementById("docName");
	
	request.onreadystatechange = function(response) {
		if (request.readyState === 4) {
			if (request.status === 200) {
				var jsonOptions = JSON.parse(request.responseText);
				jsonOptions.forEach(function(item) {
					if (item.docCode == docCode.value) {
						docName.value = item.docName;
						
					}
				});
			}
		}
	}
	request.open('GET', 'data/doctors.json', true);
	request.send();
}