# DT508 Game Programming 2017-2018

Resources
---------
* [Webcourses](http://dit.ie/webcourses) - Course code GAME1003
* [Processing](http://processing.org)
* [The Processing language reference](http://processing.org/reference/)
* [Learning Processing: A Beginner's Guide to Programming Images, Animation, and Interaction (Morgan Kaufmann Series in Computer Graphics)](http://http://www.learningprocessing.com/)
* [The Nature of Code](http://natureofcode.com/)
* [The git manual - read the first three chapters](http://git-scm.com/documentation)
* [A video tutorial all about git/github](https://www.youtube.com/watch?v=p_PGUltnB6w)
* [Games Fleadh](http://www.gamesfleadh.ie/)

## Past Exams
- [Lab Test 1 2016](https://github.com/skooter500/GP_Lab_Test_1)
- [Supplemental lab test 2 2016](https://github.com/skooter500/DT508-Lab-Test-Supplemental-2016)
- [End of year lab test 2016 Solution](https://github.com/skooter500/DT508-Lab-Test-Solution-2016)
- [Lab Test 1 2015](https://github.com/skooter500/dt508_2015_labtest1)

## Contact the lecturer

* Email: bryan.duggan@dit.ie
* Twitter: [@skooter500](http://twitter.com/skooter500)

## Assignments

- 22 November 2017 Lab Test 20%
- 4 December 2017 Assignment 1 submission 20%
- Assignment 2 - 30%
- End of Year lab test - 30%

[Assignment rubric & description](assignments.md)

Some assignments from previous years:

[![YouTube](http://img.youtube.com/vi/TY6Wv9lr72A/0.jpg)](https://www.youtube.com/watch?v=TY6Wv9lr72A)

[![YouTube](http://img.youtube.com/vi/cW8s5i9dmqA/0.jpg)](https://www.youtube.com/watch?v=cW8s5i9dmqA)

# Week 4 - More Loops
- [The solution to the lab from last week](processing/loopsLab)

## Lab
### Learning outcomes
- Practice trigonometry
- Practice writing loops and using variables 

### Part 1
Here is a trigonometry problem for you:

A person flying a kite has released 176m of string. 
The string makes an angle of 27° with the ground. How high is the kite? How far away is the kite horizontally?

You can work this out on paper first and then try and write a Processing sketch to visualise and solve the problem

Also! You can use the processing functions [degrees()](https://processing.org/reference/degrees_.html) and [radians()](https://processing.org/reference/radians_.html) to convert between degrees and radians. Look th

### Part 2

Try and draw this using ONE for loop:

![Sketch](images/p27.png)

# Week 4 - Loops
![Sketch](images/p26.png)

```Java
void setup()
{
  size(500, 500);
  cx = width / 2;
  cy = height / 2;
}

int cx, cy;

void draw()
{
  background(0);
  stroke(255);
  for(int x = 0 ; x <= width ; x += 20)
  {
    line(x, height, cx, cy);
  }
  
  int y = cy;
  int gap = 1;
  while(y <= height)
  {
    line(0, y, width, y);
    y += gap;
    gap += 2;
  }
}
```

- [Lots of examples of loops](processing/lotsaloops)
- [Dividing a circle into equal segments sketch](processing/circles1)

[![YouTube](http://img.youtube.com/vi/h4ApLHe8tbk/0.jpg)](https://www.youtube.com/watch?v=h4ApLHe8tbk)
[![YouTube](http://img.youtube.com/vi/RtAPBvz6k0Y/0.jpg)](https://www.youtube.com/watch?v=RtAPBvz6k0Y)

## Lab
### Learning outcomes
- Practice generating lots of different shapes with loops in processing
- Be creative and make something beautiful in code

Try and write some processing code to draw the following shapes. Use variables and loops in your solutions!

Its best to spend some time thinking about the variables and how they are changing before writing code:

These require ONE loop:

![Sketch](images/p21.png)

This shape draws lines from the sides that all meet in the middle. This can be done using one loop, but is better with two:

![Sketch](images/p19.png)

This sketch always draws 10 equally sized circles across the screen. This should work no matter what you set the screen size to. You should also declare a variable to hold the number of circles to draw so that if you change this number, the sketch should still work:

![Sketch](images/p18.png)

This sketch places circles around the outside of a bigger circle to make a flower pattern. Once you figure this out, you can modify it to do something cool with colours:

![Sketch](images/p20.png)

This sketch prints the numbers of the clock around in a circle:

![Sketch](images/p22.png)

Finally! This sketch requires you to put one loop inside another and also use a boolean variable, though there are other ways to do this:

![Sketch](images/p23.png)

This is what it looks like when all the above code is in one sketch:

![Sketch](images/p24.png)

# Week 3 - Selection
- [The quadrants sketch](processing/quadrants)
- [Mouse inside a circle sketch](processing/circleDistance)

## Videos
[![YouTube](http://img.youtube.com/vi/mVq7Ms01RjA/0.jpg)](https://www.youtube.com/watch?v=mVq7Ms01RjA)

[![YouTube](http://img.youtube.com/vi/wsI6N9hfW7E/0.jpg)](https://www.youtube.com/watch?v=wsI6N9hfW7E)

[![YouTube](http://img.youtube.com/vi/YIKRXl3wH8Y/0.jpg)](https://www.youtube.com/watch?v=YIKRXl3wH8Y)

## Lab

Part 1

- [Download and unzip the starter project for today's lab](https://github.com/skooter500/GP-2017-2018/blob/master/downloads/rick_n_morty_starter.zip?raw=true) 
- Open the sketch and you will see that it displays a picture from Rick and Morty
- The aim of the lab today is to modify the sketch so that it displays a button in the center of the screen
- When the button is clicked, it should change colour and play the sound file. Here is what the finsihed sketch should look like:

[![YouTube](http://img.youtube.com/vi/BR1p2Dl6ELE/0.jpg)](https://www.youtube.com/watch?v=BR1p2Dl6ELE)

- To do this you will need to declare some new varialbes and use the if statement

Part 2

Try and make this sketch that draws a face that starts in the center of the screen and moves to the edge of the screen and then follows around the outside of the screen

[![YouTube](http://img.youtube.com/vi/lA-3AROmMiE/0.jpg)](https://www.youtube.com/watch?v=lA-3AROmMiE)


# Week 2 - Variables
- [Variables example](processing/variables)
- [The amanita sketch (the mushroom that moves with the mouse)](processing/amanita)

## Videos
[![YouTube](http://img.youtube.com/vi/B-ycSR3ntik/0.jpg)](https://www.youtube.com/watch?v=B-ycSR3ntik)

[![YouTube](http://img.youtube.com/vi/rZ36BzXFT6Q/0.jpg)](https://www.youtube.com/watch?v=rZ36BzXFT6Q)

## Lab

### Learning Outcomes
- Learn how to analyse a problem and figure out a solution
- Practice drawing in processing
- Practice using variables
- Practice using operations

Here is a video of a sketch you can make today:

[![YouTube](http://img.youtube.com/vi/uvPVGiU-bn4/0.jpg)](https://www.youtube.com/watch?v=uvPVGiU-bn4)

What is happening:

- The ground takes up half the window size
- The spaceship is 100 pixels wide and is *centered* around the mouse position.
- The person starts at the right side of the screen and moved from right to left

Use variables wherever practical in your sketch and calculate positions and sizes relative to these variables.

Bonus!

There are few things you can try (but you will probably have to read ahead and figure out how the if statement works)

- Come up with a more beautiful looking spaceship and person
- Change the colours of everything
- Make a car that drives from left to right
- When the person reaches the left side of the screen, he should switch direction
- Make the lights on the spaceship flash different colours

# Week 1 - Introduction

## Lecture
- [Introduction slides](https://1drv.ms/p/s!Ak7y2552PWCrkMw2-mb76OvGqWk6NQ)
- [The contract for this course](https://1drv.ms/w/s!Ak7y2552PWCrjPYXt8HlWl1T1cg5Og)

## Lab

### Learning Outcomes
- Enroll on Webcourses
- Become familiar with the syntax of Processing
- Become familiar with writing and running sketches in Processing
- Clone a git repository!
- Install Processing libraries

### Part 1 - Drawing
- Log onto Webcourses and enroll on the module GAME1003.
- Check out [the Processing reference](https://processing.org/reference/)
- Check out [Daniel Shiffman's awesome YouTube channel](https://www.youtube.com/user/shiffman)
- Check out [these Sci-Fi user interfaces made by last years OOP students](https://www.youtube.com/playlist?list=PL1n0B6z4e_E5RZYrubD2pcxq0qzGy-3vr)
- Check out [these music visualisers made in Processing by last years game programming students](https://www.youtube.com/watch?v=cW8s5i9dmqA&list=PL1n0B6z4e_E6jErrS0ScSCaVrN7KV729x)
- If you are curious, check out [some of my creature videos](https://www.youtube.com/watch?v=cW8s5i9dmqA&list=PL1n0B6z4e_E6jErrS0ScSCaVrN7KV729x)

- Look up the following methods in the [Processing language reference](http://processing.org/reference/ ) to make sure you are clear about the syntax and parameters:

* noStroke
* noFill
* line
* ellipse
* rect
* background
* stroke
* fill
* size
* arc
* triangle

Write a processing sketch to draw the following shapes:

![Sketch](images/p1.png)

![Sketch](images/p1.1.png)

![Sketch](images/p1.2.png)

I prefer to draw the shapes on paper first before I try and work out the coordinates. Try experimenting with different colours!

### Part 2 - Downloading a Processing game

- Download the Processing sourcecode for NILL. Click the [clone or download link here](https://github.com/skooter500/NILL)
- This will download a zip file of the code for the NILL game
- Unzip the files somewhere 
- Find the NILL folder and double click on the NILL.pde file. It should open in Processing
- You need to install the Minim library and the Game control libraries to make NILL work. Go to Sketch | Import Library | Add library to do this
- See if you can collect all the pods
- Have a look through the source code for NILL
