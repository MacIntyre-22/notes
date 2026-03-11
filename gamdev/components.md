# Components
## Rigidbody
- allows the game object to respond to forces like gravity
- allows for notis when another object collides with it, allowing you define what happens after
- can write scripts to move the rigidbody

## Collider
- allows to define the bounds of a game object
- usually use primitive shapes like spheres and boxes
- for more precise collision detection use a MESH COLLIDER

## Mesh Collider
- wraps the the actual mesh to the geometry of the model it is applied to
- good for more complicated objects
- is "expensive", meaning it takes more resources to work properly
- you can create a low-poly collider version of the mesh collider for better performance when using

## Character Controller
- simpler way to make an object move
- built in component
- can move based on user input
- combines all components of a rigidbody and collider into one and provides a simple API to use

## Renderer Component
- allows Unity to see an object
- any renderer object in the view of a camera is considered visible to Unity

## Audio Listener