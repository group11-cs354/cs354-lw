//  Anonymous function

func doFunc(inf:()->())
{
    inf()
}

doFunc( {
    print( "This is a Anonymous function" )
})

//Define and Call in place
func isPositive( val:Int ) -> Bool
{
    if(val >= 0)
    {
        print("\n\nPositive")
        return true;
    }
    else
    {
        print("\n\nNegative")
        return false
    }
}

isPositive( 
 {
     var a:Int = 1
     var b:Int = -1
     return a+b
 }()
)

//Closures

print( "\n\nClosures demo" )
func calculateQuadratic(x:Int) -> (Int,Int,Int) -> Int
{
    func f(a:Int,b:Int,c:Int)->Int
    {
        var result:Int = 0
        
        result = a * (x * x) + b * (x) + c
        
        return result 
    }
    
    return f
}

let quadratic_x_1 = calculateQuadratic(1)

print( quadratic_x_1(1,2,3) )
print( quadratic_x_1(2,3,4) )

let quadratic_x_2 = calculateQuadratic(2)

print( quadratic_x_2(1,2,3) )
print( quadratic_x_2(2,3,4) )




