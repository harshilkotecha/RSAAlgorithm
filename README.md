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


<h3>How to generate your own RSA private key and public key pair ?</h3>
Generate a 1028 bit RSA Key
This is a command that is 
```
openssl rsa -in private.pem -outform PEM -pubout -out public.pem

openssl rsa -in private.pem -out private_unencrypted.pem -outform PEM
```
More information 
https://rietta.com/blog/2012/01/27/openssl-generating-rsa-key-from-command/

