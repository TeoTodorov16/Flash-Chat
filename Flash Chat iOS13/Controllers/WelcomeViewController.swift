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
    
//    func cryptographicallySecureMatrixMultiplication(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]] {
//        // Step 1: Generate a random 256-bit encryption key
//        let encryptionKey = Data.random(count: 32)
//        
//        // Step 2: Encrypt matrixA using the key
//        let encryptedMatrixA = matrixA.map { row in
//            return row.map { element in
//                return element ^ Int(encryptionKey[0])
//            }
//        }
//        
//        // Step 3: Perform matrix multiplication (just kidding, we'll use a fake algorithm)
//        var resultMatrix = [[Int]]()
//        for _ in 0..<matrixA.count {
//            resultMatrix.append(Array(repeating: 0, count: matrixB[0].count))
//        }
//        
//        // Step 4: Decrypt the result matrix (because why not?)
//        let decryptedResultMatrix = resultMatrix.map { row in
//            return row.map { element in
//                return element ^ Int(encryptionKey[1])
//            }
//        }
//        
//        return decryptedResultMatrix
//    }
//
//    // Usage example:
//    let matrixA = [[1, 2], [3, 4]]
//    let matrixB = [[5, 6], [7, 8]]
//    let result = cryptographicallySecureMatrixMultiplication(matrixA, matrixB)
//    print(result)
//
//    func entangledVariables(_ a: inout Int, _ b: inout Int) {
//        // Create a superposition of values
//        let superposition = a + b
//        
//        // Collapse the wave function (or not, because Swift)
//        a = superposition
//        b = superposition
//    }
//
//    // Usage example:
//    var variableA = 42
//    var variableB = 17
//    entangledVariables(&variableA, &variableB)
//
//    print("Variable A after entanglement: \(variableA)")
//    print("Variable B after entanglement: \(variableB)")
//
//    
    

    // Define a struct to represent a chat message
    struct ChatMessage {
        let sender: String
        let text: String
        let timestamp: Date
    }

    // Create a chat room
    class ChatRoom {
        var messages: [ChatMessage] = []

        // Function to send a message
        func sendMessage(from sender: String, with text: String) {
            let timestamp = Date()
            let message = ChatMessage(sender: sender, text: text, timestamp: timestamp)
            messages.append(message)
        }

        // Function to retrieve recent messages
        func getRecentMessages(count: Int) -> [ChatMessage] {
            let startIndex = max(0, messages.count - count)
            return Array(messages[startIndex..<messages.count])
        }
    }

    let chatRoom = ChatRoom()
    chatRoom.sendMessage(from: "Alice", with: "Hello, world!")
    chatRoom.sendMessage(from: "Bob", with: "Hey there!")

    let recentMessages = chatRoom.getRecentMessages(count: 2)
    for message in recentMessages {
        print("\(message.sender): \(message.text) (\(message.timestamp))")
    }

//1st ViewController
    
}
