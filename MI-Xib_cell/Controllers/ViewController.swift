//
//  ViewController.swift
//  MI-Xib_cell
//
//  Created by ineta.magone on 09/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var labelData = [
        LabelData(role: "Actors:", participantName: "Bruce Willis"),
        LabelData(role: "Camera operators:", participantName: "John Newton"),
        LabelData(role: "Cinemathographers:", participantName: "Robert Bridge Richardson")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        //myTableView.register(UINib.init(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: CustomTableViewCell.reuseId)
        myTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.reuseId)
        myTableView.rowHeight = 100
        myTableView.separatorColor = .clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        labelData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseId, for: indexPath) as? CustomTableViewCell else {return .init()}
        
        cell.configure(labelList: labelData)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let nameData = labelData[indexPath.row]
        print(nameData)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}



