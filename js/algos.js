
var userInput1 = {name: "Steven", age: 54};
var userInput2 = {name: "Tamir", age: 54};


var trigger =  1;

if(Object.keys(userInput1).length == Object.keys(userInput2).length){
    Object.keys(userInput1).forEach(function(x){
        if(!userInput2.hasOwnProperty(x) == userInput1[x]) {
           trigger = 1;
            } else if(userInput2[x] == userInput1[x]) {
              trigger = 1;
                } else {
                  trigger = 0;
                
            return;
        }                      
                                              });
}

if(trigger)
    console.log("True");
else
    console.log("False");
//---------------------------------------------------------------------------------
//posso usar um loop de x vezes e ir cada hora puxando uma letra diferente, depois eu junto as letras e tenho uma palavra
function myFunction(str) {
  var newWord = [];
  var turns = Math.random()*10;
  for (var i = 0; i <= turns-1; i++) {
         var res = str.charAt(Math.random()*str.length);
           newWord.push(res)}
              return newWord
}

function longestUserInput(parameter) {
    var longest = 0;
    var output = {};
    for (var i = 0; i <= parameter.length - 1; i++) {
        if (longest < parameter[i].length) {
            longest = parameter[i].length;
            output = parameter[i];
        }
    }
    return output;
    
}
//-------------------------------------------
var str = "qwertyuiopasdfghjklzxcvbnm";
var words = []
//-------------------------------------------

var t = 0
while (t <= 10) {
words.push(myFunction(str).join(" and "));
console.log(myFunction(str))
t++;
}

console.log(longestUserInput("My name is mauricio ribeiro"))
console.log(longestUserInput("Dev Bootcamp Challenge"))
console.log(longestUserInput("Find the Longest Phrase"))
console.log(longestUserInput(words))


//function function_one() {
//  function_two(); 
//}


