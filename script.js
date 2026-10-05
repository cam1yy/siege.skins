// tuck shop calculator
// prices
var piePrice = 4.50;
var sausagePrice = 3.50;
var sandwichPrice = 5.00;
var hotdogPrice = 4.00;
var chipsPrice = 2.50;
var juicePrice = 3.00;
var waterPrice = 2.00;
var cookiePrice = 1.50;
var lollyPrice = 2.00;

var total = 0; // global total

function calc(){
  // get all the qtys
  var pies = document.getElementById("pie").value;
  var sausages = document.getElementById("sausage").value;
  var sandwiches = document.getElementById("sandwich").value;
  var hotdogs = document.getElementById("hotdog").value;
  var chips = document.getElementById("chips").value;
  var juice = document.getElementById("juice").value;
  var water = document.getElementById("water").value;
  var cookies = document.getElementById("cookie").value;
  var lollies = document.getElementById("lolly").value;

  // fix empty or negative values - kinda messy but works
  if(pies == "" || pies < 0) pies = 0;
  if(sausages == "" || sausages < 0) sausages = 0;
  if(sandwiches == "" || sandwiches < 0) sandwiches = 0;
  if(hotdogs == "" || hotdogs < 0) hotdogs = 0;
  if(chips == "" || chips < 0) chips = 0;
  if(juice == "" || juice < 0) juice = 0;
  if(water == "" || water < 0) water = 0;
  if(cookies == "" || cookies < 0) cookies = 0;
  if(lollies == "" || lollies < 0) lollies = 0;

  // make them numbers
  pies = parseInt(pies);
  sausages = parseInt(sausages);
  sandwiches = parseInt(sandwiches);
  hotdogs = parseInt(hotdogs);
  chips = parseInt(chips);
  juice = parseInt(juice);
  water = parseInt(water);
  cookies = parseInt(cookies);
  lollies = parseInt(lollies);

  // if NaN then set to 0
  if(isNaN(pies)) pies=0
  if(isNaN(sausages)) sausages=0
  if(isNaN(sandwiches)) sandwiches=0
  if(isNaN(hotdogs)) hotdogs=0
  if(isNaN(chips)) chips=0
  if(isNaN(juice)) juice=0
  if(isNaN(water)) water=0
  if(isNaN(cookies)) cookies=0
  if(isNaN(lollies)) lollies=0

  // calc total - not very efficient but easy to understand
  total = 0;
  total = total + (pies * piePrice);
  total = total + (sausages * sausagePrice);
  total = total + (sandwiches * sandwichPrice);
  total = total + (hotdogs * hotdogPrice);
  total = total + (chips * chipsPrice);
  total = total + (juice * juicePrice);
  total = total + (water * waterPrice);
  total = total + (cookies * cookiePrice);
  total = total + (lollies * lollyPrice);

  // show total
  document.getElementById("total").innerText = "$" + total.toFixed(2);

  // also update receipt
  updateReceipt(pies, sausages, sandwiches, hotdogs, chips, juice, water, cookies, lollies);

  // also calc change automatically so user sees it update
  calcChange2();

  console.log("total is " + total)
}

function updateReceipt(pies, sausages, sandwiches, hotdogs, chips, juice, water, cookies, lollies){
  var receiptDiv = document.getElementById("receipt");
  var itemsDiv = document.getElementById("receiptItems");
  var receiptTotal = document.getElementById("receiptTotal");

  // if total is 0 hide receipt
  if(total == 0){
    receiptDiv.style.display = "none";
    return;
  } else {
    receiptDiv.style.display = "block";
  }

  var html = "";
  // this is repetitive but it works lol
  if(pies > 0) html += "Meat Pie x" + pies + " = $" + (pies*piePrice).toFixed(2) + "<br>";
  if(sausages > 0) html += "Sausage Roll x" + sausages + " = $" + (sausages*sausagePrice).toFixed(2) + "<br>";
  if(sandwiches > 0) html += "Sandwich x" + sandwiches + " = $" + (sandwiches*sandwichPrice).toFixed(2) + "<br>";
  if(hotdogs > 0) html += "Hot Dog x" + hotdogs + " = $" + (hotdogs*hotdogPrice).toFixed(2) + "<br>";
  if(chips > 0) html += "Chips x" + chips + " = $" + (chips*chipsPrice).toFixed(2) + "<br>";
  if(juice > 0) html += "Juice Box x" + juice + " = $" + (juice*juicePrice).toFixed(2) + "<br>";
  if(water > 0) html += "Water x" + water + " = $" + (water*waterPrice).toFixed(2) + "<br>";
  if(cookies > 0) html += "Cookie x" + cookies + " = $" + (cookies*cookiePrice).toFixed(2) + "<br>";
  if(lollies > 0) html += "Lolly Bag x" + lollies + " = $" + (lollies*lollyPrice).toFixed(2) + "<br>";

  itemsDiv.innerHTML = html;
  receiptTotal.innerText = "$" + total.toFixed(2);
}

function calcChange(){
  // this one is called by button
  calcChange2();
}

function calcChange2(){
  // separate function but does same thing kinda messy
  var cashInput = document.getElementById("cash").value;
  var changeText = document.getElementById("changeText");
  var msg = document.getElementById("msg");

  if(cashInput == "") cashInput = 0;
  var cash = parseFloat(cashInput);

  if(isNaN(cash)){
    changeText.innerText = "Change: $0.00";
    return;
  }

  if(cash < 0){
    msg.innerText = "cash cant be negative lol";
    changeText.innerText = "Change: $0.00";
    return;
  } else {
    msg.innerText = "";
  }

  // if total is 0
  if(total == 0){
    changeText.innerText = "Change: $0.00";
    if(cash > 0){
      msg.innerText = "add some items first";
    }
    return;
  }

  var change = cash - total;

  if(change < 0){
    // not enough money
    changeText.innerText = "Change: -$" + Math.abs(change).toFixed(2);
    msg.innerText = "need $" + Math.abs(change).toFixed(2) + " more";
    changeText.style.color = "red";
  } else {
    changeText.innerText = "Change: $" + change.toFixed(2);
    msg.innerText = "thanks! enjoy your lunch";
    msg.style.color = "green";
    changeText.style.color = "black";
    // reset msg color after a bit? nah
  }
}

function resetAll(){
  // reset all inputs
  document.getElementById("pie").value = 0;
  document.getElementById("sausage").value = 0;
  document.getElementById("sandwich").value = 0;
  document.getElementById("hotdog").value = 0;
  document.getElementById("chips").value = 0;
  document.getElementById("juice").value = 0;
  document.getElementById("water").value = 0;
  document.getElementById("cookie").value = 0;
  document.getElementById("lolly").value = 0;
  document.getElementById("cash").value = 0;
  total = 0;
  document.getElementById("total").innerText = "$0.00";
  document.getElementById("changeText").innerText = "Change: $0.00";
  document.getElementById("changeText").style.color = "black";
  document.getElementById("msg").innerText = "";
  document.getElementById("receipt").style.display = "none";
  console.log("reset done")
}

// calc on load
calc();
