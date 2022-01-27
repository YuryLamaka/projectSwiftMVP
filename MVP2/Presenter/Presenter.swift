//
//  Presenter.swift
//  MVP2
//
//  Created by Yury Lamaka on 25.01.22.
//

import Foundation

class Presenter {
    weak private var viewInputDelegate: ViewInputDelegate?
    var testsData = CryptoData.testData
    
    //в презентер передаем экземпляр вью
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate?) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData() {
        self.viewInputDelegate?.setupData(testData: self.testsData)
    }
    
    private func random() {
        let randomCount = Int.random(in: 0 ..< testsData.count)
        self.viewInputDelegate?.displayData(index: randomCount)
    }
}

//сюда vod

extension Presenter: ViewOutputDelegate {
    func randomData() {
        random()
    }
    
    func getData() {
        self.loadTestData()
        self.viewInputDelegate?.setupInitialState()
    }
    
    func saveData() {
         
    }
    
   
    
}
