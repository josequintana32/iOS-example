//
//  DetailViewController.swift
//  iOS-example
//
//  Created by Jose Quintana on 21/03/2020.
//  Copyright © 2020 Kelsus. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class DetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var item1Title: UILabel!
    @IBOutlet weak var item1Label: UILabel!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    var data: Displayable?
    var listData: [Displayable] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
        
        //listTableView.dataSource = self
    }
    
    private func commonInit() {
        guard let data = data else { return }
        
        titleLabel.text = data.titleLabelText
        subtitleLabel.text = data.overviewLabelText
        
        item1Title.text = data.item1.label
        item1Label.text = data.item1.value
        //listTitleLabel.text = data.listTitle
        
        let posterUrl = "https://image.tmdb.org/t/p/original\(data.item1.value)"
        let url = URL(string: posterUrl)
        posterImageView.kf.setImage(with: url)
        print("siii \(posterUrl)")
    }
}



