//
//  ViewController.swift
//  Frame&Bounds
//
//  Created by JeremyXue on 2018/7/13.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let grayView = createView(width: 300, height: 300, center: view.center, color: #colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1))
        let redView = createView(width: 200, height: 200, center: CGPoint(x: grayView.bounds.maxX / 2, y: grayView.bounds.maxY / 2) , color: #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1))
        let blueView = createView(width: 100, height: 100, center: CGPoint(x: 50, y: 50), color: #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))
        let whiteView = createView(width: 50, height: 50, center: CGPoint(x: blueView.bounds.maxX / 2, y: blueView.bounds.maxY / 2), color: UIColor.white)
        
        view.addSubview(grayView)
        grayView.addSubview(redView)
        redView.addSubview(blueView)
        blueView.addSubview(whiteView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Create view
    
    func createView(width:CGFloat,height:CGFloat,center:CGPoint,color:UIColor) -> UIView {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.center = center
        view.backgroundColor = color
        
        return view
    }

}

