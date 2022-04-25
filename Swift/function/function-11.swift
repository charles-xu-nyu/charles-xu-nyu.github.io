func temp(a1: inout Int, b1: inout Int) {
   let t = a1
   a1 = b1
   b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")