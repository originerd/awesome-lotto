var numbers: [Int] = []

for number in 1...45 {
    numbers.append(number)
}

#if os(Linux)
import Glibc
numbers.sort{ (_, _) in random() < random() }
    
#else
import Foundation
numbers.sort{ (_, _) in arc4random() < arc4random() }
    
#endif

var lottoNumbers: [Int] = []
for _ in 1...6 {
    lottoNumbers.append(numbers.popLast()!)
}

for (index, number) in lottoNumbers.sorted().enumerated() {
    print(number, terminator: index != lottoNumbers.count - 1 ? "," : "")
}
