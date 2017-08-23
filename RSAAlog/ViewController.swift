//
//  ViewController.swift
//  RSAAlog
//
//  Created by Harshil Kotecha on 22/08/17.
//  Copyright © 2017 Harshil Kotecha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtPlainText: UITextField!
    
    @IBOutlet var txtPrivateKey: UITextView!
    @IBOutlet var txtPublicKey: UITextView!
    
    @IBOutlet var txtCipherText: UITextView!
    
    @IBOutlet var txtDecryptionPlainText: UITextView!
    
    let PUBLIC_KEY = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKkEvmh69XsykSgEGGE354aDEJwuQAAfG9obSp88PrCC+O3kxYGqSbDae3+ufCMSJRBGqzifOyHljmZf7OdTL1kCAwEAAQ=="
    let PRIVATE_KEY = "MIIBVAIBADANBgkqhkiG9w0BAQEFAASCAT4wggE6AgEAAkEAqQS+aHr1ezKRKAQYYTfnhoMQnC5AAB8b2htKnzw+sIL47eTFgapJsNp7f658IxIlEEarOJ87IeWOZl/s51MvWQIDAQABAkBW8fLFKmN3YZbcP+cOs8RtJKT5wqz3owkf1KQ5b7NL9uyVvgRF/NMewm09qS3UBSkMmPOC+nwD83UEhEtj2ECBAiEA6PxlisxxG+aMNKLdIauovkqCfcH4Ppfxg502pPq/VJECIQC5tseG6pULWWit76tWKM+3Q/xSu6Os/lnB50o46SPySQIgdAEPsf8/JiwxjRe2UMh+uViyBlmo98mBqA2EIrryvvECIQCZ/kTuy7+w/H9/kzfIpuiud3JYC/2JqhM1ZRs3m6LR+QIge4zNJ81ddLqlna9VJRvNbz5WOw76JxY1+TLT8j88HzA="
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtPublicKey.text = PUBLIC_KEY
        txtPrivateKey.text = PRIVATE_KEY
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func onClickEncryption(_ sender: Any) {
        let encryptedData = try! RSAUtils.encryptWithRSAPublicKey(str: txtPlainText.text ?? "nil", pubkeyBase64: txtPublicKey.text)
        
        let encString = encryptedData?.base64EncodedString()
        
        print(encString ?? "")
        self.txtCipherText.text = encString
        
        
       
    }
    @IBAction func onClickDecryption(_ sender: Any) {
        
        let orgData = try! RSAUtils.decryptWithRSAPrivateKey(encryptedData:  Data(base64Encoded: txtCipherText.text)!, privkeyBase64: txtPrivateKey.text)
        
        txtDecryptionPlainText.text = String(data: orgData!, encoding: String.Encoding.utf8) as String!
    }
    
}

