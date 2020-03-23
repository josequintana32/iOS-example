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
import Cosmos

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var votesRatingBar: CosmosView!
    
    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    
    var data: Displayable?
    var listData: [Displayable] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    private func commonInit() {
        guard let data = data else { return }
        
        titleLabel.text = data.titleLabelText
        subtitleLabel.text = data.overviewLabelText
        votesLabel.text = String(data.votesLabelText)
        releaseLabel.text = data.releaseLabelText
        popularityLabel.text = String(data.popularityLabelText)
        
        let stringPoster = "https://image.tmdb.org/t/p/original\(data.posterImage.value)"
        let urlPoster = URL(string: stringPoster)
        posterImageView.kf.setImage(with: urlPoster)
        
        let stringBack = "https://image.tmdb.org/t/p/original\(data.backdropImage.value)"
        let urlBack = URL(string: stringBack)
        backdropImageView.kf.setImage(with: urlBack)
        print("ssss \(data.ratingLabelText)")
        self.votesRatingBar.rating = data.ratingLabelText
    }
}



