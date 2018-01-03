//
//  BioQuestion.swift
//  TheQuizz
//
//  Created by Yoel Tanujaya on 2/5/17.
//  Copyright © 2017 Yoel Tanujaya. All rights reserved.
//

import Foundation

class DataQuizBio {
    var data = [quiz]()
    init() {
        let q1 = quiz(soal: "Berikut adalah pembentuk DNA, kecuali", jawab1: "Adenin", jawab2: "Ticin", jawab3: "Cyanin", jawab4: "Guanin", jawabanBenar: "Ticin")
        let q2 = quiz(soal: "Kromosom manusia ada ... pasang", jawab1: "25", jawab2: "24", jawab3: "46", jawab4: "23", jawabanBenar: "23")
        let q3 = quiz(soal: "Cakupan terluas dalam biologi", jawab1: "Ekologi", jawab2: "Populasi", jawab3: "Genus", jawab4: "Familia", jawabanBenar: "Ekologi")
        let q4 = quiz(soal: "Cakupan tersempit di bidang Biologi", jawab1: "Individu", jawab2: "Spesies", jawab3: "Kingdom", jawab4: "Ekosistem", jawabanBenar: "Spesies")
        let q5 = quiz(soal: "Proses berikut dilakukan oleh semua makhluk  hidup, kecuali", jawab1: "Respirasi", jawab2: "Ekskresi", jawab3: "Fotosintesis", jawab4: "Reproduksi", jawabanBenar: "Fotosintesis")
        let q6 = quiz(soal: "Terdapat ... ruang jantung pada manusia", jawab1: "2", jawab2: "3", jawab3: "4", jawab4: "1", jawabanBenar: "4")
        let q7 = quiz(soal: "Untuk mengurai zat Amilum, dibutuhkan enzim", jawab1: "Ptialin", jawab2: "Tripsinogen", jawab3: "Renin", jawab4: "Pepsinogen", jawabanBenar: "Ptialin")
        let q8 = quiz(soal: "Teori Darwin menjelaskan bahwa evolusi terjadi melalui", jawab1: "Adaptasi", jawab2: "Mutasi", jawab3: "Seleksi Alam", jawab4: "Migrasi", jawabanBenar: "Seleksi Alam")
        let q9 = quiz(soal:"Mulut daun memiliki nama lain", jawab1: "Kloroplas",jawab2: "Klorofil",jawab3: "Stomata",jawab4: "Fotosintesa", jawabanBenar: "Stomata")
        let q10 = quiz(soal:"Sifat dari suatu organisme yang tidak muncul karena terkalahkan oleh pemunculan sifat lain yang sejenis, disebut", jawab1: "Dominan",jawab2: "Resesif",jawab3: "Heterozigot",jawab4: "Intermediate", jawabanBenar: "Resesif")
        let q11 = quiz(soal:"Gerak membelit sulur tanaman kacang panjang pada kayu tempat tumbuhnya disebut gerak", jawab1: "Tigmonasti",jawab2: "Tigmotropisme",jawab3: "Fototropisme",jawab4: "Seismonasti", jawabanBenar: "Tigmotropisme")
        let q12 = quiz(soal:"Tulang belakang berbentuk miring disebut", jawab1: "Lordosis",jawab2: "Kifosis",jawab3: "Fisura",jawab4: "Skoliosis", jawabanBenar: "Skoliosis")
        let q13 = quiz(soal:"Bagian terkecil dari pembuluh darah Vena ", jawab1: "Venula",jawab2: "Arteriole",jawab3: "Aorta",jawab4: "Venacava", jawabanBenar: "Venula")
        let q14 = quiz(soal:"Bunglon dapat melakukan perubahan warna untuk", jawab1: "menarik pasangan",jawab2: "beradaptasi",jawab3: "perlindungan diri",jawab4: "bukan ketiganya", jawabanBenar: "perlindungan diri")
        let q15 = quiz(soal:"Bagian mata untuk menangkap cahaya", jawab1: "Iris",jawab2: "Lensa",jawab3: "Retina",jawab4: "Kornea", jawabanBenar: "Retina")
        
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
