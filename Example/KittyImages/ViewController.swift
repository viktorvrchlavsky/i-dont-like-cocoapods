//
//  ViewController.swift
//  KittyImages
//
//  Created by Viktor Vrchlavský on 01/30/2022.
//  Copyright (c) 2022 Viktor Vrchlavský. All rights reserved.
//

import UIKit
import KittyImages
import Kingfisher

class ViewController: UIViewController {
    @IBOutlet private weak var imageView: UIImageView!

    private let provider = PussyProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadPussyImage()
    }

    private func loadPussyImage() {
        Task {
            let imageURL = try await provider.getRandomPussyPictureURL()
            imageView.kf.setImage(with: imageURL)
        }
    }

    @IBAction private func reloadButtonPressed(_ sender: Any) {
        loadPussyImage()
    }
}

