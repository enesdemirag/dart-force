[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
![stability-wip](https://img.shields.io/badge/stability-work_in_progress-orange.svg)
[![License](http://img.shields.io/:license-mit-green.svg)](http://enesdemirag.mit-license.org)


# dart-force
```A Dart library for Simulating Force```

<img align="right" src="https://github.com/enesdemirag/enesdemirag.github.io/raw/master/images/bb8.png" height=250 width=250>

Hello young Jedi. Welcome to the dart side. This repo contains ancient scripts which holds the power of force. It can help you to unleash your ability to use force.

### What is force?

<b>Wikipedia says:</b> <i>"force is any interaction that, when unopposed, will change the motion of an object."</i>

<b>In programming, we can say</b> <i>"force is a vector that causes an object with mass to accelerate."</i>

sooo.. lets explain what those things are: :dart:

* <b>Vector</b> is an entity with magnitude and direction.
* <b>Mass</b> is a measure of the amount of matter in the object.
* <b>Acceleration</b> is the change in velocity over time.

Lucky for us that google developers already implemented a huge library about vectors into dart, we can directly use [this awesome, well-documented, incredibly stable package](https://github.com/google/vector_math.dart) to make things easier. <b>But where is the fun in that :) so I decide to implement a very basic [vector class](lib/src/vector.dart) from scratch just because i like to dirty my hands.</b> :wink:

---

To deeply understand this thing called ```"force"```, lets briefly walk through [Newton's Laws of Motion](https://www.wikiwand.com/en/Newton%27s_laws_of_motion). You probably remember these laws from high school physics class but lets review them anyway. :recycle: _(because we want our simulations to obey these rules)_ 

<img align="right" src="https://github.com/enesdemirag/enesdemirag.github.io/raw/master/images/newton.jpg" height=279 width=203>
A long time ago in a galaxy far, far away.... there is a pale blue dot. :earth_africa: In this planet called earth, there was a young Jedi named **Isaac Newton**. As a genius little boy, he worked on explaining forces in the universe. When he masters the force, he came up with 3 laws.

1. **An object at rest stays at rest and an object in motion stays in motion** _at a constant speed and direction unless acted upon by an unbalanced force._

2. **Force equals mass times acceleration.**

3. **For every action there is an equal and opposite reaction.**
    * This means that forces always occur in pairs. _The two forces are of equal strength, but in opposite directions._
    * So if we calculate a Vector **v** that is a force of object **A** on object **B**, we must also apply the force **-v** that B exerts on object A.

<!-- To make this implemetation even more simple, I work with  -->



---

I'm terrible with visualizing things. But at least I added some example and they print real-time position, velocity and acceleration of the objects.

### Gravitational Force

todo

### Wind Force

todo

### Friction Force

todo

---

> <b>Note:</b> I created this repo as an exercise while learning Dart Programming. Writing this library was very fun. I got help from [Dan's](https://github.com/shiffman) [awesome book :notebook:](https://natureofcode.com/book/chapter-2-forces/). There are also other (probably even better) implementations like [this](https://api.flutter.dev/flutter/physics/physics-library.html) and [this](https://github.com/bisrael/Phart). If you found a mistake or have any advice feel free to open an issue, fork, contribute... 

