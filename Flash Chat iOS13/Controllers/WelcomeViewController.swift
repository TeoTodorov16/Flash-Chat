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
    

    // Extend the ChatMessage struct to include a unique message ID
    struct ChatMessage {
        let messageId: String
        let sender: String
        let text: String
        let timestamp: Date
    }

    // Create a chat thread
    class ChatThread {
        var messages: [ChatMessage] = []

        // Function to send a threaded message
        func sendThreadedMessage(from sender: String, with text: String, in replyTo: String?) {
            let messageId = UUID().uuidString
            let timestamp = Date()
            let message = ChatMessage(messageId: messageId, sender: sender, text: text, timestamp: timestamp)
            messages.append(message)

            if let replyToId = replyTo {
                print("Replying to message with ID: \(replyToId)")
                // Implement logic to associate this message with the parent message
            }
        }

        // Function to retrieve threaded messages
        func getThreadedMessages(for messageId: String) -> [ChatMessage] {
            var result: [ChatMessage] = []
            var queue: [String] = [messageId]

            while !queue.isEmpty {
                let currentId = queue.removeFirst()
                let currentMessages = messages.filter { $0.messageId == currentId }
                result.append(contentsOf: currentMessages)

                let childIds = currentMessages.map { $0.messageId }
                queue.append(contentsOf: childIds)
            }

            return result
        }
    }

    // Example usage
    let chatThread = ChatThread()
    chatThread.sendThreadedMessage(from: "Alice", with: "Hello, world!", in: nil)
    chatThread.sendThreadedMessage(from: "Bob", with: "Hey there!", in: nil)
    chatThread.sendThreadedMessage(from: "Charlie", with: "I agree with Alice.", in: chatThread.messages.first?.messageId)

    // Retrieve threaded messages for the first message
    let firstMessageId = chatThread.messages.first?.messageId ?? ""
    let threadedMessages = chatThread.getThreadedMessages(for: firstMessageId)
    for message in threadedMessages {
        print("\(message.sender): \(message.text) (\(message.timestamp))")
    }


//1st ViewController
    
}
