//
//  HomeViewController.swift
//  Moments
//
//  Created by Sachin's Macbook Pro on 31/10/20.
//

import UIKit
class HomeViewController: UIViewController{
    // MARK:- PROPERTIES
    
    fileprivate lazy var userProfileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = #imageLiteral(resourceName: "ProfileButton")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    fileprivate let homeCV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .clear
        cv.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        cv.register(HomeCell.self, forCellWithReuseIdentifier: "Moments")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileButtonLayout()
        configureUI()
    }
    
    // MARK:- LAYOUTS
    
    func configureUI(){
        view.backgroundColor = .white
        setupNavigationBar()
        cvLayout()
        setupDelegates()
    }
    
    func setupNavigationBar(){
        title = "Moments"
        navigationController?.navigationBar.prefersLargeTitles = true
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red: 86/255, green: 194/255, blue: 149/255, alpha: 1)]
        self.navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
    }
    
    func setupDelegates(){
        homeCV.delegate = self
        homeCV.dataSource = self
    }
    
    private func cvLayout(){
        view.addSubview(homeCV)
        homeCV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        homeCV.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        homeCV.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        homeCV.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    private func profileButtonLayout(){
        let profileButton = UIButton(type: .system)
        profileButton.addSubview(userProfileImage)
        userProfileImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        userProfileImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        userProfileImage.topAnchor.constraint(equalTo: profileButton.topAnchor).isActive = true
        userProfileImage.bottomAnchor.constraint(equalTo: profileButton.bottomAnchor).isActive = true
        profileButton.setImage(userProfileImage.image, for: .normal)
        profileButton.tintColor = .white
        profileButton.layer.cornerRadius = 10
        profileButton.clipsToBounds = true
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        profileButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        profileButton.addTarget(self, action: #selector(showProfileVC), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: profileButton)
    }
    
    // MARK:- CONTROLLERS
    
    @objc func showProfileVC(){
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Moments", for: indexPath) as! HomeCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = homeCV.frame.size.width * 9 / 16 + 70
        return CGSize(width: homeCV.frame.size.width - 40, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailsViewController()
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let rotationTrans = CATransform3DTranslate(CATransform3DIdentity, 0, 50, 0)
        cell.layer.transform = rotationTrans
        cell.alpha = 0
        UIView.animate(withDuration: 0.5) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
    }
    
}
