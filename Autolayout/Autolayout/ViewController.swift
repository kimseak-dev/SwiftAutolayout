//
//  ViewController.swift
//  Autolayout
//
//  Created by Sauvik Dolui on 24/03/17.
//  Copyright © 2017 Sauvik Dolui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        drawMyCountryFlag()
    }

    
    func drawMyCountryFlag() {
        
        view.backgroundColor = .black
        
        let centerView = UIView.autolayoutView()
        view.addSubview(centerView)
        centerView._layoutInSuper(percentage: 90.0)
        
        
        
        let orangeView = UIView.autolayoutView()
        orangeView.backgroundColor = .orange
        centerView.addSubview(orangeView)
        
        let whiteView = UIView.autolayoutView()
        whiteView.backgroundColor = .white
        centerView.addSubview(whiteView)
        
        let greenView = UIView.autolayoutView()
        greenView.backgroundColor = .green
        centerView.addSubview(greenView)
        
        orangeView._setWidth(sidePadding: 0.0) // Width, X set
        orangeView._setHeight(height: 50.0) // Height Set
        orangeView._setTop(topPadding: 50) // Top Padding
        
        // Adding the white view
        whiteView._setSizeEqualTo(view: orangeView) // Size Fixed
        whiteView._setLeftAlignWith(view: orangeView) // X Set
        whiteView._setTopFromBottomEdgeOf(view: orangeView, offset: 3.0) // Y Set
        
        // Adding the green view
        greenView._setSizeEqualTo(view: orangeView) // Size Fixed
        greenView._setLeftAlignWith(view: orangeView) // X Set
        greenView._setTopFromBottomEdgeOf(view: whiteView, offset: 3.0) // Y Set
        
    }
    
}
