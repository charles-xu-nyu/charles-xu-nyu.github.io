---
layout: default
title: Objective-C Basics
description: This section helps you with Objective-C basics, which will later be used in IOS app development.
---

# Objective-C basics

## Contents

1. Introduction
2. Environment Setup


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

