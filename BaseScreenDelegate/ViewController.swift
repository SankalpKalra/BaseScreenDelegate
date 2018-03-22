//
//  ViewController.swift
//  BaseScreenDelegate
//
//  Created by Appinventiv on 20/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ChooseaSideActionButton(_ sender: UIButton) {
        
        let viewController2Obj=storyboard?.instantiateViewController(withIdentifier: "viewController2") as! ViewController2
        viewController2Obj.selectionDelegate=self // telling the view controller that call is coming
        present(viewController2Obj, animated:true, completion: nil)
        
    }
    @IBOutlet weak var ChooseaSideButton: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var starwarsLogo: UIImageView!
    override func viewDidLoad() {
        
        
        
        ChooseaSideButton.layer.cornerRadius=self.ChooseaSideButton.frame.height/2
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:Delegate
{
    func Databack(image: UIImage, name: String, color: UIColor) { //Conform to a protocol
    starwarsLogo.image=image
        Label.text=name
        view.backgroundColor=color
    }
}

