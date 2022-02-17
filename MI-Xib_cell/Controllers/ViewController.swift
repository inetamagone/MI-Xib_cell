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
        LabelData(role: "Actor:", participantName: "Bruce Willis"),
        LabelData(role: "Camera operator:", participantName: "John Newton"),
        LabelData(role: "Cinemathographer and author:", participantName: "Robert Bridge Richardson")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
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
        
        let indexOfRow = labelData[indexPath.row]
        cell.configure(labelList: labelData, indexOfRow: indexOfRow)
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}



