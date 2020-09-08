//
//  ViewController.swift
//  Contacts
//
//  Created by Akhil Jain on 03/09/20.
//  Copyright © 2020 Akhil Jain. All rights reserved.
//

import UIKit

class ContactViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var contacts = [
        Contact(name: "Chandler Bing", phone: "480-782-2000", work: "480-782-3510", email: "Chandler.Bing@gmail.com", birthday: "19 August 1969", image: UIImage(named: "Chandler.jpg")!),
        Contact(name: "Monica Geller", phone: "603-432-6425", work: "603-430-3016", email: "Monica.Geller@gmail.com", birthday: "15 June 1964", image: UIImage(named: "Monica.jpeg")!),
        Contact(name: "Ross Geller", phone: "603-430-2456", work: "603-439-0912", email: "Ross.Geller@gmail.com", birthday: "2 November 1966", image: UIImage(named: "Ross.jpg")!),
        Contact(name: "Rachel Green", phone: "718-886-5540", work: "796-638-5156", email: "Rachel.Green@gmail.com", birthday: "11 February 1969",image: UIImage(named: "Rachel.jpg")!),
        Contact(name: "Joey Tribianni", phone: "149-591-4483", work: "123-161-7885", email: "Joey.Tribianni@gmail.com", birthday: "25 July 1967",image: UIImage(named: "Joey.jpeg")!),
        Contact(name: "Phoebe Buffay", phone: "297-527-0883", work: "293-678-0994", email: "Phoebe.Buffay@gmail.com", birthday: "30 July 1963", image: UIImage(named: "Phoebe.jpg")!)
    ]
    
    var contactName : String = ""
    var contactPhone : String = ""
    var contactWork : String = ""
    var contactEmail : String = ""
    var contactBirthday : String = ""
    var contactImage : UIImage = UIImage(named: "default.png")!
    //"Chandler Bing","Monica Geller","Ross Geller","Rachel Green","Joey Tribianni","Phoebe Buffay"
    //MARK - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].name
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        contactName = contacts[indexPath.row].name
        contactPhone = contacts[indexPath.row].phone
        contactWork = contacts[indexPath.row].work
        contactEmail = contacts[indexPath.row].email
        contactBirthday = contacts[indexPath.row].birthday
        contactImage = contacts[indexPath.row].image

        performSegue(withIdentifier: "ContactInfoSegue", sender: cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ContactInfo
        destinationVC.contactName = contactName
        destinationVC.contactPhone = contactPhone
        destinationVC.contactWork = contactWork
        destinationVC.contactEmail = contactEmail
        destinationVC.contactBirthday = contactBirthday
        destinationVC.contactImage = contactImage
    }
    
    //MARK - Add New Contacts

    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add New Contact", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Contact", style: .default) { (action) in
            // Add what will happen when Add is clicked
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    

}

