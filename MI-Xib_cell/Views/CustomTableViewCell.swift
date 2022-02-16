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
    
    var labelData: [LabelData] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initView()
        self.labelData = []
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
    
    func configure(labelList: [LabelData]) {
        self.labelData = labelList
        addToRole(roleLbl: roleLabel, nameLbl: nameLabel)
    }
    
    func addToRole(roleLbl: UILabel, nameLbl: UILabel) {
        var roleValue = ""
        var nameValue = ""
        var arrIndex = 0
        for _ in labelData {
            roleValue = self.labelData[arrIndex].role
            nameValue = self.labelData[arrIndex].participantName
            arrIndex += 1
            roleLabel.text = roleValue
            nameLabel.text = nameValue
            print(roleValue)
            print(nameValue)
        }
    }
}
