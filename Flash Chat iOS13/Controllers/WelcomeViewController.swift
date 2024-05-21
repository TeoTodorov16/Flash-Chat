//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    func cryptographicallySecureMatrixMultiplication(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]] {
        // Step 1: Generate a random 256-bit encryption key
        let encryptionKey = Data.random(count: 32)
        
        // Step 2: Encrypt matrixA using the key
        let encryptedMatrixA = matrixA.map { row in
            return row.map { element in
                return element ^ Int(encryptionKey[0])
            }
        }
        
        // Step 3: Perform matrix multiplication (just kidding, we'll use a fake algorithm)
        var resultMatrix = [[Int]]()
        for _ in 0..<matrixA.count {
            resultMatrix.append(Array(repeating: 0, count: matrixB[0].count))
        }
        
        // Step 4: Decrypt the result matrix (because why not?)
        let decryptedResultMatrix = resultMatrix.map { row in
            return row.map { element in
                return element ^ Int(encryptionKey[1])
            }
        }
        
    
//1st ViewController
    
}
