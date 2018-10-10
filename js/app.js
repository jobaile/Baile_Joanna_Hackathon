(() => {
  //console.log("Hackathon started");
  "use strict";

  //variables
	var set = ["image01", "image02", "image03"];
	var listColours = document.querySelectorAll(".colourCircle");
	var imageShown = document.querySelector("#show");
    //console.log(listColours);
  var TopBtn = document.querySelector('#backToTop');
  var learnMore = document.querySelector('#learn');
  var details = document.querySelector(".products");
  
  //functions
  function changeProduct(evt) {
		imageShown.src="images/" + set[evt.currentTarget.dataset.nav]+".jpg";
	}
    //console.log("from changeProduct");

  //This tracks the scrolling
  function trackScroll() {
    console.log( 'top: '  + (window.pageYOffset || document.documentElement.scrollTop) + ' ' + 'left: ' + (window.pageXOffset || document.documentElement.scrollLeft) );
    var scroll = window.pageYOffset;
    if (scroll > 40) {
      TopBtn.style.display = ("block");
    }
    if (scroll < 40) {
      TopBtn.style.display = ("none");
    }
  }

  //Back To Top function
  function backToTop() {
    if (window.pageYOffset > 0) {
      window.scrollBy(0, -20);
      setTimeout(backToTop, 0);
    }
  }

  //Gets product info on click
  function getInfo(){
    function getResults() {
      details.style.display = "block";
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
                                     </li>`;
          });
          // create the wrapper
          let newItem = document.createElement('div');
          newItem.innerHTML = `<p>${item.product_description}</p>
                               <p>${item.product_price}</p>`;
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
      learnMore.removeEventListener('click', getInfo)
  }

//functions

//listeners 
	for(var i=0; i<listColours.length; i++){
		listColours[i].addEventListener("click", changeProduct, false);
  }

  learnMore.addEventListener('click', getInfo);
  window.addEventListener('scroll', trackScroll);
  TopBtn.addEventListener('click', backToTop);
	
})();