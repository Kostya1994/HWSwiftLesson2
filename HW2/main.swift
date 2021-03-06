//
//  main.swift
//  HW2
//
//  Created by Константин Соловьев on 06.03.2021.
//

import Foundation

// MARK: Проверка четного / не четного числа;
func calculateEvenNumbers (_ x : Int) -> Int {
    let remainder = x % 2
    if remainder != 0 {
        return 2
    }else{
        return 1
    }
}
// MARK: Проверка деления на 3 без остатка;
func calculateDivisionThree (_ x : Int) -> Int {
    if x == 0 {
        return 3
    }else{
        let remainder = x % 3
        if remainder != 0 {
            return 3
        }else{
            return 4
        }
    }
}

// MARK: Удалить из этого массива все четные числа и все числа, которые не делятся на 3;
var array = [Int]()
for _ in 0...99 {
    let y = Int.random(in: 0..<100)
    array.append(y)
 }
print(array)
print(array.count)
print("____________________________")

// MARK: Создание пустого массива Int. Заполнение массива;
for x in array {
    let result1 = calculateEvenNumbers(x)
    switch result1 {
    case 1,3:
        if let index = array.firstIndex(of: x) {
            array.remove(at: index)
        }
    default:
        0
    }

    let result2 = calculateDivisionThree(x)
    switch result2 {
    case 1,3:
        if let index = array.firstIndex(of: x) {
            array.remove(at: index)
        }
    default:
        0
    }
}
print(array)
print(array.count)
print("____________________________")
// MARK: Фибоначи отложил на потом :-( ;

