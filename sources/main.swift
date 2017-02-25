import Foundation
import Glibc
 
srandom(UInt32(NSDate().timeIntervalSince1970))

for count in 1...3 {
    print(count)
    sleep(1)
}
 
print("test");
