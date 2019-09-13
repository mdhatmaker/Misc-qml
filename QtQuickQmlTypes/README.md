# Qt Quick QML Types

https://doc.qt.io/qt-5/qtquick-qmlmodule.html


## Submodules

Qt Quick includes several submodules which contain additional types.

* Xml List Model - contains types for creating models from XML data
* Local Storage - a submodule containing a JavaScript interface for an SQLite database
* Particles - provides a particle system for QML applications
* Window - contains types for creating top-level windows and accessing screen information
* Dialogs - contains types for creating and interacting with system dialogs
* Controls - provides a set of reusable UI components
* Layouts - contains types that are used to arrange items in the user interface
* Tests - types for testing QML applications.

## Basic Types

There are a number of basic types that are supported by default in the QML language:
https://doc.qt.io/qt-5/qtqml-typesystem-basictypes.html

In addition, the QtQuick import provides the following basic types:

* color
ARGB color value. The color type refers to an ARGB color value. It can be specified in a number of ways:
* font
Font value with the properties of QFont. The font type refers to a font value with the properties of QFont
* matrix4x4
A matrix4x4 type is a 4-row and 4-column matrix
* quaternion
A quaternion type has scalar, x, y, and z attributes
* vector2d
A vector2d type has x and y attributes
* vector3d
Value with x, y, and z attributes
* vector4d
A vector4d type has x, y, z and w attributes

## Object Types

Most object types provided by the QtQuick import are based on the Item type, which itself derives from QtObject. QML object types provided by the Qt QML module (such as QtObject and Component) are also available when you import QtQuick.

