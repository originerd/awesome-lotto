#if os(Linux)
    import Glibc
    let rand = random;
#else
    import Foundation
    let rand = arc4random;
#endif

print(Array(1...45).sorted { (_, _) in rand() % 2 == 0 }[0..<6].sorted().map { String($0) }.joined(separator: ", "));
