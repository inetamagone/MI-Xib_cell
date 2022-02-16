//
//  ViewController.swift
//  MI-Xib_cell
//
//  Created by ineta.magone on 09/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    //var labelData: LabelData!
    
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
//        cell.roleLabel.tag = indexPath.section
//        cell.nameLabel.tag = indexPath.section
//        cell.configure(labelList: labelData)
//        cell.roleLabel.text = labelData[indexPath.row].role
//        cell.nameLabel.text = labelData[indexPath.row].participantName
        //cell.addNames(role: labelData[indexPath.row].role, participantName: labelData[indexPath.row].participantName)
        cell.selectionStyle = .none
        
//        func setData(labelList: [LabelData]) -> [String] {
//            var stringArray = [String]()
//            self.labelData = labelList
//
//            for _ in labelList {
//                for _ in 0...1 {
//                stringArray.append(self.labelData[)
//                stringArray.append(cell.self.labelData[indexPath.row].participantName)
//
//                }
//            }
//                        var first = labelList[0]
//                        var second = labelList[1]
//                        var third = labelList[2]
//                        for _ in 0...1 {
//                            //for _ in 0...1 {
//                                stringArray.append(cell.self.labelData[indexPath.row].role)
//                                stringArray.append(cell.self.labelData[indexPath.row].participantName)
//                            //}
//                        }
//            print(labelList[0])
//            print(stringArray)
//            return stringArray
//        }
//        setData(labelList: labelData)
        return cell
}

//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        let nameData = labelData[indexPath.row]
//        print(nameData)
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}



