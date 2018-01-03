//
//  PhysViewController.swift
//  TheQuizz
//
//  Created by Yoel Tanujaya on 2/5/17.
//  Copyright © 2017 Yoel Tanujaya. All rights reserved.
//

import UIKit

class PhysViewController: UIViewController {
    
    var soal=DataQuizPhys()
    var nomorSoal = 0
    var hint:Int=2
    var point:Int=0
    var salah:Int=0
    var jumlahSoal=0
    var isHint:Bool=true
    
    @IBOutlet weak var jumlahSoalText: UILabel!
    @IBOutlet weak var pointTextP: UILabel!
    @IBOutlet weak var soalTextP: UILabel!
    @IBOutlet weak var jawab1TextP: UIButton!
    @IBOutlet weak var jawab2TextP: UIButton!
    @IBOutlet weak var jawab3TextP: UIButton!
    @IBOutlet weak var jawab4TextP: UIButton!
    @IBOutlet weak var hintsText: UIButton!
    @IBOutlet weak var hintsLabelP: UILabel!
    
    
    @IBAction func jawab1ButtonP(_ sender: UIButton) {
        cekJawaban(jawaban: jawab1TextP, id: nomorSoal)
    }
    
    @IBAction func jawab2ButtonP(_ sender: UIButton) {
        cekJawaban(jawaban: jawab2TextP, id: nomorSoal)
    }
    
    @IBAction func jawab3ButtonP(_ sender: UIButton) {
        cekJawaban(jawaban: jawab3TextP, id: nomorSoal)
    }
    
    @IBAction func jawab4ButtonP(_ sender: UIButton) {
        cekJawaban(jawaban: jawab4TextP, id: nomorSoal)
    }
    
    @IBAction func hintButtonP(_ sender: UIButton) {
        if (!isHintAvailable() || !isHint) {
            hintsText.isHidden=true
        }
        else {
            var idx:Int = Int(arc4random() % 3)
            if (idx==0) {
                if (hapusJawaban(jawaban: jawab1TextP)) {
                    idx = Int(arc4random() % 3)
                    if (idx==1) {
                        jawab2TextP.isEnabled=false
                    }
                    else if (idx==2) {
                        jawab3TextP.isEnabled=false
                    }
                    else {
                        jawab4TextP.isEnabled=false
                    }
                }
                else {
                    jawab1TextP.isEnabled=false
                }
            }
            else if (idx==1) {
                if (hapusJawaban(jawaban: jawab2TextP)) {
                    idx = Int(arc4random() % 3)
                    if (idx==0) {
                        jawab1TextP.isEnabled=false
                    }
                    else if (idx==2) {
                        jawab3TextP.isEnabled=false
                    }
                    else {
                        jawab4TextP.isEnabled=false
                    }
                }
                else {
                    jawab2TextP.isEnabled=false
                }
            }
            else if (idx==2) {
                if (hapusJawaban(jawaban: jawab3TextP)) {
                    idx = Int(arc4random() % 3)
                    if (idx==0) {
                        jawab1TextP.isEnabled=false
                    }
                    else if (idx==1) {
                        jawab2TextP.isEnabled=false
                    }
                    else {
                        jawab4TextP.isEnabled=false
                    }
                }
                else {
                    jawab3TextP.isEnabled=false
                }
            }
            else if (idx==3) {
                if (hapusJawaban(jawaban: jawab4TextP)) {
                    idx = Int(arc4random() % 3)
                    if (idx==0) {
                        jawab1TextP.isEnabled=false
                    }
                    else if (idx==1) {
                        jawab2TextP.isEnabled=false
                    }
                    else {
                        jawab3TextP.isEnabled=false
                    }
                }
                else {
                    jawab4TextP.isEnabled=false
                }
            }
        }
        hint-=1
        isHint=false
        hintsLabelP.text="Hints: \(hint)"
        hintsText.isHidden=true
    }
    
    @IBAction func skipButtonP(_ sender: UIButton) {
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
        soalTextP.text = soal.data[id].soal
        jawab1TextP.setTitle(soal.data[id].jawab1, for: .normal)
        jawab2TextP.setTitle(soal.data[id].jawab2, for: .normal)
        jawab3TextP.setTitle(soal.data[id].jawab3, for: .normal)
        jawab4TextP.setTitle(soal.data[id].jawab4, for: .normal)
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
        hintsLabelP.text="Hints: \(hint)"
        pointTextP.text="Your Points: \(point)"
        jumlahSoalText.text="Soal Benar: \(jumlahSoal) / 15"
        if (nomorSoal>=14) {
            if (jumlahSoal==0) {
                jumlahSoal=0
                let alert = UIAlertController(title: "Oops!!", message: "Anda tidak berhasil menjawab semua soal \n\nTotal Poin anda: \(point)", preferredStyle: .alert)
                let ok = UIAlertAction(title: "Play Again", style: .default) { _ in
                    self.performSegue(withIdentifier: "unwindSegueStartP", sender: self)
                }
                alert.addAction(ok)
                self.present(alert, animated: true, completion: nil)
            }
            else if (jumlahSoal==14){
                let alert = UIAlertController(title: "Wow!! Perfect", message: "Anda telah berhasil menjawab semua soal dengan benar\n\nTotal Poin anda: \(point)", preferredStyle: .alert)
                let ok = UIAlertAction(title: "Done", style: .default) { _ in
                    self.performSegue(withIdentifier: "unwindSegueStartP", sender: self)
                }
                alert.addAction(ok)
                self.present(alert, animated: true, completion: nil)
            }
            else {
                let alert = UIAlertController(title: "Congratulations!!", message: "Anda telah berhasil menjawab \(jumlahSoal) / 15 soal\n\nTotal Poin anda: \(point)", preferredStyle: .alert)
                let ok = UIAlertAction(title: "Done", style: .default) { _ in
                    self.performSegue(withIdentifier: "unwindSegueStartP", sender: self)
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
            jawab1TextP.isEnabled=true
            jawab2TextP.isEnabled=true
            jawab3TextP.isEnabled=true
            jawab4TextP.isEnabled=true
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
        hintsLabelP.text="Hints: \(hint)"
        pointTextP.text="Your Points: \(point)"
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
