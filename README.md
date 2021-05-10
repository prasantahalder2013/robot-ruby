Toy Robot Simulator
================

## Run instructions

Change $LOAD_PATH in toy_robot.rb file

'/home/prasanta/Ruby-app/toy-robot-ruby/lib' for me.

Run the program with command below:

```
ruby toy_robot.rb
```

```

You can either run the Rspec tests (with test coverage included) with command below:

```
bundle install
bundle exec rspec spec
```

## Specification

This program is written and executed with Ruby version 2.5.1

Please find the gems that I have used while working on this project:

- Rspec - BDD Test Framework for Ruby

Please refer to file command.txt for sample test data.

## Description: 

- The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units
- There are no other obstrucioons on the table surface
- The robot is free to roam around the surface of the table, but must be prevented from falling to destrucioon- Any movement
that would result in the robot falling from the table must be prevented, however further valid movement commands must sioll
be allowed
 
- Create an applicaioon that can read in commands of the following form 
```
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
```
- PLACE will put the toy robot on the table in posiioon X,Y and facing NORTH, SOUTH, EAST or WEST
- The origin (0,0) can be considered to be the SOUTH WEST most corner-
- The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command- The applicaioon should discard all commands in the sequence until a valid PLACE command has been executed
- MOVE will move the toy robot one unit forward in the direcioon it is currently facing-
- LEFT and RIGHT will rotate the robot 90 degrees in the specified direcioon without changing the posiioon of the robot
- REPORT will announce the X,Y and F of the robot- This can be in any form, but standard output is sufficient
 
- A robot that is not on the table can choose the ignore the MOVE, LEFT, RIGHT and REPORT commands
- Input can be from a file, or from standard input, as the developer chooses- - Provide test data to exercise the applicaioon
 
## Constraints:

The toy robot must not fall off the table during movement- This also includes the initial placement of the toy robot
Any move that would cause the robot to fall must be ignored-
 
Example Input and Output:
```
a)
PLACE 0,0,NORTH
MOVE
REPORT
Output: 0,1,NORTH
b)
PLACE 0,0,NORTH
LEFT
REPORT
Output: 0,0,WEST
c)
PLACE 1,2,EAST
MOVE
MOVE
LEFT
MOVE
REPORT
Output: 3,3,NORTH
```
## Deliverables:
The source files, the test data and any test code
It is not required to provide any graphical output showing the movement of the toy robot

