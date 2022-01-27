//
//  ViewController.swift
//  MVP2
//
//  Created by Yury Lamaka on 25.01.22.
//

import UIKit

class CryptoCurrencyViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    private var testData: [CryptoData] = []
    
    private var count = 0
    
     private var viewOutputDelegate: ViewOutputDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutputDelegate?.getData()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        self.viewOutputDelegate?.randomData()
    }
    
 
    
}

extension CryptoCurrencyViewController: ViewInputDelegate {
    func setupInitialState() {
         displayData(index: count)
    }
    
    func setupData(testData: ([CryptoData])) {
        self.testData = testData
    }
    
    func displayData(index: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[index].name
            tickerLabel.text = testData[index].ticker
            valueLabel.text = String(testData[index].value)
        } else {
            print("Sorry((")
        }
    }
    
    
}


