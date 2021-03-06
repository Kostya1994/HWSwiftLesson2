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

// MARK: Создание пустого массива Int. Заполнение массива;;
var array = [Int]()
for _ in 0...99 {
    let y = Int.random(in: 0..<100)
    array.append(y)
 }
print(array)
print(array.count)
print("____________________________")

// MARK: Удалить из этого массива все четные числа и все числа, которые не делятся на 3;

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
// MARK: Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
func fibonacci (_ n : Int) -> Int {
    if n == 0 {
        return 0
    }
    else if n == 1 {
        return 1
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
}
var x = fibonacci(2)
print(x)
print("____________________________")

func fibonacciArray (_ fib : Int) -> [Int] {
var array1 = [Int]()
    for i in 0...fib { 
    let y = fibonacci(i)
    array1.append(y)
    }
    return array1
}

//MARK: не стоит вызывать больше 10, перегружает процессор :-(
//let fibArr = fibonacciArray(10)
//print(fibArr)




