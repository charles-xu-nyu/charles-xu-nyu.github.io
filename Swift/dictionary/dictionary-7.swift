var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
for (key, value) in someDict.enumerated() {
   print("Dictionary key \(key) - Dictionary value \(value)")
}