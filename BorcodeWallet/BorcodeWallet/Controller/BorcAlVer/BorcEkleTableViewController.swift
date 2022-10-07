//
//  BorcEkleTableViewController.swift
//  BorcodeWallet
//
//  Created by ALFA on 19.09.2022.
//

import UIKit

class BorcEkleTableViewController: UITableViewController {

    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var adSoyadTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var miktarTextField: UITextField!
    var person:Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "saveUnwind" else { return }
        let emoji = emojiTextField.text!
        let name = adSoyadTextField.text!
        let description = descriptionTextField.text!
        let miktar = miktarTextField.text!
        
        if emojiTextField.text != "" && adSoyadTextField.text != "" &&
        descriptionTextField.text != "" && miktarTextField.text != ""
        {
            return person = Person(adSoyad: name, description: description, emoji: emoji, miktar: miktar)
        }
        else {
            let alert = UIAlertController(title: "Hata", message: "Boş bırakma !", preferredStyle:.alert)
            self.present(alert, animated: true, completion: nil)
            

        }
        
        
    }


}
