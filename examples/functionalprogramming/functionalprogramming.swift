//Function Chaining/Composition
//Calculate the sum of the squares of all even numbers
let values = [3, 1, 12, 9, 11, 7, 19, 16, 13, 8]
let finalResult = values.filter{$0 % 2 == 0}.map{$0*$0}.reduce(0, combine: +)
print("Calc Result:" + String(finalResult));


//Student Average
struct Student {
  let ID: Int
  let name: String
  let grade: Int
  
  init(ID:Int, name:String, grade:Int)
  {
      self.ID=ID
      self.name=name
      self.grade=grade
  }
}

var students = 
[
Student(ID:1,name:"a",grade:49),
Student(ID:2,name:"b",grade:29),
Student(ID:3,name:"c",grade:20),
Student(ID:4,name:"d",grade:19),
Student(ID:5,name:"e",grade:45),
Student(ID:6,name:"f",grade:60),
Student(ID:7,name:"g",grade:55),
Student(ID:8,name:"h",grade:57),
Student(ID:9,name:"i",grade:22),
Student(ID:10,name:"j",grade:15),
Student(ID:11,name:"k",grade:88),
Student(ID:12,name:"l",grade:95),
Student(ID:13,name:"m",grade:67),
Student(ID:14,name:"n",grade:34),
]

let studentsPassed=students.filter{$0.grade > 50};
let averageGrade=studentsPassed.reduce(0,combine:{$0+$1.grade})/studentsPassed.count
print("Student Average:" + String(averageGrade))

print("\n\n\n\n\n")

//Filter/Map/Reduce demo
//Filter
func isPassed(student: Student) -> Bool {
  return student.grade > 50;
}

var resultsPassed=students.filter(isPassed)
print(resultsPassed)

//Map
func getStudentInfo(student: Student) -> (String) {
  return (student.name + ":" + String(student.ID));
}

var formattedStudents=students.map(getStudentInfo)
print(formattedStudents)

//Reduce
func sum(initial:Int, inVal:Student) -> Int
{
    return initial+inVal.grade
}

let allSum=resultsPassed.reduce(0,combine:sum)

//Calc average
func avg(sum:Int, count:Int) -> Int
{
    return sum/count
}
let avgStudents=avg(allSum,count:resultsPassed.count)
print("Avg: " + String(avgStudents))

