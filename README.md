![Alt text](https://raw.githubusercontent.com/harshilkotecha/RSAAlgorithm/master/screen/Simulator%20Screen%20Shot%2023-Aug-2017%2C%205.01.41%20PM.png "screenshot")



How to Use :

Add  ```RSAUtils.swift``` file in your project .


Encryption :

```swift
let encryptedData = try! RSAUtils.encryptWithRSAPublicKey(str: txtPlainText.text ?? "nil", pubkeyBase64: txtPublicKey.text) // encryption using Public key 
let encString = encryptedData?.base64EncodedString() // Data to string
self.txtCipherText.text = encString // Print chiper text 
```

Decryption :

```swift
let orgData = try! RSAUtils.decryptWithRSAPrivateKey(encryptedData:  Data(base64Encoded: txtCipherText.text)!, privkeyBase64: txtPrivateKey.text) // Decryption

txtDecryptionPlainText.text = String(data: orgData!, encoding: String.Encoding.utf8) as String! // String to data and print 
```
