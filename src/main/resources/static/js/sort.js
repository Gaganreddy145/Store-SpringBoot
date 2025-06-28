/**
 * 
 */

 const sortByPrice = () => {
	 const data = window.itemsDataJson;
	 const cardContainer = document.querySelector(".items-container");
	 //const data = JSON.parse(cardContainer.dataset.category);
	 const childrens = Array.from(cardContainer.children);
	 data.sort((a,b) => a.price - b.price)
	 childrens.map((card,index) => {
		 card.children[1].innerHTML = data[index].itemName;
		 let price = `${data[index].price}`
		 if(!price.includes('.')) price = price + ".0";
		 card.children[2].innerHTML = `Price: ${price}`; 
	 })
 }