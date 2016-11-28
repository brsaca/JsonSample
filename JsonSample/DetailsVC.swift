//
//  DetailsVC.swift
//  JsonSample
//
//  Created by Brenda Saavedra on 28/11/16.
//  Copyright © 2016 Brenda Saavedra. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var image:SLImageView!
    
    var productViewModel:ProductViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateScreen()
    }
    
    func updateScreen(){
        self.productLabel.text = self.productViewModel?.name
        self.priceLabel.text = self.productViewModel?.price
        self.colorLabel.text = self.productViewModel?.color
        self.image.sd_setImage(with: self.productViewModel?.product.images[1].path, placeholderImage: UIImage(named:"nike"))
        
    }
    

}
