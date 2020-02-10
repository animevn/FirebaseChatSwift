import UIKit
import Firebase

class RegisterController: UIViewController {
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBAction func onButtonRegisterPressed(_ sender: UIButton) {
        guard let email = tfEmail.text, let password = tfPassword.text,
            !email.isEmpty, !password.isEmpty else {return}
        Auth.auth().createUser(withEmail: email, password: password){[weak self] result, error in
            guard let strongSelf = self else {return}
            if let error = error{
                print(error.localizedDescription)
            }else{
                strongSelf.performSegue(withIdentifier: Base.segueRegisterChat, sender: strongSelf)
            }
        }
    }
    
}
