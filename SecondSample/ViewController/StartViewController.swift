//
//  StartViewController.swift
//  SecondSample
//
//  Created by wk.min on 07/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import UIKit
import RxSwift

class StartViewController: UIViewController {

    @IBOutlet weak var version: UILabel!
    
    @IBAction func showTableView(_ sender: Any) {
        print("showTableView");
    }
    
    var viewModel = VersionViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let _ = self.viewModel.loadVersion().subscribe(
            onNext: { any in
        }, onError: { error in
                print("View - onError:\(error)")
        }, onCompleted: {
                self.version.text = self.viewModel.version
        })
        
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
