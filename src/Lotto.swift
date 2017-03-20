func a(r: () -> UInt32) {
    print(Array(1...45).sorted { (_, _) in r() % 2 == 0 }[0..<6].sorted().map { String($0) }.joined(separator: ", "));
}

#if os(Linux)
import Glibc
a(r: random)

#else
import Foundation
a(r: arc4random)
#endif
