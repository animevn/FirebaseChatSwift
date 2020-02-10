import UIKit

class WelcomeController: UIViewController {
    
    @IBOutlet weak var lbAppName: UILabel!
    
    private func animateAppName(){
        var index:Double = 0
        Base.appName.forEach{character in
            Timer.scheduledTimer(withTimeInterval: 0.1 * index, repeats: false, block: {_ in
                self.lbAppName.text?.append(character)
            })
            index += 1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view \(type(of: self)) did load")
        animateAppName()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("The view \(type(of: self)) will appear")
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("The view \(type(of: self)) did appear")
    }
       
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("The view \(type(of: self)) will disappear")
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("The view \(type(of: self)) did appear")
    }


}

