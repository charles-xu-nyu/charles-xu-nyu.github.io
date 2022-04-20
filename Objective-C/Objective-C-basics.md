---
layout: default
title: Objective-C Basics
description: This section helps you with Objective-C basics, which will later be used in IOS app development.
---

# Objective-C basics

## Contents

1. Introduction
2. Environment Setup
3. Hello World


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

## Hello World

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
2017-10-06 07:48:32.020 demo[65832] Hello, World!
```
