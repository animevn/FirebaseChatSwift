import UIKit
import Firebase

class LoginController:UIViewController{
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBAction func onButtonLoginPressed(_ sender: UIButton) {
        guard let email = tfEmail.text, let password = tfPassword.text,
            !email.isEmpty, !password.isEmpty else {return}
       
        Auth.auth().signIn(withEmail: email, password: password){[weak self] result, error in
            guard let strongSelf = self else {return}
            if let error = error{
                print(error.localizedDescription)
            }else{
                strongSelf.performSegue(withIdentifier: Base.segueLoginChat, sender: strongSelf)
            }
        }
        
    }
    
    
}
