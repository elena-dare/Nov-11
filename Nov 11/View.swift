//
//  View.swift
//  Nov 11
//
//  Created by Elena Da Re on 11/16/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class View: UIView {
	
	let face: Face;
	
	required init(coder aDecoder: NSCoder) {
		//all the properties, methods or objects of the Face class must be declared before super.init
		let f: CGRect = CGRectMake (0, 0, 300, 300);
		face = Face(frame: f);
		
		super.init(coder: aDecoder) //init for the superclass
		backgroundColor = UIColor.whiteColor();
		addSubview(face);
	}
	
	override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
		assert (touches.count > 0);
		let touch: UITouch = touches.anyObject() as UITouch;
		let point: CGPoint = touch.locationInView(self);
		
		UIView.animateWithDuration(1.0,
			delay: 0.0,
			options:  UIViewAnimationOptions.CurveEaseInOut,
			animations: {
				//This block describes what the animation should do.
				self.face.center = point;	//Move the face to a new location.
				self.face.transform = CGAffineTransformMakeScale(2, 2)
				self.face.alpha = 0.0;
				
			},
			completion:
			{
			(value: Bool) in
			self.face.alpha = 1.0;
			}
		);
	}
	
	override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
	}
	
	override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
	}
	
	override func touchesCancelled(touches: NSSet!, withEvent event: UIEvent!) {
	}

	

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
