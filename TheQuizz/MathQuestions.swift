//
//  MathQuestions.swift
//  TheQuizz
//
//  Created by Yoel Tanujaya on 1/5/17.
//  Copyright © 2017 Yoel Tanujaya. All rights reserved.
//

import Foundation

class DataQuizMath {
    var data = [quiz]()
    init() {
        let q1 = quiz(soal: "Berapa kali sebuah dadu harus di lempar untuk mendapatkan angka 6 sebanyak 50 kali?", jawab1: "300", jawab2: "325", jawab3: "350", jawab4: "400", jawabanBenar: "300")
        let q2 = quiz(soal: "Untuk persegi panjang dengan keliling 90 cm dan lebar 10 cm, berapa panjangnya?", jawab1: "30", jawab2: "33", jawab3: "35", jawab4: "39", jawabanBenar: "35")
        let q3 = quiz(soal: "4(x - 2) = 17", jawab1: "6.05", jawab2: "6.35", jawab3: "6.5", jawab4: "6.25", jawabanBenar: "6.25")
        let q4 = quiz(soal: "2x - 5 > 19", jawab1: "11", jawab2: "10", jawab3: "12", jawab4: "9", jawabanBenar: "12")
        let q5 = quiz(soal: "Jika x = 0.4; 2(x - 0.1) + 1 = ?", jawab1: "4.2", jawab2: "2.3", jawab3: "1.6", jawab4: "0.5", jawabanBenar: "1.6")
        let q6 = quiz(soal: "24 kg beras dibagi ke dalam 1/3 kg per karung, berapa banyak karung yg ada?", jawab1: "90", jawab2: "50", jawab3: "82", jawab4: "72", jawabanBenar: "72")
        let q7 = quiz(soal: "Desimal dari 129/4", jawab1: "35.25", jawab2: "33.5", jawab3: "32.35", jawab4: "32.25", jawabanBenar: "32.25")
        let q8 = quiz(soal: "Berapa kemungkinan susunan password sebanyak 3 karakter dengan syarat angka dan huruf tidak boleh sama?", jawab1: "16384", jawab2: "42960", jawab3: "42840", jawab4: "42720", jawabanBenar: "42840")
        let q9 = quiz(soal:"Hasil dari 125 ^ 2/3 adalah ", jawab1: "5",jawab2: "15",jawab3: "25",jawab4: "30", jawabanBenar: "25")
        let q10 = quiz(soal:"Diketahui P = {b,a,t,i,k} , Banyaknya himpunan bagian P adalah ", jawab1: "32",jawab2: "25",jawab3: "10",jawab4: "5", jawabanBenar: "32")
        let q11 = quiz(soal:"Diketahui fungsi f(x) = 5x - 2 dan fungsi f(k) = 18. Nilai k adalah ", jawab1: "6",jawab2: "5",jawab3: "4",jawab4: "3", jawabanBenar: "4")
        let q12 = quiz(soal:"Pak Erick memiliki alumunium 8 1/2 meter dan membeli lagi 1 1/4 meter. Untuk membuat pintu dibutuhkan 7 3/5meter, sisa alumunium Pak Erick adalah ... meter", jawab1: "2 1/20",jawab2: "2 1/10",jawab3: "2 3/20",jawab4: "2 1/5", jawabanBenar: "2 3/20")
        let q13 = quiz(soal:"Gery menabung di bank sebesar Rp 800.000,00 dengan suku bunga tunggal 9% pertahun. Tabungan Gery saat diambil sebesar Rp 920.000,00. Lama Gery menabung yaitu ... bulan", jawab1: "18",jawab2: "20",jawab3: "22",jawab4: "24", jawabanBenar: "20")
        let q14 = quiz(soal:"Diketahui barisan aritmatika dengan U5 = 8 dan U9 = 20, suku ke-10 adalah ", jawab1: "27",jawab2: "22",jawab3: "23",jawab4: "31", jawabanBenar: "23")
        let q15 = quiz(soal:"Pada sebuah gedung terdapat 25 kursi di baris pertama, dan tiap baris berikutnya bertambah 3 kursi dari baris depannya, jika terdapat 8 baris, maka jumlah kursi total ", jawab1: "284",jawab2: "264",jawab3: "216",jawab4: "208", jawabanBenar: "284")
        
        data.append(q1)
        data.append(q2)
        data.append(q3)
        data.append(q4)
        data.append(q5)
        data.append(q6)
        data.append(q7)
        data.append(q8)
        data.append(q9)
        data.append(q10)
        data.append(q11)
        data.append(q12)
        data.append(q13)
        data.append(q14)
        data.append(q15)
        
        for _ in 1...20 {
            let pos1 = Int(arc4random() % 15)
            let pos2 = Int(arc4random() % 15)
            let quiz1 = data[pos1]
            data[pos1] = data[pos2]
            data[pos2] = quiz1
        }
    }
    

}

struct quiz {
    var soal:String
    var jawab1:String
    var jawab2:String
    var jawab3:String
    var jawab4:String
    var jawabanBenar:String
    
    init(soal:String, jawab1:String, jawab2:String, jawab3:String, jawab4:String, jawabanBenar:String) {
        self.soal=soal
        self.jawab1=jawab1
        self.jawab2=jawab2
        self.jawab3=jawab3
        self.jawab4=jawab4
        self.jawabanBenar=jawabanBenar
    }
}
