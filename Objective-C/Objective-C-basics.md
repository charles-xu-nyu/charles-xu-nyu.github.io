---
layout: default
title: Objective-C Basics
description: This section helps you with Objective-C basics, which will later be used in IOS app development.
---

# Objective-C basics

## Contents

1. Introduction
2. Environment Setup
3. Hello World!
4. Variable
5. Function


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

## Variable

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

## Function

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
2013-04-07 22:28:45.912 function[26080] Max value is : 200
```
