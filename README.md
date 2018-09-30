# UITableViewCellAnimation

[![Version](https://img.shields.io/cocoapods/v/UITableViewCellAnimation.svg?style=flat)](https://cocoapods.org/pods/UITableViewCellAnimation)
[![License](https://img.shields.io/cocoapods/l/UITableViewCellAnimation.svg?style=flat)](https://cocoapods.org/pods/UITableViewCellAnimation)
[![Platform](https://img.shields.io/cocoapods/p/UITableViewCellAnimation.svg?style=flat)](https://cocoapods.org/pods/UITableViewCellAnimation)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- Xcode 9+
- Swift 4

## Installation

UITableViewCellAnimation is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UITableViewCellAnimation'
```

# UITableViewCellAnimation
UITableViewCellAnimation is collection of animation in swift4 to perform animation in uitableviewcell.

# Example
```
import UITableViewCellAnimation

func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    if (animationType == .bounce){
        cell.bouncingAnimation(forIndex: indexPath.row)
    }else if (animationType == .moveIn){
        cell.moveInAnimation(forIndex: indexPath.row)
    }else if (animationType == .leftIn){
        cell.leftInAnimation(forIndex: indexPath.row)
    }else if (animationType == .rightIn){
        cell.rightInAnimation(forIndex: indexPath.row)
    }else if (animationType == .side){
        if (indexPath.row % 2 == 0){
            cell.leftInAnimation(forIndex: indexPath.row)
        }else{
            cell.rightInAnimation(forIndex: indexPath.row)
        }
    }else{
        cell.fadeInAnimation(forIndex: indexPath.row)
    }
}
```

![alt tag](https://github.com/pratik-123/UITableViewCellAnimation/blob/master/tableviewcell.png)

## Author

Pratik Lad, pratik.lad@outlook.com

## License

UITableViewCellAnimation is available under the MIT license. See the LICENSE file for more info.
