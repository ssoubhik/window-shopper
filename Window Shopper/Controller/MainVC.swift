//
//  MainVC.swift
//  Window Shopper
//
//  Created by Soubhik Sarkhel on 28/11/23.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var clearCalculatorBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = UIColor.orange
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        clearCalculatorBtn.isHidden = true
    }

    
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                let result = Wage.getHours(forWage: wage, ofPrice: price)
                
                resultLbl.text = String(result)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                clearCalculatorBtn.isHidden = false
                
                self.wageTxt.resignFirstResponder()
                self.priceTxt.resignFirstResponder()
            }
        }
    }
    
    
    @IBAction func onTappedClearCalculator(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        clearCalculatorBtn.isHidden = true
    }
}