* Accessible
Enables accessibility of QML items
* AnchorAnimation
Animates changes in anchor values
* AnchorChanges
Specifies how to change the anchors of an item in a state
* AnimatedImage
Plays animations stored as a series of images
* AnimatedSprite
Draws a sprite animation
* Animation
Is the base of all QML animations
* AnimationController
Enables manual control of animations
* Animator
Is the base of all QML animators
* Behavior
Defines a default animation for a property change
* BorderImage
Paints a border based on an image
* BorderImageMesh
Defines a mesh with vertices arranged like those of a BorderImage
* Canvas
Provides a 2D canvas item enabling drawing via JavaScript
* CanvasGradient
Provides an opaque CanvasGradient interface
* CanvasImageData
Contains image pixel data in RGBA order
* CanvasPixelArray
Provides ordered and indexed access to the components of each pixel in image data
* ColorAnimation
Animates changes in color values
* Column
Positions its children in a column
* Context2D
Provides 2D context for shapes on a Canvas item
* DoubleValidator
Defines a validator for non-integer numbers
* Drag
For specifying drag and drop events for moved Items
* DragEvent
Provides information about a drag event
* DragHandler
Handler for dragging
* DropArea
For specifying drag and drop handling in an area
* EnterKey
Provides a property to manipulate the appearance of Enter key on an on-screen keyboard
* EventPoint
Provides information about an individual point within a PointerEvent
* EventTouchPoint
Provides information about an individual touch point within a PointerEvent
* Flickable
Provides a surface that can be "flicked"
* Flipable
Provides a surface that can be flipped
* Flow
Positions its children side by side, wrapping as necessary
* FocusScope
Explicitly creates a focus scope
* FontLoader
Allows fonts to be loaded by name or URL
* FontMetrics
Provides metrics for a given font
* GestureEvent
Parameter given with the gestureStarted signal
* Gradient
Defines a gradient fill
* GradientStop
Defines the color at a position in a Gradient
* GraphicsInfo
Provides information about the used Qt Quick backend
* Grid
Positions its children in grid formation
* GridMesh
Defines a mesh with vertices arranged in a grid
* GridView
For specifying a grid view of items provided by a model
* HandlerPoint
An event point
* HoverHandler
Handler for mouse and tablet hover
* Image
Displays an image
* IntValidator
Defines a validator for integer values
* Item
A basic visual QML type
* ItemGrabResult
Contains the results from a call to Item::grabToImage()
* KeyEvent
Provides information about a key event
* KeyNavigation
Supports key navigation by arrow keys
* Keys
Provides key handling to Items
* LayoutMirroring
Property used to mirror layout behavior
* ListView
Provides a list view of items provided by a model
* Loader
Allows dynamic loading of a subtree from a URL or Component
* Matrix4x4
Provides a way to apply a 4x4 tranformation matrix to an Item
* MouseArea
Enables simple mouse handling
* MouseEvent
Provides information about a mouse event
* MultiPointHandler
Abstract handler for multi-point Pointer Events
* MultiPointTouchArea
Enables handling of multiple touch points
* NumberAnimation
Animates changes in qreal-type values
* OpacityAnimator
Type animates the opacity of an Item
* ParallelAnimation
Enables animations to be run in parallel
* ParentAnimation
Animates changes in parent values
* ParentChange
Specifies how to reparent an Item in a state change
* Path
Defines a path for use by PathView and Shape
* PathAngleArc
Defines an arc with the given radii and center
* PathAnimation
Animates an item along a path
* PathArc
Defines an arc with the given radius
* PathAttribute
Specifies how to set an attribute at a given position in a Path
* PathCubic
Defines a cubic Bezier curve with two control points
* PathCurve
Defines a point on a Catmull-Rom curve
* PathElement
The base path type
* PathInterpolator
Specifies how to manually animate along a path
* PathLine
Defines a straight line
* PathMove
Moves the Path's position
* PathPercent
Manipulates the way a path is interpreted
* PathQuad
Defines a quadratic Bezier curve with a control point
* PathSvg
Defines a path using an SVG path data string
* PathView
Lays out model-provided items on a path
* PauseAnimation
Provides a pause for an animation
* PinchArea
Enables simple pinch gesture handling
* PinchEvent
For specifying information about a pinch event
* PinchHandler
Handler for pinch gestures
* PointHandler
Handler for reacting to a single touchpoint
* PointerDevice
Provides information about a pointing device
* PointerDeviceHandler
Abstract handler for pointer events with device-specific constraints
* PointerEvent
Provides information about an event from a pointing device
* PointerHandler
Abstract handler for pointer events
* Positioner
Provides attached properties that contain details on where an item exists in a positioner
* PropertyAction
Specifies immediate property changes during animation
* PropertyAnimation
Animates changes in property values
* PropertyChanges
Describes new property bindings or values for a state
* Rectangle
Paints a filled rectangle with an optional border
* RegExpValidator
Provides a string validator
* Repeater
Instantiates a number of Item-based components using a provided model
* Rotation
Provides a way to rotate an Item
* RotationAnimation
Animates changes in rotation values
* RotationAnimator
Type animates the rotation of an Item
* Row
Positions its children in a row
* Scale
Provides a way to scale an Item
* ScaleAnimator
Type animates the scale factor of an Item
* ScriptAction
Defines scripts to be run during an animation
* SequentialAnimation
Allows animations to be run sequentially
* ShaderEffect
Applies custom shaders to a rectangle
* ShaderEffectSource
Renders a Qt Quick item into a texture and displays it
* Shortcut
Provides keyboard shortcuts
* SinglePointHandler
Abstract handler for single-point Pointer Events
* SmoothedAnimation
Allows a property to smoothly track a value
* SpringAnimation
Allows a property to track a value in a spring-like motion
* Sprite
Specifies sprite animations
* SpriteSequence
Draws a sprite animation
* State
Defines configurations of objects and properties
* StateChangeScript
Specifies how to run a script in a state
* StateGroup
Provides built-in state support for non-Item types
* SystemPalette
Provides access to the Qt palettes
* TableView
Provides a table view of items provided by the model
* TapHandler
Handler for taps and clicks
* Text
Specifies how to add formatted text to a scene
* TextEdit
Displays multiple lines of editable formatted text
* TextInput
Displays an editable line of text
* TextMetrics
Provides metrics for a given font and text
* TouchPoint
Describes a touch point in a MultiPointTouchArea
* Transform
For specifying advanced transformations on Items
* Transition
Defines animated transitions that occur on state changes
* Translate
Provides a way to move an Item without changing its x or y properties
* UniformAnimator
Type animates a uniform of a ShaderEffect
* Vector3dAnimation
Animates changes in QVector3d values
* ViewTransition
Specifies items under transition in a view
* WheelEvent
Provides information about a mouse wheel event
* XAnimator
Type animates the x position of an Item
* YAnimator
Type animates the y position of an Item