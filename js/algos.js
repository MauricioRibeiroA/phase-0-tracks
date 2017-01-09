

function longestUserInput(parameter) {
    var str = parameter.split(" ");
    var longest = 0;
    var Output = {};
    for (var i = 0; i <= str.length - 1; i++) {
        if (longest < str[i].length) {
            longest = str[i].length;
            Output = str[i];
        }
    }
    return Output;
}

console.log(longestUserInput("My name is mauricio ribeiro"))
console.log(longestUserInput("Dev Bootcamp Challenge"))
console.log(longestUserInput("Find the Longest Phrase"))


//----------------------------------------------------------------------------------
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
var str = "qwertyuiopasdfghjklzxcvbnm";
var newWord = []

//posso usar um loop de x vezes e ir cada hora puxando uma letra diferente, depois eu junto as letras e tenho uma palavra
function myFunction() {
  var turns = Math.random()*10;
  for (var i = 0; i <= turns-1; i++) {
         var res = str.charAt(Math.random()*str.length);
           newWord.push(res)}
              return newWord
}

console.log(myFunction());

