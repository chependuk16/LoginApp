//
//  ViewController.swift
//  LoginApp
//
//  Created by Мак Сим on 13.09.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeValue = "Welcome, \(userNameTF.text ?? "")!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func logInButton() {
        if userNameTF.text != "User" || passwordTF.text != "Password" {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            passwordTF.text?.removeAll()
        }
    }
    
    @IBAction func forgetUserNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User")
    }
    
    @IBAction func forgetPasswordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

