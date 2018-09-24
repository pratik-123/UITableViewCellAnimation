//
//  HomeViewController.swift
//  UITableViewCellAnimation
//
//  Created by Pratik Lad on 24/09/18.
//  Copyright © 2018 iOS. All rights reserved.
//

import UIKit

enum enumAnimation {
    case fadeIn,bounce,moveIn,side,leftIn,rightIn
    var displayName : String{
        switch self {
        case .fadeIn:
            return "FadeIn animation"
        case .bounce:
            return "Bouncing Animation"
        case .moveIn:
            return "MoveIn Animation"
        case .side:
            return "Side(left/right) Animation"
        case .leftIn:
            return "LeftIn Animation"
        case .rightIn:
            return "RightIn Animation"
        }
    }
    
}
class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayOfRows : [enumAnimation] = [.fadeIn,.bounce,.moveIn,.side,.leftIn,.rightIn]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TableViewCell Animation"
        tableViewSetup()
    }
}

extension HomeViewController : UITableViewDelegate,UITableViewDataSource{
    func tableViewSetup() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HomeTableViewCell.self)) as! HomeTableViewCell
        cell.textLabel?.text = arrayOfRows[indexPath.row].displayName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: String(describing: TableAnimationViewController.self)) as! TableAnimationViewController
        nextVC.animationType = arrayOfRows[indexPath.row]
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
