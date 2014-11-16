//
//  Face.swift
//  Nov 11
//
//  Created by Elena Da Re on 11/16/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class Face: UIView {

	override init(frame: CGRect) {
		super.init(frame: frame);
		self.backgroundColor = UIColor.clearColor();
	}
	
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
	}

	override func drawRect(rect: CGRect)
	{
		/*
		Create the outside face.
		Place the upper left corner of the square at the upper left corner of
		the View.  bounds.origin.x and bounds.origin.y are the coordinates of
		the upper left corner of the View.
		*/
		var radius: CGFloat = 1/9 * bounds.size.width;	//in pixels
		
		//origin = CGPointMake (radius, radius);
		
		var r: CGRect = CGRectMake(-radius, -radius, 2 * radius, 2 * radius);
		
		var c: CGContextRef = UIGraphicsGetCurrentContext();
		CGContextBeginPath(c);	//unnecessary here: the path is already empty.
		CGContextTranslateCTM(c, bounds.size.width / 2, bounds.size.height / 2);
		CGContextAddEllipseInRect(c, r);
		CGContextSetRGBFillColor(c, 0.0, 0.0, 1.0, 1.0);	//blue, opaque
		CGContextFillPath(c);
		
		
		//create the left eye
		
		var eyeradius: CGFloat = 0.2 * radius;
		
		var leye: CGRect = CGRectMake(-2/3 * radius, -2/3 * radius, 2 * eyeradius, 2 * eyeradius);
		
		CGContextAddEllipseInRect(c, leye);
		CGContextSetRGBFillColor(c, 0.0, 1.0, 0.0, 1.0);	//green, opaque
		CGContextFillPath(c);
		
		//create the right eye
	
		var reye: CGRect = CGRectMake(1/3 * radius, -2/3 * radius, 2 * eyeradius, 2 * eyeradius);
		
		CGContextAddEllipseInRect(c, reye);
		CGContextSetRGBFillColor(c, 0.0, 1.0, 0.0, 1.0);	//green, opaque
		CGContextFillPath(c);
		
		//create the sad mouth
		
		var h: CGFloat = 1/4 * radius;
		var l: CGFloat = 3/2 * radius;
		
		var mouth: CGRect = CGRectMake (-3/4*radius, 1/8 * radius, l, h)
		
		CGContextAddRect(c, mouth);
		CGContextSetRGBFillColor(c, 0.0, 1.0, 0.0, 1.0);	//green, opaque
		CGContextFillPath(c);
		
		
	}


}
