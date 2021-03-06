//
//  LoginViewController.swift
//  Project_iOS
//
//  Created by Shivanshu Verma on 2022-03-11.
//

import UIKit



class LoginViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var userEmail: UITextField!
    
    @IBOutlet var userPass: UITextField!
    var email : String = "" //Jashan Goyal
    let mainDelegate = UIApplication.shared.delegate as! AppDelegate
    
   
    @IBAction func CheckTextFields(_ sender: Any)
    {
        let userEmailAdd = userEmail.text
        let user_Pass = userPass.text
        
        email = userEmail.text ?? "its nil" //Jashan Goyal
        mainDelegate.selectedEmail = email //Jashan Goyal

        print(mainDelegate.selectedEmail) //Jashan Goyal
        if(((userEmailAdd?.isEmpty) == true) || ((user_Pass?.isEmpty) == true))
        {
            displayMyAlerMessage(userMessage: "All Fields Are Required")
        }
        
    }
    
    @IBAction func verifyuserLogin()
    {

        var result = mainDelegate.VerifyLoginFromDatase(uEmail: userEmail.text!, uPass: userPass.text!)



        if(result == true)
        {
            mainDelegate.selectedEmail = userEmail.text!
            performSegue(withIdentifier: "ViewController", sender: self)
         
        }
    }
    
    
    func displayMyAlerMessage(userMessage : String)
    {
        var myAlert = UIAlertController(title: "App Alert", message: userMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        myAlert.addAction(okAction)
        present(myAlert, animated: true)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
