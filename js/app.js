(() => {
  "use strict";
  //console.log("Hackathon started");
  function getResults() {
    console.log('hit get results');
    const dataContainer = document.querySelector('.products');
    fetch('php/product/read.php')
    .then(res => res.json())
    .then(data => {
      console.log(data);
      data.forEach((item, index) => {
        let colorChips = document.createElement('ol');
        //create the color chips
        item.colors.forEach(color => {
          colorChips.innerHTML += `<li>
                                      <span>${color.color}</span>
                                      <span class="chip" style="background-color: ${color.color}"></span>
                                   </li>`;
        });
        // create the wrapper
        let newItem = document.createElement('li');
        newItem.innerHTML = `<span>${item.product_name}</span>
                             <span>${item.product_description}</span>
                             <span>${item.product_price}</span>`;
        // add it to the UL
        newItem.appendChild(colorChips);
        dataContainer.appendChild(newItem);
      });
    })
    .catch(function(error) {
      console.log(error);
    });
  }
  // fire off the fetch call
  getResults();
	
//variables
	var set = ["image01", "image02", "image03"];
	var listColours = document.querySelectorAll(".colourCircle");
	var imageShown = document.querySelector("#show");
	//console.log(listColours);

//functions
	function changeProduct(evt) {
		imageShown.src="images/" + set[evt.currentTarget.dataset.nav]+".jpg";
	}
	//console.log("from changeProduct");


//listeners 
	for(var i=0; i<listColours.length; i++){
		listColours[i].addEventListener("click", changeProduct, false);
	}
	
})();