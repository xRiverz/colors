//
//  ViewController.swift
//  colors
//
//  Created by administrator on 10/01/2022.
//


import UIKit

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.frame.size.height/8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let colors : [UIColor] = [.purple,.black,.yellow,.red,.orange,.cyan,.brown,.darkGray]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


}
