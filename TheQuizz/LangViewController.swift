//
//  LangViewController.swift
//  TheQuizz
//
//  Created by Yoel Tanujaya on 3/5/17.
//  Copyright © 2017 Yoel Tanujaya. All rights reserved.
//

import UIKit

class LangViewController: UIViewController {
    
    var soal=DataQuizLang()
    var nomorSoal = 0
    var hint:Int=2
    var point:Int=0
    var salah:Int=0
    var jumlahSoal=0
    var isHint:Bool=true
    
    @IBOutlet weak var jumlahSoalText: UILabel!
    @IBOutlet weak var pointText: UILabel!
    @IBOutlet weak var soalText: UILabel!
    @IBOutlet weak var jawab1Text: UIButton!
    @IBOutlet weak var jawab2Text: UIButton!
    @IBOutlet weak var jawab3Text: UIButton!
    @IBOutlet weak var jawab4Text: UIButton!
    @IBOutlet weak var hintsText: UIButton!
    @IBOutlet weak var hintsLabel: UILabel!
    
    @IBAction func jawab1Button(_ sender: UIButton) {
        cekJawaban(jawaban: jawab1Text, id: nomorSoal)
    }
    
    @IBAction func jawab2Button(_ sender: UIButton) {
        cekJawaban(jawaban: jawab2Text, id: nomorSoal)
    }
    
    @IBAction func jawab3Button(_ sender: UIButton) {
        cekJawaban(jawaban: jawab3Text, id: nomorSoal)
    }
    
    @IBAction func jawab4Button(_ sender: UIButton) {
        cekJawaban(jawaban: jawab4Text, id: nomorSoal)
    }
    
    @IBAction func hintButton(_ sender: UIButton) {
        if (!isHintAvailable() || !isHint) {
            hintsText.isHidden=true
        }
        else {
            var idx:Int = Int(arc4random() % 3)
            if (idx==0) {
                if (hapusJawaban(jawaban: jawab1Text)) {
                    idx = Int(arc4random() % 3)
                    if (idx==1) {
                        jawab2Text.isEnabled=false
                    }
                    else if (idx==2) {
                        jawab3Text.isEnabled=false
                    }
                    else {
                        jawab4Text.isEnabled=false
                    }
                }
                else {
                    jawab1Text.isEnabled=false
                }
            }
            else if (idx==1) {
                if (hapusJawaban(jawaban: jawab2Text)) {
                    idx = Int(arc4random() % 3)
                    if (idx==0) {
                        jawab1Text.isEnabled=false
                    }
                    else if (idx==2) {
                        jawab3Text.isEnabled=false
                    }
                    else {
                        jawab4Text.isEnabled=false
                    }
                }
                else {
                    jawab2Text.isEnabled=false
                }
            }
            else if (idx==2) {
                if (hapusJawaban(jawaban: jawab3Text)) {
                    idx = Int(arc4random() % 3)
                    if (idx==0) {
                        jawab1Text.isEnabled=false
                    }
                    else if (idx==1) {
                        jawab2Text.isEnabled=false
                    }
                    else {
                        jawab4Text.isEnabled=false
                    }
                }
                else {
                    jawab3Text.isEnabled=false
                }
            }
            else if (idx==3) {
                if (hapusJawaban(jawaban: jawab4Text)) {
                    idx = Int(arc4random() % 3)
                    if (idx==0) {
                        jawab1Text.isEnabled=false
                    }
                    else if (idx==1) {
                        jawab2Text.isEnabled=false
                    }
                    else {
                        jawab3Text.isEnabled=false
                    }
                }
                else {
                    jawab4Text.isEnabled=false
                }
            }
        }
        hint-=1
        isHint=false
        hintsLabel.text="Hints: \(hint)"
        hintsText.isHidden=true
    }
    
    @IBAction func skipButton(_ sender: UIButton) {
        updatePoint()
    }
    
    func isHintAvailable() -> Bool {
        if (hint==0) {
            return false
        }
        else {
            return true
        }
    }
    
    func showSoal(id:Int) {
        soalText.text = soal.data[id].soal
        jawab1Text.setTitle(soal.data[id].jawab1, for: .normal)
        jawab2Text.setTitle(soal.data[id].jawab2, for: .normal)
        jawab3Text.setTitle(soal.data[id].jawab3, for: .normal)
        jawab4Text.setTitle(soal.data[id].jawab4, for: .normal)
    }
    
    func cekJawaban(jawaban:UIButton, id:Int) {
        if (jawaban.currentTitle != soal.data[id].jawabanBenar) {
            jawaban.isEnabled=false
            salah+=1
            if (salah==2) {
                updatePoint()
            }
            else {
                
            }
        }
        else {
            if (salah==0) {
                point+=100
                hint+=1
                jumlahSoal+=1
                updatePoint()
            }
            else {
                point+=75
                jumlahSoal+=1
                updatePoint()
            }
        }
    }
    
    func updatePoint() {
        hintsLabel.text="Hints: \(hint)"
        pointText.text="Your Points: \(point)"
        jumlahSoalText.text="Soal Benar: \(jumlahSoal) / 15"
        if (nomorSoal>=14) {
            if (jumlahSoal==0) {
                jumlahSoal=0
                let alert = UIAlertController(title: "Oops!!", message: "Anda tidak berhasil menjawab semua soal \n\nTotal Poin anda: \(point)", preferredStyle: .alert)
                let ok = UIAlertAction(title: "Play Again", style: .default) { _ in
                    self.performSegue(withIdentifier: "unwindSegueStartL", sender: self)
                }
                alert.addAction(ok)
                self.present(alert, animated: true, completion: nil)
            }
            else if (jumlahSoal==14){
                let alert = UIAlertController(title: "Wow!! Perfect", message: "Anda telah berhasil menjawab semua soal dengan benar\n\nTotal Poin anda: \(point)", preferredStyle: .alert)
                let ok = UIAlertAction(title: "Done", style: .default) { _ in
                    self.performSegue(withIdentifier: "unwindSegueStartL", sender: self)
                }
                alert.addAction(ok)
                self.present(alert, animated: true, completion: nil)
            }
            else {
                let alert = UIAlertController(title: "Congratulations!!", message: "Anda telah berhasil menjawab \(jumlahSoal) / 15 soal\n\nTotal Poin anda: \(point)", preferredStyle: .alert)
                let ok = UIAlertAction(title: "Done", style: .default) { _ in
                    self.performSegue(withIdentifier: "unwindSegueStartL", sender: self)
                }
                alert.addAction(ok)
                self.present(alert, animated: true, completion: nil)
            }
        }
        else {
            
            salah=0
            nomorSoal+=1
            isHint = true
            showSoal(id: nomorSoal)
            jawab1Text.isEnabled=true
            jawab2Text.isEnabled=true
            jawab3Text.isEnabled=true
            jawab4Text.isEnabled=true
            if (isHintAvailable()) {
                hintsText.isHidden=false
            }
            else {
                hintsText.isHidden=true
            }
        }
    }
    
    func hapusJawaban(jawaban:UIButton) -> Bool{
        if (jawaban.currentTitle != soal.data[nomorSoal].jawabanBenar) {
            return false
        }
        else {
            return true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSoal(id: nomorSoal)
        hintsLabel.text="Hints: \(hint)"
        pointText.text="Your Points: \(point)"
        jumlahSoalText.text="Soal Benar: \(jumlahSoal) / 15"
        if (isHintAvailable()) {
            hintsText.isHidden=false
        }
        else {
            hintsText.isHidden=true
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
