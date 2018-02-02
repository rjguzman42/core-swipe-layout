//
//  HomeVC.swift
//  SwipeViews
//
//  Created by Roberto Guzman on 2/1/18.
//  Copyright © 2018 Roberto Guzman. All rights reserved.
//

import Foundation
import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    lazy var menuBar: MenuBar = {
        let mb = MenuBar()
        mb.homeVC = self
        return mb
    }()
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.isPagingEnabled = true
        cv.bounces = false
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    let leftCellId = "leftCellId"
    let middleCellId = "middleCellId"
    let rightCellId = "rightCellId"
    var fromLaunch: Bool = true
    var collectionViewLoaded = false
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.setOrientation(orientation: "portrait")
        collectionViewUISetup()
        setUpMenuBar()
    }
    
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if(fromLaunch) {
            //preselect the "middle" page for the intial launch
            let indexPath = IndexPath(item: Int(1), section: 0)
            menuBar.collectionView.selectItem(at: indexPath, animated: false, scrollPosition: [])
            scrollToMenuIndex(menuIndex: 1, animated: false)
            menuBar.scrollToMenuIndex(menuIndex: 1, animated: false)
            fromLaunch = false
        }
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.isStatusBarHidden = false
        
    }
    
    override open func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setUpMenuBar() {
        view.addSubview(menuBar)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: menuBar)
        view.addConstraintsWithFormat(format: "V:|[v0(65)]|", views: menuBar)
    }
    
    func collectionViewUISetup() {
        self.view.addSubview(collectionView)
        self.view.addConstraintsWithFormat(format: "H:|[v0]|", views: collectionView)
        self.view.addConstraintsWithFormat(format: "V:|[v0]|", views: collectionView)
        collectionView.register(LeftCell.self, forCellWithReuseIdentifier: leftCellId)
        collectionView.register(MiddleCell.self, forCellWithReuseIdentifier: middleCellId)
        collectionView.register(RightCell.self, forCellWithReuseIdentifier: rightCellId)
        collectionView.contentInset = UIEdgeInsetsMake(0,0,0,0)
        collectionView.scrollIndicatorInsets = UIEdgeInsetsMake(0,0,0,0)
    }
    
    func scrollToMenuIndex(menuIndex: Int, animated: Bool) {
        let indexPath = IndexPath(item: menuIndex, section: 0)
        collectionView.scrollToItem(at: indexPath, at: [], animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(indexPath.item == 0) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: leftCellId, for: indexPath) as! LeftCell
            cell.currentController = self
            return cell
        } else if(indexPath.item == 1) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: middleCellId, for: indexPath) as! MiddleCell
            cell.currentController = self
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: rightCellId, for: indexPath) as! RightCell
            cell.currentController = self
            return cell
        }
    }
    
    internal func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if !collectionViewLoaded {
            let indexToScrollTo = IndexPath(item: 1, section: 0)
            self.collectionView.scrollToItem(at: indexToScrollTo, at: .left, animated: false)
            collectionViewLoaded = true
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
        return size
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print(targetContentOffset.pointee.x)
        let index = targetContentOffset.pointee.x / view.frame.width
        let indexPath = IndexPath(item: Int(index), section: 0)
        menuBar.collectionView.selectItem(at: indexPath, animated: true, scrollPosition: [])
        menuBar.scrollToMenuIndex(menuIndex: Int(index), animated: true)
    }
    
    
    
}

