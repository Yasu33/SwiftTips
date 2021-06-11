//
//  SectionTableViewController.swift
//  Tips_UITableView
//
//  Created by Yasuko Namikawa on 2021/06/11.
//

import UIKit

class SectionTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let sectionDataList = ["A", "B", "C"]
    let tableDataList = [
        ["A-1", "A-2", "A-3"],
        ["B-1", "B-2"],
        ["C-1", "C-2", "C-3", "C-4"]
    ]
    
    @IBOutlet var sectionTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sectionTableView.delegate = self
        sectionTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = tableDataList[indexPath.section][indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionDataList.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionDataList[section]
    }

}
