var colors = ["gray", "blue", "black", "green"];
var names = ["Fred", "Jorge", "Tom", "Alex"];

colors.push("yellow");
names.push("John");
console.log(names)
//--------------------------------------------------
var objectx = {}

for (var i=0; i <names.length; i++) {
  objectx[names[i]] = colors[i];
}

console.log(objectx)

//--------------------------------------------------

var Car = function(brand, model, year, color){
  this.brand = brand;
  this.model = model;
  this.year = year;
  this.color = color;
  
  this.honk = function() { console.log("hoooonk"); };
}

var newCar = new Car("Bugatti", "Veyron", 2016, "Black");
console.log(newCar);
newCar.honk();
var newCar1 = new Car("GM", "Escalade", 2015, "Blue");
console.log(newCar1);
newCar1.honk();