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
    private var labelData: [LabelData] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initView()
        //backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func initView() {
        Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)
        addSubview(commonView)
        commonView.frame = self.frame
        commonView.translatesAutoresizingMaskIntoConstraints = false
        commonView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            commonView.topAnchor.constraint(equalTo: topAnchor),
            commonView.leadingAnchor.constraint(equalTo: leadingAnchor),
            commonView.bottomAnchor.constraint(equalTo: bottomAnchor),
            commonView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure (labelList: [LabelData]) {
        self.labelData = labelList
    }
}

