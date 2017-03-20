import Foundation

var numbers: [Int] = []

for number in 1...45 {
    numbers.append(number)
}

numbers.sort{ (_, _) in arc4random() < arc4random() }

print("Lotto numbers: ", terminator: "");
print("\(numbers.popLast()!)", terminator: " ");
print("\(numbers.popLast()!)", terminator: " ");
print("\(numbers.popLast()!)", terminator: " ");
print("\(numbers.popLast()!)", terminator: " ");
print("\(numbers.popLast()!)", terminator: " ");
print("\(numbers.popLast()!)");
