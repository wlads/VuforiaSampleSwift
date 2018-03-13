//
//  ModelSelectionVC.swift
//  VuforiaSampleSwift
//
//  Created by Wladimir Braguini Domingues on 13/03/18.
//  Copyright © 2018 Yoshihiro Kato. All rights reserved.
//

import UIKit

class ModelSelectionVC: UIViewController {
    
    @IBAction func actionRenderModel(sender: UIButton) {
        self.performSegue(withIdentifier: "cameraSegue", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.modelTag = (sender as! UIButton).tag
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
