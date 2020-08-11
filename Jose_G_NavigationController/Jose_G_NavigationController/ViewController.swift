//
//  ViewController.swift
//  Jose_G_NavigationController
//
//  Created by José Godinez on 8/5/20.
//  Copyright © 2020 José Godinez. All rights reserved.
//
import UIKit
import AVKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }
    override func viewDidAppear(_ animated: Bool) {
        guard let path = Bundle.main.url(forResource: "Jojo", withExtension: "m4v") else {
            print("not found")
            return  }
        let player = AVPlayer(url: path)
        let pc = AVPlayerViewController()
        pc.player = player
        present(pc,animated: true) {
            player.play()
        }
    }
}

