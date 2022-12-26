//
//  ViewController.swift
//  TableViewEx2
//
//  Created by runnysun on 2022/10/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    let flags = ["ec", "sn", "nl", "qa", "gb-wls", "ir", "us", "gb-eng", "sa", "pl", "mx", "ar", "au", "tn", "dk", "fr", "cr", "jp", "de", "es", "ca", "ma", "hr", "be", "cm", "rs", "ch", "br", "gh", "kr", "uy", "pt"]
    
    let countries = ["Ecuador", "Senegal", "Netherlands", "Qatar", "Wales", "Iran", "USA", "England", "Saudi Arabia", "Poland", "Mexico", "Argentina", "Australia", "Tunisia", "Denmark", "France", "Costa Rica", "Japan", "Germany", "Spain", "Canada", "Morocco", "Croatia", "Belgium", "Cameroon", "Serbia", "Switzerland", "Brazil", "Ghana", "South Korea", "Uruguay", "Portugal"]
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        table.dataSource = self
        table.delegate = self
    }


}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = countries[indexPath.row]
        content.image = UIImage(named: flags[indexPath.row])
        content.imageProperties.maximumSize.height = 80
        content.imageProperties.maximumSize.width = 100
        content.secondaryText = flags[indexPath.row]
        content.secondaryTextProperties.color = .red
cell.contentConfiguration = content
                
                                return cell
    }

}
                                extension ViewController: UITableViewDelegate {
            
        }
