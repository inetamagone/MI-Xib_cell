//
//  ViewController.swift
//  MI-Xib_cell
//
//  Created by ineta.magone on 09/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    //private var myCustomCell: CustomTableViewCell!
    //@IBOutlet weak var myCustomCell: UITableViewCell!
    
    var labelData = [
        LabelData(role: "Actors:", participantName: "Bruce Willis"),
        LabelData(role: "Camera operators:", participantName: "John Newton"),
        LabelData(role: "Cinemathographers:", participantName: "Robert Bridge Richardson")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.reuseId)
        myTableView.separatorColor = .clear
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        labelData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseId, for: indexPath) as? CustomTableViewCell else {return .init()}
        let nameData = labelData[indexPath.row]
        cell.roleLabel.text = nameData.role
        cell.nameLabel.text = nameData.participantName
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}



