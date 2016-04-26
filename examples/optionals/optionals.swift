
var str:String = "Cannot be nil"
print(str)

func fuu(inStr:String)
{
    print(inStr)
}

var strNilOptional:String? = nil

var strOptional:String? = "hi"

print(strOptional)
print(strOptional!)

if(strOptional?.uppercased()==nil)
{
    print("strOptional is nil")
}
else
{
    print("strOptional is \(strOptional!) not \'nil\', so do something with it")
}



