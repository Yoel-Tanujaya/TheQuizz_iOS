//
//  ViewController.swift
//  TheQuizz
//
//  Created by Yoel Tanujaya on 28/4/17.
//  Copyright © 2017 Yoel Tanujaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func startButton(_ sender: UIButton) {
    }
    
    @IBAction func helpButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "HOW TO PLAY", message: "Terdapat 4 jenis pertanyaan yang ada di The Quizz, yaitu Mathematics, Biology, Physics, dan Programming. Jawab pertanyaan dengan tepat untuk menambah poin. \n\nSekali jawab dan benar, poin bertambah 100, sekali salah, poin +75, dua kali salah akan skip pertanyaan tanpa mendapat poin.\n\nTerdapat hint yang bisa digunakan untuk menghilangkan maksimal 1 jawaban yang tidak tepat, jika jumlah hint masih mencukupi. Jika tidak mencukupi, jawab pertanyaan lain dengan tepat untuk mendapatkan tambahan hint.\n\nJika pertanyaan terlalu sulit, terdapat pilihan untuk skip pertanyaan.\n\nSelamat Bermain! :)", preferredStyle: .alert)
        
        let play = UIAlertAction(title: "Let's Play", style: .default) {_ in
            self.performSegue(withIdentifier: "startGameSegue", sender: self)
        }
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alert.addAction(play)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    @IBAction func about(_ sender: UIButton) {
        let about = UIAlertController(title: "THE QUIZZ", message: "Created by\n\nAloysius Adhyatma     - 71150012\nYoel Tanujaya              - 71150014", preferredStyle: .alert)
        let skip = UIAlertAction(title: "OK", style: .default, handler: nil)
        about.addAction(skip)
        self.present(about, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

