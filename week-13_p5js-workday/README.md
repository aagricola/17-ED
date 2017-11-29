# Hello!

## Today:
- Move from Processing to p5.js
- Editing HTML and CSS elements dynamically
- Hosting a sketch

## p5.js

A p5.js sketch is made from a few different languages used together. HTML (HyperText Markup Language) provides the backbone, linking all the other elements together in a page. JavaScript (and the p5.js library) enable you to create interactive graphics that display on your HTML page. CSS (Cascading Style Sheets) can be used to further style elements on the HTML page.
- [Here is the official website](https://p5js.org/)
- [Converting Processing sketch to P5](https://github.com/processing/p5.js/wiki/Processing-transition)
- [Here is the online editor](http://alpha.editor.p5js.org/) (can be buggy at times)
- [Let's go ahead and download this p5 editor](https://github.com/processing/p5.js-editor/releases)

## Main Differences between Processing and p5.js

- Because you can think of your sketch as more than just the drawing canvas, size() has been replaced with createCanvas(), to suggest the possibility of creating other elements.
- use var in front of every new variable instead of primitive data types like int, float, char ect. - this is common to Java Script
- you can place load calls in a preload() method that happens before setup() (this means setup waits until everything inside is loaded - we will look at this with our image example)
- function is used instead of void before any function

function setup() {
createCanvas(640,480)
}

function draw() {
  if (mouseIsPressed){
  	fill(0);
  }else{
  	fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

- in addition to mouse events, there are touch events
  mouseX ~ touchX
  mouseY ~ touchY
  mousePressed() ~ touchStarted()
  mouseDragged() ~ touchMoved()
  mouseReleased() ~ touchEnded()
- push/popMatrix and push/popStyle has been replaces with just push() and pop()
- when declaring variables before setup(), you will need to assign them values inside setup()
var n;
function setup() {
  createCanvas(100, 100);
  n = random(100);
}
- arrays are more simple in P5 (array example)
- JavaScript uses something called prototypes to form something similar to Java class objects. (object example)

## Net Artworks

[Rafael Rozendaal](http://www.newrafael.com/websites)
[Jeremey Bailey, "Next"](http://jeremybaileynext.com/), A sympathetic painting software
[installation view](http://carrollfletcheronscreen.com/2016/05/12/jeremy-bailey-next/)
[Reinier Feijen](http://www.boxofchocolates.nl/)


## Project 2: Systems: World, Body, Machine

Using a combination of skills developed in class and through personal research, design a system that has many (maybe even infinite) number of outcomes. It can be a game, drawing generator, non-linear story, or anything you can dream up. Do something personally exciting to you.

Think about social systems, cultural algorithms, and codes that are at work on a micro and macro scale. Design your own system that addresses your relationship to these. Think about physical interface and installation of the work. Consider making something that is a physical bridge or interface to the more screen based programming we have been doing.

## Project Presentation

Please make a 5 minute presentation including slides about:
- Project mission
- Project Inspiration
- Documentation or live demonstration of prototype
- Projection of final product

## Homework

- Sign up for one-on-one meeting
- Work on final Project
- Work on Presentation
