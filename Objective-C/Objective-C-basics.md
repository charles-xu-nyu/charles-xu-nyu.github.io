---
layout: default
title: Objective-C Basics
description: This section helps you with Objective-C basics, which will later be used in IOS app development.
---

# Objective-C basics

## Contents


1. [Introduction](#introduction)
3. Environment Setup
4. Hello World!
5. Variables
6. Functions
7. Blocks
8. Numbers
9. Arrays


## Introduction

Objective-C is general-purpose language that is developed on top of C Programming language by adding features of Small Talk programming language making it an object-oriented language. It is primarily used in developing iOS and Mac OS X operating systems as well as its applications.

Initially, Objective-C was developed by NeXT for its NeXTSTEP OS from whom it was taken over by Apple for its iOS and Mac OS X.

## Environment Setup

### Local Environment Setup

If you are still willing to set up your own environment for Objective-C programming language, then you need to install **Text Editor** and **The GCC Compiler** on your computer.

### Text Editor

This will be used to type your program. Examples of few editors include Windows Notepad, OS Edit command, Brief, Epsilon, EMACS, and vim or vi.

Name and version of text editor can vary on different operating systems. For example, Notepad will be used on Windows, and vim or vi can be used on windows as well as Linux or UNIX.

The files you create with your editor are called source files and contain program source code. The source files for Objective-C programs are typically named with the extension **".m"**.

Before starting your programming, make sure you have one text editor in place and you have enough experience to write a computer program, save it in a file, compile it and finally execute it.

### The GCC Compiler

The source code written in source file is the human readable source for your program. It needs to be "compiled" to turn into machine language, so that your CPU can actually execute the program as per instructions given.

This GCC compiler will be used to compile your source code into final executable program. I assume you have basic knowledge about a programming language compiler.

GCC compiler is available for free on various platforms and the procedure to set up on various platforms is explained below.

### Installation on Mac OS

If you use Mac OS X, the easiest way to obtain GCC is to download the Xcode development environment from Apple's web site and follow the simple installation instructions. Once you have Xcode set up, you will be able to use GNU compiler for C/C++.

Xcode is currently available at [here](https://developer.apple.com/xcode/).

### Installation on Windows

In order to run Objective-C program on windows, we need to install MinGW and GNUStep Core. Both are available at [here](http://www.gnustep.org/).

First, we need to install the MSYS/MinGW System package. Then, we need to install the GNUstep Core package. Both of which provide a windows installer, which is self-explanatory.

Then to use Objective-C and GNUstep by selecting Start -> All Programs -> GNUstep -> Shell.

Switch to the folder containing helloWorld.m.

We can compile the program by using −

```
$ gcc `gnustep-config --objc-flags` 
-L /GNUstep/System/Library/Libraries hello.m -o hello -lgnustep-base -lobjc
```

We can run the program by using −

```
./hello.exe
```

We get the following output −
```
2022-04-07 10:48:39.772 tutorialsPoint[1200] hello world
```

## Hello World!

Before we study basic building blocks of the Objective-C programming language, let us look a bare minimum Objective-C program structure so that we can take it as a reference in upcoming chapter.

A Objective-C program basically consists of the following parts −

- Preprocessor Commands
- Interface
- Implementation
- Method
- Variables
- Statements & Expressions
- Comments

Let us look at a simple code that would print the words "Hello World" −

```
#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (void)sampleMethod;
@end

@implementation SampleClass

- (void)sampleMethod {
   NSLog(@"Hello, World! \n");
}

@end

int main() {
   /* my first program in Objective-C */
   SampleClass *sampleClass = [[SampleClass alloc]init];
   [sampleClass sampleMethod];
   return 0;
}
```

Let us look various parts of the above program −

- The first line of the program #import <Foundation/Foundation.h> is a preprocessor command, which tells a Objective-C compiler to include Foundation.h file before going to actual compilation.

- The next line @interface SampleClass:NSObject shows how to create an interface. It inherits NSObject, which is the base class of all objects.

- The next line - (void)sampleMethod; shows how to declare a method.

- The next line @end marks the end of an interface.
 
- The next line @implementation SampleClass shows how to implement the interface SampleClass.

- The next line - (void)sampleMethod{} shows the implementation of the sampleMethod.

- The next line @end marks the end of an implementation.

- The next line int main() is the main function where program execution begins.

- The next line /*...*/ will be ignored by the compiler and it has been put to add additional comments in the program. So such lines are called comments in the program.

- The next line NSLog(...) is another function available in Objective-C which causes the message "Hello, World!" to be displayed on the screen.

- The next line return 0; terminates main()function and returns the value 0.

Now when we compile and run the program, we will get the following result.

```
2022-04-06 07:48:32.020 demo[65832] Hello, World!
```

## Variables

A variable is nothing but a name given to a storage area that our programs can manipulate. Each variable in Objective-C has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.

The name of a variable can be composed of letters, digits, and the underscore character. It must begin with either a letter or an underscore. Upper and lowercase letters are distinct because Objective-C is case-sensitive. Based on the basic types explained in previous chapter, there will be the following basic variable types −

| Sr.No. |    Type    |                          Description                          |
|:------:|:----------:|:-------------------------------------------------------------:|
|    1   |  **char**  | Typically a single octet (one byte). This is an integer type. |
|    2   |   **int**  |       The most natural size of integer for the machine.       |
|    3   |  **float** |            A single-precision floating point value.           |
|    4   | **double** |            A double-precision floating point value.           |
|    5   |  **void**  |                Represents the absence of type.                |

Objective-C programming language also allows to define various other types of variables, which we will cover in subsequent chapters like Enumeration, Pointer, Array, Structure, Union, etc. For this chapter, let us study only basic variable types.

### Variable Definition in Objective-C

A variable definition means to tell the compiler where and how much to create the storage for the variable. A variable definition specifies a data type and contains a list of one or more variables of that type as follows −

```
type variable_list;
```

Here, **type** must be a valid Objective-C data type including char, w_char, int, float, double, bool or any user-defined object, etc., and **variable_list** may consist of one or more identifier names separated by commas. Some valid declarations are shown here −

```
int    i, j, k;
char   c, ch;
float  f, salary;
double d;
```

The line **int i, j, k**; both declares and defines the variables i, j and k; which instructs the compiler to create variables named i, j and k of type int.

Variables can be initialized (assigned an initial value) in their declaration. The initializer consists of an equal sign followed by a constant expression as follows −

```
type variable_name = value;
```

Some examples are −

```
extern int d = 3, f = 5;    // declaration of d and f. 
int d = 3, f = 5;           // definition and initializing d and f. 
byte z = 22;                // definition and initializes z. 
char x = 'x';               // the variable x has the value 'x'.
```

For definition without an initializer: variables with static storage duration are implicitly initialized with NULL (all bytes have the value 0); the initial value of all other variables is undefined.

### Variable Declaration in Objective-C

A variable declaration provides assurance to the compiler that there is one variable existing with the given type and name so that compiler proceed for further compilation without needing complete detail about the variable. A variable declaration has its meaning at the time of compilation only, compiler needs actual variable declaration at the time of linking of the program.

A variable declaration is useful when you are using multiple files and you define your variable in one of the files, which will be available at the time of linking of the program. You will use **extern** keyword to declare a variable at any place. Though you can declare a variable multiple times in your Objective-C program but it can be defined only once in a file, a function or a block of code.

### Example

Try the following example, where variables have been declared at the top, but they have been defined and initialized inside the main function −

```
#import <Foundation/Foundation.h>

// Variable declaration:
extern int a, b;
extern int c;
extern float f;

int main () {
  /* variable definition: */
  int a, b;
  int c;
  float f;
 
  /* actual initialization */
  a = 10;
  b = 20;
  
  c = a + b;
  NSLog(@"value of c : %d \n", c);

  f = 70.0/3.0;
  NSLog(@"value of f : %f \n", f);
 
  return 0;
}
```

When the above code is compiled and executed, it produces the following result −

```
2022-04-07 22:43:31.695 variable[14019] value of c : 30 
2022-04-07 22:43:31.695 variable[14019] value of f : 23.333334 
```

Same concept applies on function declaration where you provide a function name at the time of its declaration and its actual definition can be given anywhere else. In the following example, it's explained using C function and as you know Objective-C supports C style functions also −

```
// function declaration
int func();

int main() {
   // function call
   int i = func();
}

// function definition
int func() {
   return 0;
}
```

## Functions

A function is a group of statements that together perform a task. Every Objective-C program has one C function, which is **main()**, and all of the most trivial programs can define additional functions.

You can divide up your code into separate functions. How you divide up your code among different functions is up to you, but logically the division usually is so each function performs a specific task.

A function **declaration** tells the compiler about a function's name, return type, and parameters. A function **definition** provides the actual body of the function.

Basically in Objective-C, we call the function as method.

The Objective-C foundation framework provides numerous built-in methods that your program can call. For example, method **appendString()** to append string to another string.

A method is known with various names like a function or a sub-routine or a procedure, etc.

### Defining a Method

The general form of a method definition in Objective-C programming language is as follows −

```
- (return_type) method_name:( argumentType1 )argumentName1 
joiningArgument2:( argumentType2 )argumentName2 ... 
joiningArgumentn:( argumentTypen )argumentNamen {
   body of the function
}
```

A method definition in Objective-C programming language consists of a method header and a method body. Here are all the parts of a method −

- **Return Type** − A method may return a value. The **return_type** is the data type of the value the function returns. Some methods perform the desired operations without returning a value. In this case, the return_type is the keyword **void**.

- **Method Name** − This is the actual name of the method. The method name and the parameter list together constitute the method signature.

- **Arguments** − A argument is like a placeholder. When a function is invoked, you pass a value to the argument. This value is referred to as actual parameter or argument. The parameter list refers to the type, order, and number of the arguments of a method. Arguments are optional; that is, a method may contain no argument.

- **Joining Argument** − A joining argument is to make it easier to read and to make it clear while calling it.

- **Method Body** − The method body contains a collection of statements that define what the method does.

### Example

Following is the source code for a method called **max()**. This method takes two parameters num1 and num2 and returns the maximum between the two −

```
/* function returning the max between two numbers */
- (int) max:(int) num1 secondNumber:(int) num2 {
   
   /* local variable declaration */
   int result;
 
   if (num1 > num2) {
      result = num1;
   } else {
      result = num2;
   }
 
   return result; 
}
```

### Method Declarations

A method **declaration** tells the compiler about a function name and how to call the method. The actual body of the function can be defined separately.

A method declaration has the following parts −

```
- (return_type) function_name:( argumentType1 )argumentName1 
joiningArgument2:( argumentType2 )argumentName2 ... 
joiningArgumentn:( argumentTypen )argumentNamen;
```

For the above-defined function max(), following is the method declaration −

```
-(int) max:(int)num1 andNum2:(int)num2;
```

Method declaration is required when you define a method in one source file and you call that method in another file. In such case you should declare the function at the top of the file calling the function.

### Calling a method

While creating a Objective-C method, you give a definition of what the function has to do. To use a method, you will have to call that function to perform the defined task.

When a program calls a function, program control is transferred to the called method. A called method performs defined task, and when its return statement is executed or when its function-ending closing brace is reached, it returns program control back to the main program.

To call a method, you simply need to pass the required parameters along with method name, and if method returns a value, then you can store returned value. For example −

```
#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
/* method declaration */
- (int)max:(int)num1 andNum2:(int)num2;
@end

@implementation SampleClass

/* method returning the max between two numbers */
- (int)max:(int)num1 andNum2:(int)num2 {

   /* local variable declaration */
   int result;
 
   if (num1 > num2) {
      result = num1;
   } else {
      result = num2;
   }
 
   return result; 
}

@end

int main () {
   
   /* local variable definition */
   int a = 100;
   int b = 200;
   int ret;
   
   SampleClass *sampleClass = [[SampleClass alloc]init];

   /* calling a method to get max value */
   ret = [sampleClass max:a andNum2:b];
 
   NSLog(@"Max value is : %d\n", ret );
   return 0;
}
```

I kept max() function along with main() function and complied the source code. While running final executable, it would produce the following result −

```
2022-04-07 22:28:45.912 function[26080] Max value is : 200
```

## Blocks

An Objective-C class defines an object that combines data with related behavior. Sometimes, it makes sense just to represent a single task or unit of behavior, rather than a collection of methods.

Blocks are a language-level feature added to C, Objective-C and C++ which allow you to create distinct segments of code that can be passed around to methods or functions as if they were values. Blocks are Objective-C objects which means they can be added to collections like NSArray or NSDictionary. They also have the ability to capture values from the enclosing scope, making them similar to closures or lambdas in other programming languages.

### Simple Block declaration syntax

```
returntype (^blockName)(argumentType);
```

Simple block implementation

```
returntype (^blockName)(argumentType)= ^{
};
```

Here is a simple example

```
void (^simpleBlock)(void) = ^{
   NSLog(@"This is a block");
};
```

We can invoke the block using

```
simpleBlock();
```

### Blocks Take Arguments and Return Values

Blocks can also take arguments and return values just like methods and functions.

Here is a simple example to implement and invoke a block with arguments and return values.

```
double (^multiplyTwoValues)(double, double) = 
   ^(double firstValue, double secondValue) {
      return firstValue * secondValue;
   };

double result = multiplyTwoValues(2,4); 
NSLog(@"The result is %f", result);
```

### Blocks Using Type Definitions

Here is a simple example using typedef in block. Please note this sample **doesn't work** on the **online compiler** for now. Use **XCode** to run the same.

```
#import <Foundation/Foundation.h>

typedef void (^CompletionBlock)();
@interface SampleClass:NSObject
- (void)performActionWithCompletion:(CompletionBlock)completionBlock;
@end

@implementation SampleClass

- (void)performActionWithCompletion:(CompletionBlock)completionBlock {

   NSLog(@"Action Performed");
   completionBlock();
}

@end

int main() {
   
   /* my first program in Objective-C */
   SampleClass *sampleClass = [[SampleClass alloc]init];
   [sampleClass performActionWithCompletion:^{
      NSLog(@"Completion is called to intimate action is performed.");
   }];

   return 0;
}
```

Let us compile and execute it, it will produce the following result −

```
2022-04-10 08:13:57.155 block[284:303] Action Performed
2022-04-10 08:13:57.157 block[284:303] Completion is called to intimate action
```

Blocks are used more in iOS applications and Mac OS X. So its more important to understand the usage of blocks.

## Numbers

In Objective-C programming language, in order to save the basic data types like int, float, bool in object form,

Objective-C provides a range of methods to work with NSNumber and important ones are listed in following table.

| Sr.No. |                        Method                        |                                           Description                                          |
|:------:|:----------------------------------------------------:|:----------------------------------------------------------------------------------------------:|
|    1   |     **+ (NSNumber *)numberWithBool:(BOOL)value**     |     Creates and returns an NSNumber object containing a given value, treating it as a BOOL.    |
|    2   |     **+ (NSNumber *)numberWithChar:(char)value**     | Creates and returns an NSNumber object containing a given value, treating it as a signed char. |
|    3   |   **+ (NSNumber *)numberWithDouble:(double)value**   |    Creates and returns an NSNumber object containing a given value, treating it as a double.   |
|    4   |    **+ (NSNumber *)numberWithFloat:(float)value**    |    Creates and returns an NSNumber object containing a given value, treating it as a float.    |
|    5   |      **+ (NSNumber *)numberWithInt:(int)value**      |  Creates and returns an NSNumber object containing a given value, treating it as a signed int. |
|    6   | **+ (NSNumber *)numberWithInteger:(NSInteger)value** |  Creates and returns an NSNumber object containing a given value, treating it as an NSInteger. |
|    7   |                 **- (BOOL)boolValue**                |                             Returns the receiver's value as a BOOL.                            |
|    8   |                 **- (char)charValue**                |                             Returns the receiver's value as a char.                            |
|    9   |               **- (double)doubleValue**              |                            Returns the receiver's value as a double.                           |
|   10   |                **- (float)floatValue**               |                            Returns the receiver's value as a float.                            |
|   11   |             **- (NSInteger)integerValue**            |                          Returns the receiver's value as an NSInteger.                         |
|   12   |                  **- (int)intValue**                 |                             Returns the receiver's value as an int.                            |
|   13   |             **- (NSString *)stringValue**            |                    Returns the receiver's value as a human-readable string.                    |

Here is a simple example for using NSNumber which multiplies two numbers and returns the product.

```
#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
@end

@implementation SampleClass

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
   float number1 = [a floatValue];
   float number2 = [b floatValue];
   float product = number1 * number2;
   NSNumber *result = [NSNumber numberWithFloat:product];
   return result;
}

@end

int main() {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   SampleClass *sampleClass = [[SampleClass alloc]init];
   NSNumber *a = [NSNumber numberWithFloat:10.5];
   NSNumber *b = [NSNumber numberWithFloat:10.0];   
   NSNumber *result = [sampleClass multiplyA:a withB:b];
   NSString *resultString = [result stringValue];
   NSLog(@"The product is %@",resultString);

   [pool drain];
   return 0;
}
```

Now when we compile and run the program, we will get the following result.

```
2022-04-19 23:57:51.092 number[68210:40822280] The product is 105
```

## Arrays

Objective-C programming language provides a data structure called **the array**, which can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.

Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index.

All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element.

### Declaring Arrays

To declare an array in Objective-C, a programmer specifies the type of the elements and the number of elements required by an array as follows −

```
type arrayName [ arraySize ];
```

This is called a single-dimensional array. The **arraySize** must be an integer constant greater than zero and **type** can be any valid Objective-C data type. For example, to declare a 10-element array called **balance** of type double, use this statement −

```
double balance[10];
```

Now, *balance* is a variable array, which is sufficient to hold up to 10 double numbers.

### Initializing Arrays

You can initialize an array in Objective-C either one by one or using a single statement as follows −

```
double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
```

The number of values between braces { } can not be larger than the number of elements that we declare for the array between square brackets [ ]. Following is an example to assign a single element of the array −

If you omit the size of the array, an array just big enough to hold the initialization is created. Therefore, if you write −

```
double balance[] = {1000.0, 2.0, 3.4, 17.0, 50.0};
```

You will create exactly the same array as you did in the previous example.

```
balance[4] = 50.0;
```

The above statement assigns element number 5th in the array a value of 50.0. Array with 4th index will be 5th, i.e., last element because all arrays have 0 as the index of their first element which is also called base index. 

### Accessing Array Elements

An element is accessed by indexing the array name. This is done by placing the index of the element within square brackets after the name of the array. For example −

```
double salary = balance[9];
```

The above statement will take 10th element from the array and assign the value to salary variable. Following is an example, which will use all the above mentioned three concepts viz. declaration, assignment and accessing arrays −

```
#import <Foundation/Foundation.h>
 
int main () {
   int n[ 10 ];   /* n is an array of 10 integers */
   int i,j;
 
   /* initialize elements of array n to 0 */         
   for ( i = 0; i < 10; i++ ) {
      n[ i ] = i + 100;    /* set element at location i to i + 100 */
   }
   
   /* output each array element's value */
   for (j = 0; j < 10; j++ ) {
      NSLog(@"Element[%d] = %d\n", j, n[j] );
   }
 
   return 0;
}
```

When the above code is compiled and executed, it produces the following result −

```
2022-04-20 00:12:56.858 array[68438:40836856] Element[0] = 100
2022-04-20 00:12:56.858 array[68438:40836856] Element[1] = 101
2022-04-20 00:12:56.858 array[68438:40836856] Element[2] = 102
2022-04-20 00:12:56.858 array[68438:40836856] Element[3] = 103
2022-04-20 00:12:56.858 array[68438:40836856] Element[4] = 104
2022-04-20 00:12:56.858 array[68438:40836856] Element[5] = 105
2022-04-20 00:12:56.858 array[68438:40836856] Element[6] = 106
2022-04-20 00:12:56.858 array[68438:40836856] Element[7] = 107
2022-04-20 00:12:56.858 array[68438:40836856] Element[8] = 108
2022-04-20 00:12:56.858 array[68438:40836856] Element[9] = 109
```

