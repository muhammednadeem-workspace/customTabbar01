//
//  ViewController.swift
//  TestApp
//
//  Created by Muhammed Nadeem on 24/08/22.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabbarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbarView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.performTabSwitch(tag: 1)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }


    private func setupTabbarView(){
        tabbarView.layer.cornerRadius = tabbarView.frame.height / 3
        tabbarView.clipsToBounds = true
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        performTabSwitch(tag: sender.tag)
    }
    
    func performTabSwitch(tag: Int?){
        switch tag{
        case 1:
            let favoriteVC = self.storyboard?.instantiateViewController(withIdentifier: "FavoraiteViewController") as! FavoraiteViewController
            contentView.addSubview(favoriteVC.view)
            favoriteVC.didMove(toParent: self)
            break
        case 2:
            let televisionVC = self.storyboard?.instantiateViewController(withIdentifier: "TelevisionViewController") as! TelevisionViewController
            contentView.addSubview(televisionVC.view)
            televisionVC.didMove(toParent: self)
            break
        case 3:
            let searchVC = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
            contentView.addSubview(searchVC.view)
            searchVC.didMove(toParent: self)
            break
        case 4:
            let cameraVC = self.storyboard?.instantiateViewController(withIdentifier: "CameraViewController") as! CameraViewController
            contentView.addSubview(cameraVC.view)
            cameraVC.didMove(toParent: self)
            break
        default:
            break
        }
    }
}

