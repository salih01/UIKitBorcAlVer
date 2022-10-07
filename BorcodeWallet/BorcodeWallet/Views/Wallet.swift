//
//  Wallet.swift
//  BorcodeWallet
//
//  Created by ALFA on 7.09.2022.
//

import UIKit

class Wallet: UIViewController {

 
    @IBOutlet weak var walletBilgiLabel: UILabel!
    @IBOutlet weak var girisTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func ekleButton(_ sender: Any) {
        
        if girisTextField.text != ""{
            var eklenecek = Int(girisTextField.text!)
            var wallet = Int(walletBilgiLabel.text!)
        
            var result = wallet! + eklenecek!
            
            walletBilgiLabel.text = String(result)
        }
        else {
            let alert = UIAlertController(title: "Hata", message: "Boş bırakma !", preferredStyle:.alert)
            self.present(alert, animated: true, completion: nil)
            

        }
        
       
    }
    

    @IBAction func cikarButton(_ sender: Any) {
        if girisTextField.text != "" {
            var cikarilacak = Int(girisTextField.text!)
            var wallet = Int(walletBilgiLabel.text!)
        
            var result = wallet! - cikarilacak!
            
            walletBilgiLabel.text = String(result)
        }
        else {
            let alert = UIAlertController(title: "Hata", message: "Boş bırakma !", preferredStyle:.actionSheet)
            self.present(alert, animated: true, completion: nil)
            

        }
      
    }
}
