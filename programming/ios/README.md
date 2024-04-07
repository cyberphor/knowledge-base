## Setup
**What type of files do I need?**  
Images and sound files. 

**What type of images should I use?**  
Apple developer documentation highly recommends the Portable Network Graphic (PNG) format because it "provides lossless image content, meaning that saving image data to a PNG format and then reading it back results in the exact same pixel values. PNG also has an optimized storage format designed for faster reading of the image data. It is the preferred image format for iOS." (Apple Developer Documentation Archive, n.d.)

**What size images do I need?**  
The background depends on the resolution of the platform (e.g., iPhone 13 is 1170 x 2532). You probably need one background each for each platform you want to support too.

**How do I make my own images?**  
Download and use a image editor (e.g., GIMP) to create files that meet your image requirements. The size of an image is defined by its width and height. For example, to create a background image that is 1170 x 2532, you would set the file width to 1170 and height to 2532. 

**What categories of images do I need?**  
Background, sprites, and animations (i.e., sprite sheets).

**What type of sprites do I need?**  
Player, enemies, objects, and animations.

## App Icons
[https://www.appicon.co/](https://www.appicon.co/)

## Cocoa Application Terms
**Storyboard**  
A storyboard is XML file. It's used to display your application's user interface. They allow you to define how data is transferred between *scenes*. 

**Scene**  
A scene is a screen's worth of content. For example, when you open an application, you're looking at one scene. If you tap a button and the screen changes, you're looking at another scene. It represents a view and view controller. 

**View**  
A view is an area of a window that can respond to user input. 

**Seque**  
A seque represents a transition between *view controllers*. 

**View Controller**  
A view controller listens for model object changes and updates view objects. 

## Creating the Main Storyboard
**Step 1.** Click "File > New > File... > iOS | Storyboard", select your application as your target, and save the storyboard under the name `Main`.

**Step 2.** Open `Main.storyboard`.

**Step 3.** Click "View > Inspectors > Attributes." Under "View Controller", select "Is Initial View Controller." The purpose of this step is to add an entrypoint to your storyboard. 

**Step 4.** Click "View > Inspectors > Identity." Under "Custom Class", enter the name of your view controller class (e.g., `GameViewController`). The purpose of this step is to wire your scene to your view controller and view. 

## SpriteKit
**SpriteKit**  
SpriteKit is Swift's framework for making 2D games.

**Sprite**   
A sprite is a 2D object. 

**Sprite Node**  
A sprite node holds the metadata of a sprite (e.g., position, rotation, and scale) within a *scene graph*. 

**Texture**  
A texture is the image overlayed onto a sprite. 

## References
* [Apple Developer Documentation Archive](https://developer.apple.com/library/archive/documentation/2DDrawing/Conceptual/DrawingPrintingiOS/LoadingImages/LoadingImages.html)
* [Introducing Xcode’s Scene Editor](https://www.checksimgames.com/introducing-xcodes-scene-editor/)