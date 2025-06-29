/**
 * 
 */

const totalData = window.itemsDataJsonCart;
const cartData = JSON.parse(localStorage.getItem("cartData")) || [];

const cartItemsContainer = document.querySelector(".item-cart-container");

const create = (ele) => {
	return document.createElement(ele);
}

const formatPrice = (p) => {
	let price = `${p}`
	if (!price.includes('.')) price = price + ".0";
	return price;
}


const constructCartItem = (item) => {
	const divItemCart = create("div");
	const divItemDetails = create("div");
	const divItemInfo = create("div");
	const divItemActions = create("div");
	const image = create("img");
	const strongName = create("strong");
	const strongPrice = create("strong");
	const pName = create("p");
	const pPrice = create("p");
	const buttonMinus = create("button");
	const buttonPlus = create("button");
	const spanCount = create("span");

	divItemCart.setAttribute("class", "item-cart");
	divItemDetails.setAttribute("class", "item-details");
	divItemInfo.setAttribute("class", "item-info");
	divItemActions.setAttribute("class", "item-actions");
	image.setAttribute("src", "/images/milk.jpeg");
	image.setAttribute("alt", "Something");

	strongName.innerText = "Name:";
	strongPrice.innerText = "Price:";
	buttonMinus.innerText = "-";
	buttonPlus.innerText = "+";
	spanCount.innerText = item.quantity;

	pName.append(strongName);
	pName.append(item.itemName);
	pPrice.append(strongPrice);
	pPrice.append(formatPrice(item.price));
	divItemInfo.append(pName);
	divItemInfo.append(pPrice);
	divItemDetails.append(image);
	divItemDetails.append(divItemInfo);
	divItemCart.append(divItemDetails);
	divItemActions.append(buttonMinus);
	divItemActions.append(spanCount);
	divItemActions.append(buttonPlus);
	divItemCart.append(divItemActions);
	cartItemsContainer.append(divItemCart);
}
cartData.forEach(item => {
	constructCartItem(item);
})