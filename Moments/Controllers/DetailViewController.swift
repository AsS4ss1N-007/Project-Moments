//
//  DetailViewController.swift
//  Moments
//
//  Created by Sachin's Macbook Pro on 31/10/20.
//

import UIKit
class DetailsViewController: UIViewController {
    fileprivate let cardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 235/255, green: 246/255, blue: 241/255, alpha: 1)
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        return view
    }()
    
    fileprivate let detailImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.image = #imageLiteral(resourceName: "Icons")
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Beach view at the Australia."
        label.adjustsFontSizeToFitWidth = true
        label.textColor = UIColor(red: 86/255, green: 194/255, blue: 149/255, alpha: 1)
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    let date: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "25-Oct-20"
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    let caption: UITextView = {
        let caption = UITextView()
        caption.translatesAutoresizingMaskIntoConstraints = false
        caption.text = "Bali is an Indonesian island known for it’s forested volcanic mountains. Bali is an Indonesian island known for it’s forested volcanic mountains. Bali is an Indonesian island known for it’s forested volcanic mountains. Bali is an Indonesian island known forest’s forested volcanic mountains."
        caption.textColor = .darkGray
        caption.isScrollEnabled = true
        caption.isUserInteractionEnabled = true
        caption.isEditable = false
        caption.backgroundColor = .clear
        caption.font = .systemFont(ofSize: 18, weight: .medium)
        return caption
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI(){
        view.backgroundColor = .white
        imageLayout()
        cardView.applyShadow()
        cardLayout()
        titleLabelLayout()
        dateLabelLayout()
        captionLayout()
    }
    
    private func imageLayout(){
        view.addSubview(detailImage)
        detailImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        detailImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        detailImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        detailImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/3, constant: 30).isActive = true
    }
    
    private func cardLayout(){
        view.addSubview(cardView)
        cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        cardView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3, constant: 50).isActive = true
    }
    
    private func titleLabelLayout(){
        cardView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
    }
    
    private func dateLabelLayout(){
        cardView.addSubview(date)
        date.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
        date.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        date.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
    }
    
    private func captionLayout(){
        cardView.addSubview(caption)
        caption.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 5).isActive = true
        caption.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        caption.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
        caption.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -10).isActive = true
    }
}
