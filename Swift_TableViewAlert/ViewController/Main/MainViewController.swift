//
//  MainViewController.swift
//  Swift_TableViewAlert
//
//  Created by hidetomo on 2019/10/26.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBAction
    
    /// アラートボタン押下
    @IBAction private func tappedShowAlertButton(_ sender: UIButton) {
        showAlert()
    }
    
    /// テーブルビューアラートボタン押下
    @IBAction private func tappedShowTableViewAlertButton(_ sender: UIButton) {
    }
}

// MARK: - Private function

private extension MainViewController {
    
    /// アラートの表示
    private func showAlert() {
        
        let alert = UIAlertController(title: "Title",
                                      message: "Message",
                                      preferredStyle:  .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler:{ _ in
                                    print("OK")
        })
        
        alert.addAction(action)

        present(alert, animated: true, completion: nil)
    }
}
