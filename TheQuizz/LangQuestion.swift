//
//  LangQuestion.swift
//  TheQuizz
//
//  Created by Yoel Tanujaya on 2/5/17.
//  Copyright © 2017 Yoel Tanujaya. All rights reserved.
//

import Foundation

class DataQuizLang {
    var data = [quiz]()
    init() {
        let q1 = quiz(soal: "Yang termasuk bahasa pemrograman prosedural adalah", jawab1: "Swift", jawab2: "Java", jawab3: "C++", jawab4: "Assembly", jawabanBenar: "C++")
        let q2 = quiz(soal: "Tipe data yang ada di bahasa C++, kecuali", jawab1: "void", jawab2: "Integer", jawab3: "char", jawab4: "main", jawabanBenar: "main")
        let q3 = quiz(soal: "Header yang digunakan untuk print dan scan pada C", jawab1: "iostream", jawab2: "stdio.h", jawab3: "stdio.c", jawab4: "windows.h", jawabanBenar: "stdio.h")
        let q4 = quiz(soal: "Untuk mengambil nilai float pada C, digunakan ", jawab1: "%d", jawab2: "%h", jawab3: "%f", jawab4: "%s", jawabanBenar: "%f")
        let q5 = quiz(soal: "Yang termasuk komponen GUI, kecuali", jawab1: "Button", jawab2: "Window", jawab3: "Icon", jawab4: "CLI", jawabanBenar: "CLI")
        let q6 = quiz(soal: "Huruf O terdapat diantara huruf ... dan ... pada keyboard QWERTY", jawab1: "IP", jawab2: "KL", jawab3: "NP", jawab4: "JK", jawabanBenar: "IP")
        let q7 = quiz(soal: "480 dikonversi kedalam hexadecimal", jawab1: "1F8", jawab2: "200", jawab3: "1E0", jawab4: "1F0", jawabanBenar: "1E0")
        let q8 = quiz(soal: "ASCII End of Text adalah", jawab1: "3", jawab2: "4", jawab3: "2", jawab4: "100", jawabanBenar: "3")
        let q9 = quiz(soal:"Pencarian rute di aplikasi map menggunakan implementasi", jawab1: "Stack",jawab2: "Queue",jawab3: "Array",jawab4: "LinkedList", jawabanBenar: "Stack")
        let q10 = quiz(soal:"Compiler akan mengubah code ke dalam bentuk", jawab1: "hexa",jawab2: "decimal",jawab3: "octal",jawab4: "biner", jawabanBenar: "biner")
        let q11 = quiz(soal:"Code yang sudah dicompile akan di bawa ke ... untuk di proses", jawab1: "CPU",jawab2: "RAM",jawab3: "Bootloader",jawab4: "Kernel", jawabanBenar: "Kernel")
        let q12 = quiz(soal:"1 digit biner bernilai", jawab1: "1 byte",jawab2: "1 bit",jawab3: "2 byte",jawab4: "10 bit", jawabanBenar: "1 bit")
        let q13 = quiz(soal:"Bahasa C++ dibuat pertama kali pada tahun",jawab1: "1999",jawab2: "1980",jawab3: "1979",jawab4: "1985", jawabanBenar: "1979")
        let q14 = quiz(soal:"Bahasa C dibuat pertama kali pada tahun", jawab1: "1966",jawab2: "1991",jawab3: "1972",jawab4: "1974", jawabanBenar: "1972")
        let q15 = quiz(soal:"First In First Out digunakan pada metode", jawab1: "Stack",jawab2: "Vector",jawab3: "Insertion",jawab4: "Queue", jawabanBenar: "Queue")
        
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
