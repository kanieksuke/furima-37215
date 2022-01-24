function subtract (){
  const itemPrice = document.getElementById("item-price")
  itemPrice.addEventListener("keyup", () => {
    const discountVal = itemPrice.value / 10;
    const addTaxPrice = document.getElementById("add-tax-price");
    addTaxPrice.innerHTML = `${discountVal}`;
    const subtractVal = itemPrice.value - discountVal;
    const profit = document.getElementById("profit");
    profit.innerHTML = `${subtractVal}`;
  });
};

window.addEventListener('load', subtract);