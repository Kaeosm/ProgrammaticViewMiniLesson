//
//  ViewController.swift
//  ProgrammaticViews
//
//  Created by Jake Herrmann on 2/19/16.
//  Copyright © 2016 Jake Herrmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonOne = UIButton()
    var titleLabel = UILabel()
    var textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    view.backgroundColor = UIColor.lightGrayColor()

    createButton()
    createTiitleLabel()
    createTextField()
    addContraints()
        
    }
    
    func createButton(){
        
        buttonOne.setTitle("Tap here", forState: UIControlState.Normal)
        buttonOne.backgroundColor = UIColor.blueColor()//(patternImage: UIImage(named: "BlueDevButton")!)
        buttonOne.layer.cornerRadius = 8
        buttonOne.layer.borderColor = UIColor.blueColor().CGColor
        buttonOne.layer.borderWidth = 2
        
        buttonOne.addTarget(self, action: "buttonClicked", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(buttonOne)
    }
    
    func buttonClicked(){
        
        titleLabel.text = textField.text
        
    }
    
    func createTiitleLabel(){
        titleLabel.text = "Hello World"
        titleLabel.textAlignment = .Center
        
        self.view.addSubview(titleLabel)
        
    }
    
    func createTextField(){
        
        textField.placeholder = "Enter Name:"
        textField.textAlignment = .Center
        
        self.view.addSubview(textField)
        
        
        
        
    }
    
    func addContraints(){
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false

        //Button
        let horizontalConstraint = NSLayoutConstraint(item: buttonOne, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        
        view.addConstraint(horizontalConstraint)
        
        let verticalContsraint = NSLayoutConstraint(item: buttonOne, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        
        view.addConstraint(verticalContsraint)
        
        let widthConstraint = NSLayoutConstraint(item: buttonOne, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 0.75, constant: 0)
        view.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: buttonOne, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        
        view.addConstraint(heightConstraint)

        //Label
        
        let verticalLabelContsraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: buttonOne, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: -100)
        
        view.addConstraint(verticalLabelContsraint)

        
        let widthLabelConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 0.75, constant: 0)
        
        view.addConstraint(widthLabelConstraint)
        
        let heightLabelConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        
        view.addConstraint(heightLabelConstraint)
        
        let horizontalLabelConstraint = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: buttonOne, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0.0)
        
        view.addConstraint(horizontalLabelConstraint)
        
        //TextField
        
        let verticalTextContsraint = NSLayoutConstraint(item: textField, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: buttonOne, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 100)
        
        view.addConstraint(verticalTextContsraint)
        
        let widthTextConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 0.75, constant: 0)
        
        view.addConstraint(widthTextConstraint)
        
        let heightTextConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        
        view.addConstraint(heightTextConstraint)
        
        let horizontalTextConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: buttonOne, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0.0)
        
        view.addConstraint(horizontalTextConstraint)
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

