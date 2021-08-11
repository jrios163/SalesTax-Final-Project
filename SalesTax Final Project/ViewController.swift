//
//  ViewController.swift
//  SalesTax Final Project
//
//  Created by JOSE RIOS on 8/10/21.
//

import UIKit

class ViewController: UIViewController {
    //
    //Image result for IBAction func meaning
    //@IBAction is similar to @IBOutlet , but goes the other way: @IBOutlet is a way of connecting code to storyboard layouts, and @IBAction is a way of making storyboard layouts trigger code. This method takes one parameter, called sender . It's of type UIButton because we know that's what will be calling the method.
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "\(totalPrice)"
    }
    
}

