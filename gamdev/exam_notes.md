# Game Dev Exam 
## Slide 6
Summarized
- Collison Detection
- Colliders
- Character Controllers
- Destroying Objects
- Collisions and Layers
- Joints
- Raycasting

### Collision Detection
- uses components like Collider and Rigidbody
- IsTrigger allows for collision notifications (Ex: open a door when a player enters a certain area around the door)
- Any GameObject can have multiple colliders

### Referencing Components
It should be stored in a private property
```c#
private CharacterController characterController;
```

Reference should be made in the start()
```c#
characterController = GetComponent<CharacterController>();
```

### Destroying Objects
- it is important to destroy unused game objects after they are used like bullets for example
- by using pools
- once the game object exits the play area, it is put into a pool of objects to use in he future but not destroyed
- if they player were to fire another bullet, it checks the pool if there are any bullet game objects available. If not it creates a new one
- OnBecomeInvisible(), is called when the object is no longer visible by any camera
- OnCollisonEnter(), is called during collision events
- Renderer Component must be used so Unity knows if the game object is visible or not

### Layers
- can be used to ignore collision events from other objects
- the first 8 layers are controlled by unity
- by default all layers collide with each other but can be opted out but using the layer matrix

### Joints
- used for connecting 2 game objects
- Types
	- Hinge: ties the movement of one game object to another
	- Spring: acts like an invisible spring between 2 game objects
	- Fixed: restricts movement with an unrelated game object
	- Character: allows you to constraint motion to create rag doll effects
	- Configurable: used to modify existing joints

### FixedUpdate()
- Update() runs every frame
- FixedUpdate() is called at consistent intervals and not subject to frame rate
- anything that affects a Rigidbody should be updated in FixedUpdate()

### Raycasting
- shoots invisible ray from target to a destination
- sends a noti when it hits a game object
- can be filtered by using a mask (layerMask)
- commonly used to test if a player was struck by a projectile for example
- can cast from camera to mouse pointer for mouse controls

## Slide 7
Summarized
- Introduction to the Game Manager
- Creating a Game Manager
- Introduction to Pathfinding
- Destroying Objects
- Introduction to Mecanim
- Introduction to Keyframe Animations
- Creating Animations
- Animation States
- Animation State Transitions
- Animation State Transition Conditions
- Triggering Animations in Code
- Animating Models
- Imported Animations

### Game Manager
- allows you to easily tweak game settings while it is being played
- make any game objects that you will need properties to it
- any addition parameters needed make public
- any items such as timers make private

### Path Finding
- unity has path finding solutions
- NavMesh: represents walkable areas
	- Using Bakes configures the NavMesh properties
- NavMesh Agents: the actor or agent using the NavMesh
- Off-Mesh Link: a shortcut that can be represented on the map  such as a gap characters can actually cross
- NavMesh Obstacles: obstacles the agent should avoid
- referencing the NavMesh script int he game manager allows you to use it to control agents

### Mecanim
- animate models
- uses keyframe animations
- animations loop by default

### Animationg Models
- add an animator to a game object, open animator window and create a new animation by editing properties using the keyframes

## Slide 8
Summarized
- Sound
- Audio Mixer
- Event System
- Particle System

### Playing Sound
- needs an audio source object
- Sound Managers help manage the audio be played
- PlayOneShot(): allows the same sound multiple times overlapping
- Play(): only allows one sound to play a single time by itself
- AudioMixer allows you to edit the sounds playing from the Sound Manager

### Event System
- allows to notify an object or a set of objects when an event occurs
- UnityEvent is a custom event type
- you can add event listeners to observe the events

### Particle System
- used to create particle effects like fire
- creates and destorys particles
- can be configured

## Slide 9
Summarized
- Tags
- Standard Assets
- Fps controller
- Canvases

### Tags
- a reference word that can be assigned
- helps identify game objects for scripting
- useful for triggers in collider control scripts
- each game object can only have one tag

### Standard Assets
- unity provides predefined assets which you can implement
- for example, first and third person controllers

### Canvas
- can create UI elements like a reticle and Hud
- Serialized Fields all properties to be used in inspector but not from other scripts

## Slide 10
Summarized
- Coroutines

### Coroutines
- like a function that has the ability to pause execution and return control to Unity, then continue where it left off
- run on the main thred but have similar behavour to multie threading
- 