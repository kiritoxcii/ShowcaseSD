//
//  ViewController.swift
//  ShowcaseSD
//
//  Created by Sundevs Puerto Salgar on 5/12/16.
//  Copyright © 2016 Sundevs Puerto Salgar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btnButton: UIButton!
    @IBOutlet weak var imagetest: UIImageView!
    
    
    var imgViewLocateYourself = UIImageView()
    var imgLocateYourself = UIImage()
    
    var imgViewWhoAreYou = UIImageView()
    var imgWhoAreYou = UIImage()
    
    var imgViewStepOne = UIImageView()
    var imgStepOne = UIImage()
    
    var skipV = UIImageView()
    var skip = UIImage()
//    var imgViewBack = UIImageView()
//    var imgArrow = UIImageView()
    
    var showcaseView:ShowcaseView?
    var showcaseView1:ShowcaseView?
    var showcaseView2:ShowcaseView?

    
    
    var showcaseOverlay:ShowcaseOverlay?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imgViewLocateYourself  = UIImageView(frame: CGRectMake(0,0,0,0))
        self.imgLocateYourself = UIImage(named: "arrow_locate_yourself")!
        self.imgViewLocateYourself.image = self.imgLocateYourself
        self.imgViewLocateYourself.frame = CGRectMake(0, 0, imgLocateYourself.size.width, imgLocateYourself.size.height)
        self.imgViewLocateYourself.contentMode = UIViewContentMode.ScaleAspectFit
        self.imgViewLocateYourself.translatesAutoresizingMaskIntoConstraints = true
        
        self.imgViewWhoAreYou  = UIImageView(frame: CGRectMake(0,0,0,0))
        self.imgWhoAreYou = UIImage(named: "arrow_who_are_you")!
        self.imgViewWhoAreYou.image = self.imgWhoAreYou
        self.imgViewWhoAreYou.frame = CGRectMake(0, 0, imgWhoAreYou.size.width, imgWhoAreYou.size.height)
        self.imgViewWhoAreYou.contentMode = UIViewContentMode.ScaleAspectFit
        self.imgViewWhoAreYou.translatesAutoresizingMaskIntoConstraints = true
        
        self.imgViewStepOne  = UIImageView(frame: CGRectMake(0,0,0,0))
        self.imgStepOne = UIImage(named: "step_one")!
        self.imgViewStepOne.image = self.imgStepOne
        self.imgViewStepOne.frame = CGRectMake(0, 0, imgStepOne.size.width + 2, imgStepOne.size.height + 4)
        self.imgViewStepOne.contentMode = UIViewContentMode.ScaleAspectFit
        self.imgViewStepOne.translatesAutoresizingMaskIntoConstraints = true
        
//        self.view.addSubview(self.imgViewLocateYourself)
//
//        self.imgViewBack.frame = CGRectMake(100, 100, 50, 50)
//        
//        self.imgArrow = UIImageView(frame:CGRectMake(75, 150, 50, 50))
//        self.imgArrow.image = UIImage(named: "arrow_who_are_you")
//        self.imgArrow.contentMode = UIViewContentMode.ScaleAspectFit
//        self.view.addSubview(imgArrow)
        
        // self.showcaseOverlay.showInView(self.view, animated: true)
        
        showcaseView = ShowcaseView(containerView: self.view)
        showcaseView1 = ShowcaseView(containerView: self.view)
        showcaseView2 = ShowcaseView(containerView: self.view)
//            showcaseView?.setFocusPositionInView(btn4)
//            self.showcaseOverlay.showInView(self.view, animated: true)
//            self.showcaseOverlay.showcaseView = showcaseView
        
        self.showcaseOverlay = ShowcaseOverlay(showcaseViewArray: [showcaseView!, showcaseView1!, showcaseView2!])
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
//        self.imagetest.shake()
        
        showcaseView?.setFocusPositionInView(self.imagetest)
        showcaseView1?.setFocusPositionInView(self.btn3)
        showcaseView2?.setFocusPositionInView(self.btn2)

        
        self.view.addSubview(showcaseView!)
        self.view.addSubview(showcaseView1!)
        self.view.addSubview(showcaseView2!)

        showcaseView?.addArrowToFocusInPosition(self.imgViewLocateYourself, arrowPosition: REGION.TOP, offsetX: nil, offsetY: nil)
        showcaseView1?.addArrowToFocusInPosition(self.imgViewStepOne, arrowPosition: REGION.TOP, offsetX: -20, offsetY: 20)
        showcaseView2?.addArrowToFocusInPosition(self.imgViewWhoAreYou, arrowPosition: REGION.BOTTOM, offsetX: nil, offsetY: nil)
        
        self.showcaseOverlay?.showInView(self.view, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func createOverlay(frame : CGRect)
//    {
//        let overlayView = UIView(frame: frame)
//        overlayView.alpha = 0.6
//        overlayView.backgroundColor = UIColor.blackColor()
//        self.view.addSubview(overlayView)
//        
//        let maskLayer = CAShapeLayer()
//        
//        // Create a path with the rectangle in it.
//        var path = CGPathCreateMutable()
//        
//        let radius : CGFloat = 50.0
//        let xOffset : CGFloat = 10
//        let yOffset : CGFloat = 10
//        
//        CGPathAddArc(path, nil, overlayView.frame.width/2 - radius/2 - xOffset, overlayView.frame.height/2 - yOffset, radius, 0.0, 2 * 3.14, false)
//        CGPathAddRect(path, nil, CGRectMake(0, 0, overlayView.frame.width, overlayView.frame.height))
//        
//        
//        maskLayer.backgroundColor = UIColor.blackColor().CGColor
//        
//        maskLayer.path = path;
//        maskLayer.fillRule = kCAFillRuleEvenOdd
//        
//        // Release the path since it's not covered by ARC.
//        overlayView.layer.mask = maskLayer
//        overlayView.clipsToBounds = true
//    }
    
    }
