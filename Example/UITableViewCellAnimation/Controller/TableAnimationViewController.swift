//
//  TableAnimationViewController.swift
//  UITableViewCellAnimation
//
//  Created by Pratik Lad on 24/09/18.
//  Copyright © 2018 iOS. All rights reserved.
//

import UIKit

class TableAnimationViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var animationType : enumAnimation = .fadeIn
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = animationType.displayName
        tableViewSetup()
    }

    @IBAction func buttonHandlerRefresh(_ sender: UIButton) {
        tableView.reloadData()
    }
}

extension TableAnimationViewController : UITableViewDelegate,UITableViewDataSource{
    func tableViewSetup() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 110
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: AnimationTableViewCell.self)) as! AnimationTableViewCell
        return cell
    }
    
}
