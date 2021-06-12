//
//  ViewController.swift
//  Tips_UITableView
//
//  Created by Yasuko Namikawa on 2021/06/09.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let dataList: [String] = ["A", "B", "C"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = dataList[indexPath.row]
        cell.detailTextLabel?.text = "あいうえおかきくけこ"
        cell.imageView?.image = UIImage(named: "IMG_2371.JPG")
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
    }


}

