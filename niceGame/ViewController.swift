//
//  ViewController.swift
//  niceGame
//
//  Created by Isaias Cardoso on 20/10/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var niceView1: UIImageView!
    @IBOutlet weak var niceView2: UIImageView!
    @IBOutlet weak var niceView3: UIImageView!
    @IBOutlet weak var niceView4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let niceImage = [#imageLiteral(resourceName: "image18"), #imageLiteral(resourceName: "image14"), #imageLiteral(resourceName: "image8"), #imageLiteral(resourceName: "image9"), #imageLiteral(resourceName: "image4"), #imageLiteral(resourceName: "image11"), #imageLiteral(resourceName: "image13"), #imageLiteral(resourceName: "image6"), #imageLiteral(resourceName: "image20"), #imageLiteral(resourceName: "image21"), #imageLiteral(resourceName: "image7"), #imageLiteral(resourceName: "image5"), #imageLiteral(resourceName: "image12"), #imageLiteral(resourceName: "image1"), #imageLiteral(resourceName: "image17"), #imageLiteral(resourceName: "image10"), #imageLiteral(resourceName: "image16"), #imageLiteral(resourceName: "image2"), #imageLiteral(resourceName: "image3"), #imageLiteral(resourceName: "image19")]
        
        let randomIndex1 = Int.random(in: 0...19)
        let randomIndex3 = Int.random(in: 0...19)
        
        niceView1.image = niceImage[randomIndex1]
        niceView2.image = niceImage[randomIndex1]
        niceView3.image = niceImage[randomIndex3]
        niceView4.image = niceImage[randomIndex1]
        
        if checkImage(){
            showModal()
        }
    }
    
    func checkImage() -> Bool {
        guard let image1 = niceView1.image,
              let image2 = niceView2.image,
              let image3 = niceView3.image,
              let image4 = niceView4.image else{
            return false
        }
        
        return image1.isEqual(image2) && image1.isEqual(image3) && image1.isEqual(image4)
    }
    
    func showModal() {
        let alertController = UIAlertController(title: "Congratulations!", message: "You won!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Try again", style: .default) { _ in
            self.resetGame()
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

    
    func resetGame() {
        niceView1.image = nil
        niceView2.image = nil
        niceView3.image = nil
        niceView4.image = nil
    }
}

