#if os(Linux)
import Glibc

print(Array(1...45).sorted { (_, _) in random() % 2 == 0 }[0..<6].sorted().map { String($0) }.joined(separator: ", "));
#else
import Foundation

print(Array(1...45).sorted { (_, _) in arc4random() % 2 == 0 }[0..<6].sorted().map { String($0) }.joined(separator: ", "));
#endif
