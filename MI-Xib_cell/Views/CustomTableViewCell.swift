//
//  CustomTableViewCell.swift
//  MI-Xib_cell
//
//  Created by ineta.magone on 15/02/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    static var reuseId: String = "customCell"
    private var labelData: [LabelData] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func initView() {
        Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.frame
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure (labelList: [LabelData]) {
        self.labelData = labelList
    }
}

