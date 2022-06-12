//
//  SecondTypeCell.swift
//  Albom-2
//
//  Created by Мария Вольвакова on 10.06.2022.
//

import UIKit


// MARK: - UICollectionViewCell

class SecondTypeCell: UICollectionViewCell {
    static var identifier = "SecondTypeCell"
    var imageIcon = UIImageView()
    
    var lableTitle: UILabel = {
        let lable = UILabel()
        lable.font = UIFont.preferredFont(forTextStyle: .title3)
        lable.adjustsFontForContentSizeCategory = true
        lable.textColor = .systemBlue
        return lable
    }()
    
    var forwardImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .placeholderText
        return image
    }()
    
    var lableNumber: UILabel = {
        let lable = UILabel()
        lable.font = UIFont.preferredFont(forTextStyle: .subheadline)
        lable.adjustsFontForContentSizeCategory = true
        lable.textColor = .placeholderText
        return lable
    }()
    
    lazy var viewLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "lineColor")
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view.layer.masksToBounds = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(data: Album) {
        imageIcon.image = data.image
        lableTitle.text = data.lableTitle
        lableNumber.text = data.lableNumber
    }
    
    func setupView(){
        contentView.addSubview(imageIcon)
        imageIcon.translatesAutoresizingMaskIntoConstraints = false
        imageIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        imageIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    
        contentView.addSubview(lableTitle)
    
        lableTitle.translatesAutoresizingMaskIntoConstraints = false
        lableTitle.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor, constant: 17).isActive = true
        lableTitle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    
        contentView.addSubview(forwardImage)
        forwardImage.translatesAutoresizingMaskIntoConstraints = false
        forwardImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        forwardImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    
        contentView.addSubview(lableNumber)
        lableNumber.translatesAutoresizingMaskIntoConstraints = false
        lableNumber.trailingAnchor.constraint(equalTo: forwardImage.trailingAnchor, constant: -30).isActive = true
        lableNumber.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    
        contentView.addSubview(viewLine)
        viewLine.translatesAutoresizingMaskIntoConstraints = false
        viewLine.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor, constant: 17).isActive = true
        viewLine.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        viewLine.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        
    }
}
