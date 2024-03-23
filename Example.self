// Examples for SelfScript

// Variable usage
int x = 10; 

//if-else statements

whynot(x > 10){
giggle("x is greater than 10");
}
whynotagain(x < 10){
giggle("x is smaller than 10");
}
otherwise {
giggle("x is equal to 10");
}

// Constant usage and print function
var = PI;
giggle(var);


// Looping mechanism for while loop
loopy (int i = 0; i < 5; i++) {
    giggle("Count: " + i) ;
}

// Looping mechanism for for loop
loopy(x > 0){
	giggle(x);
	x = x-1;
}

// Define a method
metoot greet() {
    echo "Hello, World!";
}

// Call and print the method
giggle(greet());

// Return statement
metoot add(a, b) {
    echo a + b ;
}

var result = add(5, 3);
giggle("Result: " + result);


