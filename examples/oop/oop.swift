class Pets
{
    class Pet
    {
        static var country:String = "USA"
        let name: String
        let color: String
        var license: Int
        
        init(name:String = "not given", color:String = "not given", license: Int = 0)
        {
            self.name=name
            self.license=license
            self.color=color
        }
        
        func info()
        {
            print( "\n\nname:" + self.name )
            print( "color:" + self.color )
            print( "license:" + String(self.license) )
            print( "country:" + String(Dog.country) )
        }
        
        func changeLicense(newLicense:Int) -> Int
        {
            self.license = newLicense
            return self.license
        }
        
        static func changeCountry(newCountry:String) -> String
        {
            Pet.country = newCountry
            return Pet.country
        }
        
        func makeSound()
        {
            print("Dont know how to make a sound")
        }
    }
    
    class Dog: Pet
    {
        let sound: String = "Woof Woof"
        
        override func makeSound()
        {
            print(self.sound)
        }
        
    }
    
    class Cat: Pet
    {
        let sound: String = "Meow Meow"
        
        override func makeSound()
        {
            print(self.sound)
        }
    }
} 

var myPet=Pets.Pet(name:"Unknown",color:"Unknown",license:-1)
print("Instance type is " + String(Mirror(reflecting:myPet).subjectType))
myPet.info()
myPet.makeSound()

//myDog is of type Pet
var myDog:Pets.Pet=Pets.Dog(name:"Poodle",color:"white",license:25)
print("Instance type is " + String(Mirror(reflecting:myDog).subjectType))

myDog.info()
myDog.changeLicense(100)
myDog.info()
myDog.makeSound();

Pets.Dog.changeCountry("Canada")

myDog.info()


print ("\n\n\n==== About Cats =====")
//myCat is of type Pet
var myCat:Pets.Pet=Pets.Cat(name:"Toyger", color:"brown", license:255)
print("Instance type is " + String(Mirror(reflecting:myCat).subjectType))

myCat.info()
myCat.changeLicense(355)
myCat.info()
myCat.makeSound();

Pets.Cat.changeCountry("France")

myCat.info()

