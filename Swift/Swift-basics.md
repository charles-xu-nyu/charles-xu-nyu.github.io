---
layout: default
title: Swift Basics
description: This section helps you with getting started with Swift.
---

# [Swift](https://developer.apple.com/swift/) Basics

All the code could be found in my [Github](./Swift), feel free to download and run on your own PC.

## Contents
1. [Introduction](#introduction)
2. [Environment](#environment)
3. [Optionals](#optionals)
4. [Strings](#strings)
5. [Arrays](#arrays)
6. [Dictionaries](#dictionaries)
7. [Functions](#functions)
8. [Enumerations](#enumerations)
9. [Structures](#structures)
10. [Classes](#classes)

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

### Syntax

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

```
func funcname() -> datatype {
   return datatype
}
```

Following is an example having a function without a parameter −

```
func votersname() -> String {
   return "Charles"
}
print(votersname()) 
```

When we run the above program using playground, we get the following result −

```
Charles
```

### Functions with Return Values

Functions are also used to return string, integer, and float data type values as return types. To find out the largest and smallest number in a given array function 'ls' is declared with large and small integer datatypes.

An array is initialized to hold integer values. Then the array is processed and each and every value in the array is read and compared for its previous value. When the value is lesser than the previous one it is stored in 'small' argument, otherwise it is stored in 'large' argument and the values are returned by calling the function.

```
func ls(array: [Int]) -> (large: Int, small: Int) {
   var lar = array[0]
   var sma = array[0]

   for i in array[1..<array.count] {
      if i < sma {
         sma = i
      } else if i > lar {
         lar = i
      }
   }
   return (lar, sma)
}

let num = ls(array: [40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")
```

When we run the above program using playground, we get the following result −

```
Largest number is: 98 and smallest number is: -5
```

### Functions without Return Values

Some functions may have arguments declared inside the function without any return values. The following program declares **a** and **b** as arguments to the sum() function. inside the function itself the values for arguments **a** and **b** are passed by invoking the function call sum() and its values are printed thereby eliminating return values.

```
func sum(a: Int, b: Int) {
   let a = a + b
   let b = a - b
   print(a, b)
}

sum(a: 20, b: 10)
sum(a: 40, b: 10)
sum(a: 24, b: 6)
```

When we run the above program using playground, we get the following result −

```
30 20
50 40
30 24
```

### Functions with Optional Return Types

Swift introduces 'optional' feature to get rid of problems by introducing a safety measure. Consider for example we are declaring function values return type as integer but what will happen when the function returns a string value or either a nil value. In that case compiler will return an error value. 'optional' are introduced to get rid of these problems.

Optional functions will take two forms 'value' and a 'nil'. We will mention 'Optionals' with the key reserved character '?' to check whether the tuple is returning a value or a nil value.

```
func minMax(array: [Int]) -> (min: Int, max: Int)? {
   if array.isEmpty { return nil }
   var currentMin = array[0]
   var currentMax = array[0]
   
   for value in array[1..<array.count] {
      if value < currentMin {
         currentMin = value
      } else if value > currentMax {
         currentMax = value
      }
   }
   return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
   print("min is \(bounds.min) and max is \(bounds.max)")
}
```

When we run above program using playground, we get following result −

```
min is -6 and max is 109
```

''Optionals' are used to check 'nil' or garbage values thereby consuming lot of time in debugging and make the code efficient and readable for the user.

### Functions Local Vs External Parameter Names

**Local Parameter Names**

Local parameter names are accessed inside the function alone.

```
func sample(number: Int) {
   print(number)
}
```

Here, the **func** sample argument number is declared as internal variable since it is accessed internally by the function sample(). Here the 'number' is declared as local variable but the reference to the variable is made outside the function with the following statement −

```
func sample(number: Int) {
   print(number)
}

sample(number: 1)
sample(number: 2)
sample(number: 3)
```

When we run the above program using playground, we get the following result −

```
1
2
3
```

**External Parameter Names**

External parameter names allow us to name a function parameters to make their purpose more clear. For example below you can name two function parameters and then call that function as follows −

```
func pow(firstArg a: Int, secondArg b: Int) -> Int {
   var res = a
   for _ in 1..<b {
      res = res * a
   }
   print(res)
   return res
}

pow(firstArg:5, secondArg:3)
```

When we run the above program using playground, we get the following result −

```
125
```

### Variadic Parameters

When we want to define function with multiple number of arguments, then we can declare the members as 'variadic' parameters. Parameters can be specified as variadic by (···) after the parameter name.

```
func vari<N>(members: N...){
   for i in members {
      print(i)
   }
}

vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Swift", "Enumerations", "Closures")
```

When we run the above program using playground, we get the following result −

```
4
3
5
4.5
3.1
5.6
Swift
Enumerations
Closures
```

### Constant, Variable and I/O Parameters

Functions by default consider the parameters as 'constant', whereas the user can declare the arguments to the functions as variables also. We already discussed that 'let' keyword is used to declare constant parameters and variable parameters is defined with 'var' keyword.

I/O parameters in Swift provide functionality to retain the parameter values even though its values are modified after the function call. At the beginning of the function parameter definition, 'inout' keyword is declared to retain the member values.

It derives the keyword 'inout' since its values are passed 'in' to the function and its values are accessed and modified by its function body and it is returned back 'out' of the function to modify the original argument.

Variables are only passed as an argument for in-out parameter since its values alone are modified inside and outside the function. Hence no need to declare strings and literals as in-out parameters. '&' before a variable name refers that we are passing the argument to the in-out parameter.

```
func temp(a1: inout Int, b1: inout Int) {
   let t = a1
   a1 = b1
   b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")
```

When we run the above program using playground, we get the following result −

```
Swapped values are 10, 2
```

### Function Types & its Usage

Each and every function follows the specific function by considering the input parameters and outputs the desired result.

```
func inputs(no1: Int, no2: Int) -> Int {
   return no1/no2
}
```

Following is an example −

```
func inputs(no1: Int, no2: Int) -> Int {
   return no1/no2
}

print(inputs(no1: 20, no2: 10))
print(inputs(no1: 36, no2: 6))
```

When we run the above program using playground, we get the following result −

```
2
6
```

Here the function is initialized with two arguments **no1** and **no2** as integer data types and its return type is also declared as 'int'

```
Func inputstr(name: String) -> String {
   return name
}
```

Here the function is declared as **string** datatype.

Functions may also have **void** data types and such functions won't return anything.

```
func inputstr() {
   print("Swift Functions")
   print("Types and its Usage")
}
inputstr()
```

When we run the above program using playground, we get the following result −

```
Swift Functions
Types and its Usage
```

The above function is declared as a void function with no arguments and no return values.

### Using Function Types

Functions are first passed with integer, float or string type arguments and then it is passed as constants or variables to the function as mentioned below

```
var addition: (Int, Int) -> Int = sum
```

Here sum is a function name having 'a' and 'b' integer variables which is now declared as a variable to the function name addition. Hereafter both addition and sum function both have same number of arguments declared as integer datatype and also return integer values as references.

```
func sum(a: Int, b: Int) -> Int {
   return a + b
}
var addition: (Int, Int) -> Int = sum
print("Result: \(addition(40, 89))")
```

When we run the above program using playground, we get the following result −

```
Result: 129
```

### Nested Functions

A nested function provides the facility to call the outer function by invoking the inside function.

```
func calcDecrement(forDecrement total: Int) -> () -> Int {
   var overallDecrement = 0
   func decrementer() -> Int {
      overallDecrement -= total
      return overallDecrement
   }
   return decrementer
}

let decrem = calcDecrement(forDecrement: 30)
print(decrem())
```

When we run the above program using playground, we get the following result −

```
-30
```

## Enumerations

An enumeration is a user-defined data type which consists of set of related values. Keyword **enum** is used to defined enumerated data type.

### Enumeration Functionality

Enumeration in Swift also resembles the structure of C and Objective C.

- It is declared in a class and its values are accessed through the instance of that class.
- Initial member value is defined using enum intializers.
- Its functionality is also extended by ensuring standard protocol functionality.

### Syntax

Enumerations are introduced with the enum keyword and place their entire definition within a pair of braces −

```
enum enumname {
   // enumeration values are described here
}
```

For example, you can define an enumeration for days of week as follows −

```
enum DaysofaWeek {
   case Sunday
   case Monday
   ---
   case Saturday
}
```

```
enum names {
   case Swift
   case Closures
}

var lang = names.Closures
lang = .Closures

switch lang {
   case .Swift:
      print("Welcome to Swift")
   case .Closures:
      print("Welcome to Closures")
   default:
      print("Introduction")
}
```

When we run the above program using playground, we get the following result −

```
Welcome to Closures
```

Swift enumeration does not assign its members default value like C and Objective C. Instead the members are explicitly defined by their enumeration names. Enumeration name should start with a capital letter (Ex: enum DaysofaWeek).

```
var weekDay = DaysofaWeek.Sunday
```

Here the Enumeration name 'DaysofaWeek' is assigned to a variable weekday.Sunday. It informs the compiler that the datatype belongs to Sunday will be assigned to subsequent enum members of that particular class. Once the enum member datatype is defined, the members can be accessed by passing values and further computations.

### Enumeration with Switch Statement

Swift 'Switch' statement also follows the multi way selection. Only one variable is accessed at a particular time based on the specified condition. Default case in switch statement is used to trap unspecified cases.

```
enum Climate {
   case India
   case America
   case Africa
   case Australia
}

var season = Climate.America
season = .America
switch season {
   case .India:
      print("Climate is Hot")
   case .America:
      print("Climate is Cold")
   case .Africa:
      print("Climate is Moderate")
   case .Australia:
      print("Climate is Rainy")
   
}
```

When we run the above program using playground, we get the following result −

```
Climate is Cold
```

The program first defines Climate as the enumeration name. Then its members like 'India', 'America', 'Africa' and 'Australia' are declared belonging to class 'Climate'. Now the member America is assigned to a Season Variable. Further, Switch case will see the values corresponding to .America and it will branch to that particular statement. The output will be displayed as "Climate is Cold". Likewise all the members can be accessed through switch statements. When the condition is not satisfied it prints by default 'Climate is not predictable'.

Enumeration can be further classified in to associated values and raw values.

### Difference between Associated Values and Raw Values

|                 Associated Values                |        Raw Values        |
|:------------------------------------------------:|:------------------------:|
|                Different Datatypes               |      Same Datatypes      |
|             Ex: enum {10,0.8,"Hello"}            |    Ex: enum {10,35,50}   |
| Values are created based on constant or variable |    Prepopulated Values   |
|          Varies when declared each time          | Value for member is same |

### Enum with Associated Values

```
enum Student {
   case Name(String)
   case Mark(Int,Int,Int)
}

var studDetails = Student.Name("Swift 4")
var studMarks = Student.Mark(98,97,95)

switch studMarks {
   case .Name(let studName):
      print("Student name is: \(studName).")
   case .Mark(let Mark1, let Mark2, let Mark3):
      print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
}
```

When we run the above program using playground, we get the following result −

```
Student Marks are: 98,97,95.
```

Consider for example to access the students name and marks secured in three subjects enumeration name is declared as student and the members present in enum class are name which belongs to string datatype, marks are represented as mark1, mark2 and mark3 of datatype Integer. To access either the student name or marks they have scored

```
var studDetails = Student.Name("Swift")
var studMarks = Student.Mark(98,97,95)
```

Now, the switch case will print student name if that case block is executed otherwise it will print the marks secured by the student. If both the conditions fail, the default block will be executed.

### Enum with Raw Values

Raw values can be strings, characters, or any of the integer or floating-point number types. Each raw value must be unique within its enumeration declaration. When integers are used for raw values, they auto-increment if no value is specified for some of the enumeration members.

```
enum Month: Int {
   case January = 1, February, March, April, May, June, July, August,
      September, October, November, December
}

let yearMonth = Month.May.rawValue
print("Value of the Month is: \(yearMonth).")
```

When we run the above program using playground, we get the following result −

```
Value of the Month is: 5.
```

## Structures

Swift provides a flexible building block of making use of constructs as Structures. By making use of these structures once can define constructs methods and properties.

### Unlike C and Objective C

- Structure need not require implementation files and interface.
- Structure allows us to create a single file and to extend its interface automatically to other blocks.

In Structure the variable values are copied and passed in subsequent codes by returning a copy of the old values so that the values cannot be altered.

### Syntax

Structures are defined with a 'Struct' Keyword.

```
struct nameStruct {
   Definition 1
   Definition 2
   ---
   Definition N
}
```

### Definition of a Structure

Consider for example, suppose we have to access students record containing marks of three subjects and to find out the total of three subjects. Here markStruct is used to initialize a structure with three marks as datatype 'Int'.

```
struct MarkStruct {
   var mark1: Int
   var mark2: Int
   var mark3: Int
}
```

### Accessing the Structure and its Properties

The members of the structure are accessed by its structure name. The instances of the structure are initialized by the 'let' keyword.

```
struct studentMarks {
   var mark1 = 100
   var mark2 = 200
   var mark3 = 300
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")
```

When we run the above program using playground, we get the following result −

```
Mark1 is 100
Mark2 is 200
Mark3 is 300
```

Students marks are accessed by the structure name 'studentMarks'. The structure members are initialized as mark1, mark2, mark3 with integer type values. Then the structure studentMarks() is passed to the 'marks' with 'let' keyword. Hereafter 'marks' will contain the structure member values. Now the values are printed by accessing the structure member values by '.' with its initialized names.

```
struct MarksStruct {
   var mark: Int

   init(mark: Int) {
      self.mark = mark
   }
}

var aStruct = MarksStruct(mark: 98)
var bStruct = aStruct     // aStruct and bStruct are two structs with the same value!
bStruct.mark = 97

print(aStruct.mark)      // 98
print(bStruct.mark)      // 97
```

When we run the above program using playground, we get the following result −

```
98
97
```

### Best Usage Practices of Structures

Swift language provides the functionality to define structures as custom data types for building the function blocks. The instances of structure are passed by its value to the defined blocks for further manipulations.

**Need for having structures**

- To encapsulate simple data values.
- To copy the encapsulated data and its associated properties by 'values' rather than by 'references'.
- Structure to 'Copy' and 'Reference'.

Structures in Swift pass their members with their values rather than by its references.

```
struct markStruct {
   var mark1: Int
   var mark2: Int
   var mark3: Int

   init(mark1: Int, mark2: Int, mark3: Int) {
      self.mark1 = mark1
      self.mark2 = mark2
      self.mark3 = mark3
   }
}

var marks = markStruct(mark1: 98, mark2: 96, mark3:100)
print(marks.mark1)
print(marks.mark2)
print(marks.mark3)
```

When we run the above program using playground, we get the following result −

```
98
96
100
```

**Another Example**

```
struct markStruct {
   var mark1: Int
   var mark2: Int
   var mark3: Int
   
   init(mark1: Int, mark2: Int, mark3: Int) {
      self.mark1 = mark1
      self.mark2 = mark2
      self.mark3 = mark3
   }
}

var fail = markStruct(mark1: 34, mark2: 42, mark3: 13)

print(fail.mark1)
print(fail.mark2)
print(fail.mark3)
```

When we run the above program using playground, we get the following result −

```
34
42
13
```

The structure 'markStruct' is defined first with its members mark1, mark2 and mark3. Now the variables of member classes are initialized to hold integer values. Then the copy of the structure members are created with 'self' Keyword. Once the copy of the structure members are created structure block with its parameter marks are passed to 'marks' variable which will now hold the students marks. Then the marks are printed as 98, 96, 100. Next step for the same structure members another instance named 'fail' is used to point the same structure members with different marks. Then the results are now printed as 34, 42, 13. This clearly explains that structures will have a copy of the member variables then pass the members to their upcoming function blocks.

## Classes

Classes in Swift are building blocks of flexible constructs. Similar to constants, variables and functions the user can define class properties and methods. Swift provides us the functionality that while declaring classes the users need not create interfaces or implementation files. Swift allows us to create classes as a single file and the external interfaces will be created by default once the classes are initialized.

### Benefits of having Classes

- Inheritance acquires the properties of one class to another class
- Type casting enables the user to check class type at run time
- Deinitializers take care of releasing memory resources
- Reference counting allows the class instance to have more than one reference

### Common Characteristics of Classes and structures

- Properties are defined to store values
- Subscripts are defined for providing access to values
- Methods are initialized to improve functionality
- Initial state are defined by initializers
- Functionality are expanded beyond default values
- Confirming protocol functionality standards

### Syntax

```
Class classname {
   Definition 1
   Definition 2
   --- 
   Definition N
}
```

### Class Definition

```
class student {
   var studname: String
   var mark: Int 
   var mark2: Int 
}
```

The syntax for creating instances

```
let studrecord = student()
```

### Example

```
class MarksStruct {
   var mark: Int
   init(mark: Int) {
      self.mark = mark
   }
}

class studentMarks {
   var mark = 300
}

let marks = studentMarks()
print("Mark is \(marks.mark)")
```

When we run the above program using playground, we get the following result −

```
Mark is 300
```

### Accessing Class Properties as Reference Types

Class properties can be accessed by the '.' syntax. Property name is separated by a '.' after the instance name.

```
class MarksStruct {
   var mark: Int
   init(mark: Int) {
      self.mark = mark
   }
}

class studentMarks {
   var mark1 = 300
   var mark2 = 400
   var mark3 = 900
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")
```

When we run the above program using playground, we get the following result −

```
Mark1 is 300
Mark2 is 400
Mark3 is 900
```

### Class Identity Operators

Classes in Swift refers multiple constants and variables pointing to a single instance. To know about the constants and variables pointing to a particular class instance identity operators are used. Class instances are always passed by reference. In Classes NSString, NSArray, and NSDictionary instances are always assigned and passed around as a reference to an existing instance, rather than as a copy.

|                        **Identical to Operators**                        |                         **Not Identical to Operators**                        |
|:------------------------------------------------------------------------:|:-----------------------------------------------------------------------------:|
|                          Operator used is (===)                          |                             Operator used is (!==)                            |
| Returns true when two constants or variables pointing to a same instance | Returns true when two constants or variables pointing to a different instance |

```
class SampleClass: Equatable {
   let myProperty: String
   init(s: String) {
      myProperty = s
   }
}

func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
   return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

spClass1 === spClass2 // false
print("\(spClass1)")

spClass1 !== spClass2 // true
print("\(spClass2)")
```

When we run the above program using playground, we get the following result −

```
main.SampleClass
main.SampleClass
```
