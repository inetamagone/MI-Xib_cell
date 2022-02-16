//
//  CustomTableViewCell.swift
//  MI-Xib_cell
//
//  Created by ineta.magone on 15/02/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var commonView: UIView!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    static var reuseId: String = "customCell"
    
    var labelNames: [LabelData] = []

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initView()
        self.labelNames = []
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func initView() {
        Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)
        addSubview(commonView)
        commonView.frame = self.frame
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func addData(){
        labelNames.append(LabelData(role: "1a", participantName: "1b"))
        labelNames.append(LabelData(role: "2a", participantName: "2b"))
        labelNames.append(LabelData(role: "3a", participantName: "3b"))
    }
    
//    func configure (labelList: [LabelData]) {
//        addNames(role: role, participantName: participantName)
//        self.labelNames = labelList
//    }
//
//    func addNames(role: String, participantName: String) -> [String] {
//        var stringArray = [String]()
//        stringArray.append(labelStruct?.role?)
//        stringArray.append(labelStruct?.participantName?)
//
//
//        print(stringArray)
//        return stringArray
//    }
}

