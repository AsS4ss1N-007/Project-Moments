//
//  HomeCell.swift
//  Moments
//
//  Created by Sachin's Macbook Pro on 31/10/20.
//

import UIKit
class HomeCell: UICollectionViewCell {
    let homeImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .white
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        image.image = #imageLiteral(resourceName: "Icons")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "27-Oct-20"
        label.textColor = UIColor.lightGray
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    let captionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Beach view at the Australia. Beach view at the Australia."
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.textColor = UIColor(red: 86/255, green: 194/255, blue: 149/255, alpha: 1)
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        backgroundColor = UIColor(red: 251/255, green: 251/255, blue: 251/255, alpha: 1)
        self.applyShadow()
        homeImageLayout()
        dateLayout()
        captionLayout()
    }
    
    private func homeImageLayout(){
        addSubview(homeImage)
        let height = (UIScreen.main.bounds.width - 40) * 9 / 16
        homeImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        homeImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        homeImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        homeImage.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    private func dateLayout(){
        addSubview(dateLabel)
        dateLabel.leadingAnchor.constraint(equalTo: homeImage.leadingAnchor, constant: 10).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: homeImage.trailingAnchor, constant: -10).isActive = true
        dateLabel.topAnchor.constraint(equalTo: homeImage.bottomAnchor, constant: 5).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    private func captionLayout(){
        addSubview(captionLabel)
        captionLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor).isActive = true
        captionLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor).isActive = true
        captionLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 3).isActive = true
        captionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -3).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
