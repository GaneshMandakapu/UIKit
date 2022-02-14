//
//  HotstarView.swift
//  Tabbar
//
//  Created by M_AMBIN05376 on 07/02/22.
//

import UIKit

class HotstarView: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let webSeriesList:[String]=["Maharani","Scam 1992","JL50","SZN","Joker","Mahanati"]

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView.dataSource = self
        myTableView.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell .textLabel?.text = webSeriesList[indexPath.row]
        return cell
    }


}
//extension HotstarView:


