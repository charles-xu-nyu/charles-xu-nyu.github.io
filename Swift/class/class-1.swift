class MarksStruct {
   var mark: Int
   init(mark: Int) {
      self.mark = mark
   }
}

class studentMarks {
   var mark = 300
}

let marks = studentMarks()
print("Mark is \(marks.mark)")