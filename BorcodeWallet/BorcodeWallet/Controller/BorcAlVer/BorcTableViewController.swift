//
//  BorcTableViewController.swift
//  BorcodeWallet
//
//  Created by ALFA on 17.09.2022.
//

import UIKit

class BorcTableViewController: UITableViewController {

    var persons: [Person] = [
        Person(adSoyad: "Aslı", description: "Doğum günü dolandırıcılığı", emoji: "😍",miktar: "100₺"),
        Person(adSoyad: "Mert", description: "İngiltere ücreti", emoji: "😞",miktar: "2250₺")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }
    
   
    
    // MARK: - cellForRowAt
    /*
     *  tabble cell burada oluşturuluyor
     */
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // O an çizilmekte olan person nesnesinin indexPathine ulaş
        let person = persons[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell") as! PersonTableViewCell
        // Mark: Hücre oluştur . Burayı return et
        cell.update(with: person)

        return cell
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedPerson = persons.remove(at: sourceIndexPath.row)
        
        persons.insert(movedPerson, at: destinationIndexPath.row)
        
        tableView.reloadData()
        
        
    }
    //cell rowun boyunu belirttim
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    //MARK: - delete buttonunu getiriyor
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
    }
    
    
    // MARK: Actions
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        
        let tableViewEditingMode = tableView.isEditing
        
        tableView.setEditing(!tableViewEditingMode, animated: true)
        
    }
    
    // MARK: - unwind Segue
 
    
    @IBAction func unwindToFromBorcEkle(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
  
        guard unwindSegue.identifier == "saveUnwind",
              let sourceViewController = unwindSegue.source as? BorcEkleTableViewController,
              let newPerson = sourceViewController.person else {return}
        
        
        let newIndexPath = IndexPath(row: persons.count, section: 0)
        
       
        
        
          persons.append(newPerson)
          tableView.insertRows(at: [newIndexPath], with: .automatic)
        
            
        }
        
        
    }
    
    
   

