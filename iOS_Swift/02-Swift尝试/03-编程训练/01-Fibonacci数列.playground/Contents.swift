//: Playground - noun: a place where people can play

/*
 Fibonacci 数列
 
 问题描述：
    有一对🐰，从出生后第三个月起每月都生一对🐰，小兔子长到第三个月后，每个月又生一对兔子，假如兔子都不死，每个月的兔子总数为多少？
 
 程序设计思路：
    先找出规律，再根据规律编程。
    第1月：1对🐰
    第2月：1对🐰
    第3月：
        1对🐰 -> 1对🐰(3月生)
       共2对
    第4月：
        1对🐰(3月生)
        1对🐰 -> 1对🐰(4月生)
       共3对
    第5月：
        1对🐰(3月生) -> 1对🐰(5月生)
        1对🐰(4月生)
        1对🐰 -> 1对🐰(5月生)
       共5对
    第6月：
        1对🐰(3月生) -> 1对🐰(6月生)
        1对🐰(4月生) -> 1对🐰(6月生)
        2对🐰(5月生)
        1对🐰 -> 1对🐰(6月生)
       共8对
 
    每月的🐰对数：1,1,2,3,5,8,...... 这是一个Fibonacci数列，规律：
    前两个数相加得到第三个数，公式表达： f(n) = f(n-2) + f(n-1)
 */


import UIKit


/// 计算Fibonacci 数列
///
/// - Parameter lenght: 数列长度
func fibonacciNumbers(lenght: Int) {
    var number1 = 1
    var number2 = 1
    var number: Int
    
    if lenght == 1 || lenght == 2 {
        print("🐰只有1对")
    } else if lenght <= 0 {
        print("🐰还没有出生")
    } else {
        print("第1月🐰对数：1")
        print("第2月🐰对数：1")
        for i in 3...lenght {
            number = number1 + number2
            print("第\(i)月🐰对数：\(number)")
            number2 = number1
            number1 = number
        }
    }
}

fibonacciNumbers(lenght: 10)


