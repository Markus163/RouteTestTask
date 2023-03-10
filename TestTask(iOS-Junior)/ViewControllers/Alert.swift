//
//  Alert.swift
//  RouteTestTask(iOS-Junior)
//
//  Created by Марк Михайлов on 18.01.2023.
//

import UIKit

extension UIViewController {
    
    func alertAddAddress(title: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else { return }
            completionHandler(text)
        }
        
        alertController.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Cancel", style: .default)
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        present(alertController, animated: true)
    }
    
    func alertError(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(alertOk)
        present(alertController, animated: true)
    }
}
