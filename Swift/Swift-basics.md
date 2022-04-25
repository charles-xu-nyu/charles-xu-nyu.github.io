---
layout: default
title: Swift Basics
description: This section helps you with getting started with Swift.
---

# [Swift](https://developer.apple.com/swift/) Basics

## Contents
1. [Introduction](#introduction)
2. [Environment](#environment)
3. [Optionals](#optionals)
4. [Strings](#strings)
5. [Arrays](#arrays)
6. [Dictionaries](#dictionaries)
7. [Functions](#functions)

## Introduction

Swift is a fantastic way to write software, whether it’s for phones, desktops, servers, or anything else that runs code. It’s a safe, fast, and interactive programming language that combines the best in modern language thinking with wisdom from the wider Apple engineering culture and the diverse contributions from its open-source community. The compiler is optimized for performance and the language is optimized for development, without compromising on either.

Swift is friendly to new programmers. It’s an industrial-quality programming language that’s as expressive and enjoyable as a scripting language. Writing Swift code in a playground lets you experiment with code and see the results immediately, without the overhead of building and running an app.

Swift defines away large classes of common programming errors by adopting modern programming patterns:

- Variables are always initialized before use.
- Array indices are checked for out-of-bounds errors.
- Integers are checked for overflow.
- Optionals ensure that nil values are handled explicitly.
- Memory is managed automatically.
- Error handling allows controlled recovery from unexpected failures.
 
Swift code is compiled and optimized to get the most out of modern hardware. The syntax and standard library have been designed based on the guiding principle that the obvious way to write your code should also perform the best. Its combination of safety and speed make Swift an excellent choice for everything from “Hello, world!” to an entire operating system.

Swift combines powerful type inference and pattern matching with a modern, lightweight syntax, allowing complex ideas to be expressed in a clear and concise manner. As a result, code is not just easier to write, but easier to read and maintain as well.

## Environment

Swift provides a platform for learning purpose and we are going to setup the same. You need xCode software to start your Swift coding. Once you are comfortable with the concepts of Swift, you can use xCode IDE for iOS/OS x application development.

Xcode is currently available at [here](https://developer.apple.com/xcode/). You could also download from appstore.

Now you have xCode installed on your machine. Next, open Xcode from the Application folder and proceed after accepting the terms and conditions. If everything is fine, you will get the following screen −

![Welcome to Xcode](../images/welcome-to-xcode.png)

Select **Create a new Xcode Project** option and enter a name for project and select swift as your language. Finally, you will get the project window as follows −

![Project interface](../images/project-interface.png)

Following is the code taken from the default Swift project window.

```
//
//  ContentView.swift
//  Hello world
//
//  Created by Charles Xu on 4/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

When the above program gets loaded, it should display the following result in simulator result area (Right Hand Side).

![simulator](../images/simulator.png)

Congratulations, you have your Swift programming environment ready and you can proceed with your learning vehicle "Tutorials Point".

# Optionals

Swift also introduces **Optionals** type, which handles the absence of a value. Optionals say either "there is a value, and it equals x" or "there isn't a value at all".

An Optional is a type on its own, actually one of Swift’s new super-powered enums. It has two possible values, **None** and **Some(T)**, where **T** is an associated value of the correct data type available in Swift.

Here’s an optional Integer declaration −

```
var perhapsInt: Int?
```

Here’s an optional String declaration −

```
var perhapsStr: String?
```

The above declaration is equivalent to explicitly initializing it to nil which means no value −

```
var perhapsStr: String? = nil
```

Let's take the following example to understand how optionals work in Swift 4 −

```
var myString:String? = nil

if myString != nil {
   print(myString)
} else {
   print("myString has nil value")
}
```

When we run the above program using playground, we get the following result −

```
myString has nil value
```

Optionals are similar to using **nil** with pointers in Objective-C, but they work for any type, not just classes.

### Forced Unwrapping

If you defined a variable as **optional**, then to get the value from this variable, you will have to **unwrap** it. This just means putting an exclamation mark at the end of the variable.

Let's take a simple example −

```
var myString:String?

myString = "Hello, Swift!"

if myString != nil {
   print(myString)
} else {
   print("myString has nil value")
}
```

When we run the above program using playground, we get the following result −

```
Optional("Hello, Swift!")
```

Now let's apply unwrapping to get the correct value of the variable −

```
var myString:String?

myString = "Hello, Swift!"

if myString != nil {
   print( myString! )
} else {
   print("myString has nil value")
}
```

When we run the above program using playground, we get the following result.

```
Hello, Swift!
```

### Optional Binding

Use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.

An optional binding for the if statement is as follows −

```
if let constantName = someOptional {
   statements
}
```

Let's take a simple example to understand the usage of optional binding −

```
var myString:String?
myString = "Hello, Swift!"

if let yourString = myString {
   print("Your string has - \(yourString)")
} else {
   print("Your string does not have a value")
}
```

When we run the above program using playground, we get the following result −

```
Your string has - Hello, Swift!
```

## Strings

Strings in Swift are an ordered collection of characters, such as "Hello, World!" and they are represented by the Swift data type **String**, which in turn represents a collection of values of **Character** type.

### Create a String

You can create a String either by using a string literal or creating an instance of a String class as follows −

```
// String creation using String literal
var stringA = "Hello, Swift!"
print( stringA )

// String creation using String instance
var stringB = String("Hello, Swift!")
print( stringB )

//Multiple line string

let stringC = """
Hey this is a
example of multiple Line
string by Charles 

"""
print(stringC)
```

When the above code is compiled and executed, it produces the following result

```
Hello, Swift!
Hello, Swift!
Hey this is a
example of multiple Line
string by Charles
```

### Empty String

You can create an empty String either by using an empty string literal or creating an instance of String class as shown below. You can also check whether a string is empty or not using the Boolean property **isEmpty**.

```
// Empty string creation using String literal
var stringA = ""

if stringA.isEmpty {
   print( "stringA is empty" )
} else {
   print( "stringA is not empty" )
}

// Empty string creation using String instance
let stringB = String()

if stringB.isEmpty {
   print( "stringB is empty" )
} else {
   print( "stringB is not empty" )
}
```

When the above code is compiled and executed, it produces the following result −

```
stringA is empty
stringB is empty
```

### String Interpolation

String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal.

Each item (variable or constant) that you insert into the string literal is wrapped in a pair of parentheses, prefixed by a backslash. Here is a simple example −

```
var varA = 20
let constA = 100
var varC:Float = 20.0

var stringA = "\(varA) times \(constA) is equal to \(varC * 100)"
print( stringA )
```

When the above code is compiled and executed, it produces the following result −

```
20 times 100 is equal to 2000.0
```

### String Concatenation

You can use the + operator to concatenate two strings or a string and a character, or two characters. Here is a simple example −

```
let constA = "Hello,"
let constB = "World!"

var stringA = constA + constB
print( stringA )
```

When the above code is compiled and executed, it produces the following result −

```
Hello,World!
```

### String Length

Swift strings do not have a **length** property, but you can use the global count() function to count the number of characters in a string. Here is a simple example −

```
var varA = "Hello, Swift!"

print( "\(varA), length is \((varA.count))" )
```

When the above code is compiled and executed, it produces the following result −

```
Hello, Swift!, length is 13
```

### String Comparison

You can use the == operator to compare two strings variables or constants. Here is a simple example −

```
var varA = "Hello, Swift!"
var varB = "Hello, World!"

if varA == varB {
   print( "\(varA) and \(varB) are equal" )
} else {
   print( "\(varA) and \(varB) are not equal" )
}
```

When the above code is compiled and executed, it produces the following result −

```
Hello, Swift! and Hello, World! are not equal
```

### String Iterating

Strings are again a collection of values in swift 4, so we can iterate over string using loops. −

```
for chars in "ThisString" {
   print(chars, terminator: " ")
}
```

When the above code is compiled and executed, it produces the following result −

```
T h i s S t r i n g
```

### Unicode Strings

You can access a UTF-8 and UTF-16 representation of a String by iterating over its utf8 and utf16 properties as demonstrated in the following example −

```
var unicodeString = "Dog???"

print("UTF-8 Codes: ")
for code in unicodeString.utf8 {
   print("\(code) ")
}

print("\n")

print("UTF-16 Codes: ")
for code in unicodeString.utf16 {
   print("\(code) ")
}
```

When the above code is compiled and executed, it produces the following result −

```
UTF-8 Codes: 
68 
111 
103 
63 
63 
63 


UTF-16 Codes: 
68 
111 
103 
63 
63 
63
```

### String Functions & Operators

Swift supports a wide range of methods and operators related to Strings −

| **Sr.No** |             **Functions/Operators**            |                                                    **Purpose**                                                   |
|:---------:|:----------------------------------------------:|:----------------------------------------------------------------------------------------------------------------:|
|     1     |                   **isEmpty**                  |                         A Boolean value that determines whether a string is empty or not.                        |
|     2     |          **hasPrefix(prefix: String)**         |            Function to check whether a given parameter string exists as a prefix of the string or not.           |
|     3     |          **hasSuffix(suffix: String)**         |            Function to check whether a given parameter string exists as a suffix of the string or not.           |
|     4     |                   **toInt()**                  |                              Function to convert numeric String value into Integer.                              |
|     5     |                   **count()**                  |                          Global function to count the number of Characters in a string.                          |
|     6     |                    **utf8**                    |                              Property to return a UTF-8 representation of a string.                              |
|     7     |                    **utf16**                   |                              Property to return a UTF-16 representation of a string.                             |
|     8     |               **unicodeScalars**               |                          Property to return a Unicode Scalar representation of a string.                         |
|     9     |                      **+**                     |               Operator to concatenate two strings, or a string and a character, or two characters.               |
|     10    |                     **+=**                     |                          Operator to append a string or character to an existing string.                         |
|     11    |                     **==**                     |                                Operator to determine the equality of two strings.                                |
|     12    |                      **<**                     | Operator to perform a lexicographical comparison to determine whether one string evaluates as less than another. |
|     13    |                 **startIndex**                 |                                   To get the value at starting index of string.                                  |
|     14    |                  **endIndex**                  |                                    To get the value at ending index of string.                                   |
|     15    |                   **Indices**                  |                  To access the indeces one by one. i.e all the characters of string one by one.                  |
|     16    |        **insert("Value", at: position)**       |                                         To insert a value at a position.                                         |
|     17    | **remove(at: position) removeSubrange(range)** |                   to remove a value at a position, or to remove a range of values from string.                   |
|     18    |                 **reversed()**                 |                                          returns the reverse of a string                                         |

## Arrays

Swift arrays are used to store ordered lists of values of the same type. Swift puts strict checking which does not allow you to enter a wrong type in an array, even by mistake.

If you assign a created array to a variable, then it is always mutable, which means you can change it by adding, removing, or changing its items; but if you assign an array to a constant, then that array is immutable, and its size and contents cannot be changed.

### Creating Arrays

You can create an empty array of a certain type using the following initializer syntax −

```
var someArray = [SomeType]()
```

Here is the syntax to create an array of a given size a* and initialize it with a value −

```
var someArray = [SomeType](count: NumbeOfElements, repeatedValue: InitialValue)
```

You can use the following statement to create an empty array of Int type having 3 elements and the initial value as zero −

```
var someInts = [Int](count: 3, repeatedValue: 0)
```

Following is one more example to create an array of three elements and assign three values to that array −

```
var someInts:[Int] = [10, 20, 30]
```

### Accessing Arrays

You can retrieve a value from an array by using **subscript** syntax, passing the index of the value you want to retrieve within square brackets immediately after the name of the array as follows −

```
var someVar = someArray[index]
```

Here, the **index** starts from 0 which means the first element can be accessed using the index as 0, the second element can be accessed using the index as 1 and so on.

### Modifying Arrays

You can use **append()** method or addition assignment operator (+=) to add a new item at the end of an array. Take a look at the following example. Here, initially, we create an empty array and then add new elements into the same array −

```
var someInts = [Int]()

someInts.append(20)
someInts.append(30)
someInts += [40]

var someVar = someInts[0]

print( "Value of first element is \(someVar)" )
print( "Value of second element is \(someInts[1])" )
print( "Value of third element is \(someInts[2])" )
```

When the above code is compiled and executed, it produces the following result −

```
Value of first element is 20
Value of second element is 30
Value of third element is 40
```

You can modify an existing element of an Array by assigning a new value at a given index as shown in the following example −

```
var someInts = [Int]()

someInts.append(20)
someInts.append(30)
someInts += [40]

// Modify last element
someInts[2] = 50

var someVar = someInts[0]

print( "Value of first element is \(someVar)" )
print( "Value of second element is \(someInts[1])" )
print( "Value of third element is \(someInts[2])" )
```

When the above code is compiled and executed, it produces the following result −

```
Value of first element is 20
Value of second element is 30
Value of third element is 50
```

### Iterating Over an Array

You can use **for-in** loop to iterate over the entire set of values in an array as shown in the following example −

```
var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]
for item in someStrs {
   print(item)
}
```

When the above code is compiled and executed, it produces the following result −

```
Apple
Amazon
Google
```

You can use **enumerate()** function which returns the index of an item along with its value as shown below in the following example −

```
var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]

for (index, item) in someStrs.enumerated() {
   print("Value at index = \(index) is \(item)")
}
```

When the above code is compiled and executed, it produces the following result −

```
Value at index = 0 is Apple
Value at index = 1 is Amazon
Value at index = 2 is Google
```

## Dictionaries

Swift **dictionaries** are used to store unordered lists of values of the same type. Swift puts strict checking which does not allow you to enter a wrong type in a dictionary even by mistake.

Swift dictionaries use unique identifier known as a **key** to store a value which later can be referenced and looked up through the same key. Unlike items in an array, items in a **dictionary** do not have a specified order. You can use a **dictionary** when you need to look up values based on their identifiers.

A dictionary key can be either an integer or a string without a restriction, but it should be unique within a dictionary.

If you assign a created dictionary to a variable, then it is always mutable which means you can change it by adding, removing, or changing its items. But if you assign a dictionary to a constant, then that dictionary is immutable, and its size and contents cannot be changed.

### Creating Dictionary

You can create an empty dictionary of a certain type using the following initializer syntax −

```
var someDict = [KeyType: ValueType]()
```

You can use the following simple syntax to create an empty dictionary whose key will be of Int type and the associated values will be strings −

```
var someDict = [Int: String]()
```

Here is an example to create a dictionary from a set of given values −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
```

### Sequence Based Initialization

Swift allows you to create Dictionary from arrays (Key-Value Pairs.)

```
var cities = [“Delhi”,”Bangalore”,”Hyderabad”]
```

You can use the following simple syntax to create an empty dictionary whose key will be of Int type and the associated values will be strings −

```
var Distance = [2000,10, 620]
```

Here is an example to create a dictionary from a set of given values −

```
let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))
```

The above lines of code will create a dictionary with Cities as key and Distance as Value −

### Filtering

Swift allows you to filter values from a dictionary.

```
var closeCities = cityDistanceDict.filter { $0.value < 1000 }
```

### Dictionary Grouping

Swift allows you to create grouping of Dictionary values.

```
var cities = ["Delhi","Bangalore","Hyderabad","Dehradun","Bihar"]
```

You can use the following simple syntax to group the values of dictionary according to first alphabet.

```
var GroupedCities = Dictionary(grouping: cities ) { $0.first! }
```

### Accessing Dictionaries

You can retrieve a value from a dictionary by using subscript syntax, passing the key of the value you want to retrieve within square brackets immediately after the name of the dictionary as follows −

```
var someVar = someDict[key]
```

Let's check the following example to create, initialize, and access values from a dictionary −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someVar = someDict[1]

print( "Value of key = 1 is \(someVar)" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )
```

When the above code is compiled and executed, it produces the following result −

```
Value of key = 1 is Optional("One")
Value of key = 2 is Optional("Two")
Value of key = 3 is Optional("Three")
```

### Modifying Dictionaries

You can use **updateValue(forKey:)** method to add an existing value to a given key of the dictionary. This method returns an optional value of the dictionary's value type. Here is a simple example −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var oldVal = someDict.updateValue("New value of one", forKey: 1)
var someVar = someDict[1]

print( "Old value of key = 1 is \(oldVal)" )
print( "Value of key = 1 is \(someVar)" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )
```

When the above code is compiled and executed, it produces the following result −

```
Old value of key = 1 is Optional("One")
Value of key = 1 is Optional("New value of one")
Value of key = 2 is Optional("Two")
Value of key = 3 is Optional("Three")
```

You can modify an existing element of a dictionary by assigning new value at a given key as shown in the following example −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var oldVal = someDict[1]
someDict[1] = "New value of one"
var someVar = someDict[1]

print( "Old value of key = 1 is \(oldVal)" )
print( "Value of key = 1 is \(someVar)" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )
```

When the above code is compiled and executed, it produces the following result −

```
Old value of key = 1 is Optional("One")
Value of key = 1 is Optional("New value of one")
Value of key = 2 is Optional("Two")
Value of key = 3 is Optional("Three")
```

### Remove Key-Value Pairs

You can use **removeValueForKey()** method to remove a key-value pair from a dictionary. This method removes the key-value pair if it exists and returns the removed value, or returns nil if no value existed. Here is a simple example −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var removedValue = someDict.removeValue(forKey: 2)

print( "Value of key = 1 is \(someDict[1])" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )
```

When the above code is compiled and executed, it produces the following result −

```
Value of key = 1 is Optional("One")
Value of key = 2 is nil
Value of key = 3 is Optional("Three")
```

You can also use subscript syntax to remove a key-value pair from a dictionary by assigning a value of **nil** for that key. Here is a simple example −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

someDict[2] = nil

print( "Value of key = 1 is \(someDict[1])" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )
```

When the above code is compiled and executed, it produces the following result −

```
Value of key = 1 is Optional("One")
Value of key = 2 is nil
Value of key = 3 is Optional("Three")
```

### Iterating Over a Dictionary

You can use a **for-in** loop to iterate over the entire set of key-value pairs in a Dictionary as shown in the following example −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

for (index, keyValue) in someDict.enumerated() {
   print("Dictionary key \(index) - Dictionary value \(keyValue)")
}
```

When the above code is compiled and executed, it produces the following result −

```
Dictionary key 0 - Dictionary value (key: 3, value: "Three")
Dictionary key 1 - Dictionary value (key: 1, value: "One")
Dictionary key 2 - Dictionary value (key: 2, value: "Two")
```

You can use **enumerate()** function which returns the index of the item along with its (key, value) pair as shown below in the example −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
for (key, value) in someDict.enumerated() {
   print("Dictionary key \(key) - Dictionary value \(value)")
}
```

When the above code is compiled and executed, it produces the following result −

```
Dictionary key 0 - Dictionary value (key: 1, value: "One")
Dictionary key 1 - Dictionary value (key: 2, value: "Two")
Dictionary key 2 - Dictionary value (key: 3, value: "Three")
```

### Convert to Arrays

You can extract a list of key-value pairs from a given dictionary to build separate arrays for both keys and values. Here is an example −

```
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

let dictKeys = [Int](someDict.keys)
let dictValues = [String](someDict.values)

print("Print Dictionary Keys")

for (key) in dictKeys {
   print("\(key)")
}
print("Print Dictionary Values")

for (value) in dictValues {
   print("\(value)")
}
```

When the above code is compiled and executed, it produces the following result −

```
Print Dictionary Keys
1
3
2
Print Dictionary Values
One
Three
Two
```

## The count Property

You can use the read-only **count** property of a dictionary to find out the number of items in a dictionary as shown below −

```
var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someDict2:[Int:String] = [4:"Four", 5:"Five"]

print("Total items in someDict1 = \(someDict1.count)")
print("Total items in someDict2 = \(someDict2.count)")
```

When the above code is compiled and executed, it produces the following result −

```
Total items in someDict1 = 3
Total items in someDict2 = 2
```

### The empty Property
You can use read-only **empty** property of a dictionary to find out whether a dictionary is empty or not, as shown below −

```
var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someDict2:[Int:String] = [4:"Four", 5:"Five"]
var someDict3:[Int:String] = [Int:String]()

print("someDict1 = \(someDict1.isEmpty)")
print("someDict2 = \(someDict2.isEmpty)")
print("someDict3 = \(someDict3.isEmpty)")
```

When the above code is compiled and executed, it produces the following result −

```
someDict1 = false
someDict2 = false
someDict3 = true
```

## Functions

A function is a set of statements organized together to perform a specific task. A Swift function can be as simple as a simple C function to as complex as an Objective C language function. It allows us to pass local and global parameter values inside the function calls.

- **Function Declaration** − tells the compiler about a function's name, return type, and parameters.

- **Function Definition** − It provides the actual body of the function.

Swift functions contain parameter type and its return types.

### Function Definition

In Swift, a function is defined by the "func" keyword. When a function is newly defined, it may take one or several values as input 'parameters' to the function and it will process the functions in the main body and pass back the values to the functions as output 'return types'.

Every function has a function name, which describes the task that the function performs. To use a function, you "call" that function with its name and pass input values (known as arguments) that match the types of the function's parameters. Function parameters are also called as 'tuples'.

A function's arguments must always be provided in the same order as the function's parameter list and the return values are followed by →.

```
func funcname(Parameters) -> returntype {
   Statement1
   Statement2
   ---
   Statement N
   return parameters
}
```

Take a look at the following code. The student’s name is declared as string datatype declared inside the function 'student' and when the function is called, it will return student’s name.

```
func student(name: String) -> String {
   return name
}

print(student(name: "First Program"))
print(student(name: "About Functions"))
```

When we run the above program using playground, we get the following result −

```
First Program
About Functions
```

### Calling a Function

Let us suppose we defined a function called 'display' to Consider for example to display the numbers a function with function name 'display' is initialized first with argument 'no1' which holds integer data type. Then the argument 'no1' is assigned to argument 'a' which hereafter will point to the same data type integer. Now the argument 'a' is returned to the function. Here display() function will hold the integer value and return the integer values when each and every time the function is invoked.

```
func display(no1: Int) -> Int {
   let a = no1
   return a
}

print(display(no1: 100))
print(display(no1: 200))
```

When we run above program using playground, we get the following result −

```
100
200
```

### Parameters and Return Values

Swift provides flexible function parameters and its return values from simple to complex values. Similar to that of C and Objective C, functions in Swift may also take several forms.

A function is accessed by passing its parameter values to the body of the function. We can pass single to multiple parameter values as tuples inside the function.

```
func mult(no1: Int, no2: Int) -> Int {
   return no1*no2
}

print(mult(no1: 2, no2: 20))
print(mult(no1: 3, no2: 15))
print(mult(no1: 4, no2: 30))
```

When we run above program using playground, we get the following result −

```
40
45
120
```

### Functions without Parameters

We may also have functions without any parameters.
