# UITableViewCellAnimation
UITableViewCellAnimation is collection of animation in swift4 to perform animation in uitableviewcell.
# Requirements

- Xcode 9+
- Swift 4

# How to use
Copy UITableViewCellAnimationKit.swift file in your project and use it simply with UITableViewCell to .method

# OR

UITableViewCellAnimation is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UITableViewCellAnimation'
```

If you install pod then "import UITableViewCellAnimation" else simply use like below


# Example
```
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
