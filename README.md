# SwiftAutolayout
Sample project in Swift 3.x to try auto layout programmatically


### EXAMPLE
![Example gif](https://raw.githubusercontent.com/sauvikatinnofied/SwiftAutolayout/master/YbsIsl.gif)
### Basic Usages

```swift
view.backgroundColor = .black

let centerView = UIView.autolayoutView()
view.addSubview(centerView)
centerView.backgroundColor = .lightGray

// laying out the gray view
centerView._layoutInSuper(percentage: 90.0)

// Orange View
let orangeView = UIView.autolayoutView()
orangeView.backgroundColor = .orange
centerView.addSubview(orangeView)

//  White View
let whiteView = UIView.autolayoutView()
whiteView.backgroundColor = .white
centerView.addSubview(whiteView)

// Green View
let greenView = UIView.autolayoutView()
greenView.backgroundColor = .green
centerView.addSubview(greenView)

// Adding a label
let label = UILabel.autolayoutView()
label.textAlignment = .center
label.text = "India"
label.font = UIFont.boldSystemFont(ofSize: 22.0)
label.textColor = .blue
centerView.addSubview(label)

// laying out the orange view
orangeView._setWidth(sidePadding: 20.0) // Width, X set
orangeView._setHeight(height: 50.0) // Height Set
orangeView._setTop(topPadding: 50) // Y set

// laying out the white view
whiteView._setSizeEqualTo(view: orangeView) // Size Fixed
whiteView._setLeftAlignWith(view: orangeView) // X Set
whiteView._setTopFromBottomEdgeOf(view: orangeView, offset: 3.0) // Y Set

// laying out the green view
greenView._setSizeEqualTo(view: orangeView) // Size Fixed
greenView._setLeftAlignWith(view: orangeView) // X Set
greenView._setTopFromBottomEdgeOf(view: whiteView, offset: 3.0) // Y Set

// laying out the label
label._setHeight(height: 25) // Height Fixed
label._setLeftAlignWith(view: greenView) // X Fixed
label._setRightAlignWith(view: greenView) // Width Fixed
label._setTopFromBottomEdgeOf(view: greenView, offset: 10.0)

```
