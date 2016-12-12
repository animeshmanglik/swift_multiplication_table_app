//
//  ViewController.swift
//  multiplicationTable
//
//  Created by Animesh Manglik on 12/9/16.
//  Copyright © 2016 Animesh Manglik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cellDefault")
        
        let multiple = (indexPath.row + 1) * Int(sliderValue.value)
        
        let outputText = "\(indexPath.row + 1) * \(Int(sliderValue.value)) = \(multiple)"
        
        cell.textLabel?.text = outputText
        
        return cell
    }

    
    @IBOutlet weak var sliderValue: UISlider!

    @IBAction func sliderPressed(_ sender: AnyObject) {
            multiplicationTable.reloadData()
    }

    @IBOutlet weak var multiplicationTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

