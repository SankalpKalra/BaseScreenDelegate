//
//  ViewController2.swift
//  BaseScreenDelegate
//
//  Created by Appinventiv on 20/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

protocol Delegate {
    func Databack(image:UIImage, name:String, color:UIColor)//Declaration
}
class ViewController2: UIViewController {
    
    var selectionDelegate:Delegate!

    @IBAction func DarthvadorButtton(_ sender: UIButton) {
        selectionDelegate.Databack(image: UIImage(named:"DarthVador")!, name: "DarthVador", color: .red)//calling through delegate
        dismiss(animated: true, completion: nil)
    }
    @IBAction func AlienButton(_ sender: UIButton) {
        selectionDelegate.Databack(image: UIImage(named:"ALIEN")!, name: "ALIEN", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
