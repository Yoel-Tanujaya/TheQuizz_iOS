//
//  PhysQuestion.swift
//  TheQuizz
//
//  Created by Yoel Tanujaya on 2/5/17.
//  Copyright © 2017 Yoel Tanujaya. All rights reserved.
//

import Foundation

class DataQuizPhys {
    var data = [quiz]()
    init() {
        let q1 = quiz(soal: "Terdapat berapa banyak Hukum Newton?", jawab1: "Satu", jawab2: "Dua", jawab3: "Tiga", jawab4: "Empat", jawabanBenar: "Tiga")
        let q2 = quiz(soal: "Isi Hukum 3 Newton adalah", jawab1: "Inersia", jawab2: "Aksi Reaksi", jawab3: "Gravitasi", jawab4: "Gaya", jawabanBenar: "Aksi Reaksi")
        let q3 = quiz(soal: "Satuan Internasional untuk Akselerasi", jawab1: "m/s", jawab2: "nm", jawab3: "mph", jawab4: "km/h", jawabanBenar: "m/s")
        let q4 = quiz(soal: "Zat yang dapat mengalir di sebut", jawab1: "fluida", jawab2: "density", jawab3: "gaya", jawab4: "massa jenis", jawabanBenar: "fluida")
        let q5 = quiz(soal: "Perubahan benda dari cair ke gas", jawab1: "Menyublim", jawab2: "Mencair", jawab3: "Membeku", jawab4: "Menguap", jawabanBenar: "Menguap")
        let q6 = quiz(soal: "Planet ke 3 dari tata surya (matahari tidak dihitung)", jawab1: "Venus", jawab2: "Merkurius", jawab3: "Bumi", jawab4: "Bulan", jawabanBenar: "Bumi")
        let q7 = quiz(soal: "Nama asli emas dalam tabel periodik", jawab1: "Plumbum", jawab2: "Ferum", jawab3: "Aurum", jawab4: "Tantalum", jawabanBenar: "Aurum")
        let q8 = quiz(soal: "Zat paling ringan di dalam tabel periodik", jawab1: "Hidrogen", jawab2: "Indium", jawab3: "Helium", jawab4: "Aluminum", jawabanBenar: "Helium")
        let q9 = quiz(soal:"Alat untuk mengukur tekanan atmosfer", jawab1: "hidrometer",jawab2: "barometer",jawab3: "thermostat",jawab4: "fluidameter", jawabanBenar: "barometer")
        let q10 = quiz(soal:"Lapisan atmosfer yang paling dekat dengan bumi", jawab1: "Thermosphere",jawab2: "Mesosphere",jawab3: "Troposphere",jawab4: "Stratosphere", jawabanBenar: "Troposphere")
        let q11 = quiz(soal:"Lapisan atmosfer yang paling jauh dengan bumi", jawab1: "Thermosphere",jawab2: "Exosphere",jawab3: "Troposphere",jawab4: "Stratosphere", jawabanBenar: "Exosphere")
        let q12 = quiz(soal:"Satuan tekanan zat cair", jawab1: "n/m^2",jawab2: "nm",jawab3: "kgm",jawab4: "kg/m^3", jawabanBenar: "n/m^2")
        let q13 = quiz(soal:"Jika massa jenis benda lebih kecil dari pada massa jenis air, benda tersebut akan ", jawab1: "melayang",jawab2: "mengapung",jawab3: "mendatar",jawab4: "tenggelam", jawabanBenar: "mengapung")
        let q14 = quiz(soal:"Sebuah drum berisi air setinggi 0,4 m dari dasar drum, massa jenis air 1000 kg/m3 dan percepatan gravitasi g=10 m/s2. Jadi tekanan air pada dasar drum tersebut", jawab1: "2000 N/m^2",jawab2: "2000 N",jawab3: "4000 N/m^2",jawab4: "4000 N", jawabanBenar: "4000 N/m^2")
        let q15 = quiz(soal:"Titik didih dalam Fahrenheit", jawab1: "100",jawab2: "313",jawab3: "312",jawab4: "80", jawabanBenar: "312")
        
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
