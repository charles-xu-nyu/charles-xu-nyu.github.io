var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

for (index, keyValue) in someDict.enumerated() {
   print("Dictionary key \(index) - Dictionary value \(keyValue)")
}