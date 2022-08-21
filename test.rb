
#Keyword Assignment to instance variables

def print_name_and_greeting(greeting:, name:)
    puts "#{greeting}, #{name}"
  end

  print_name_and_greeting(name:"Kanye", greeting:"Hi")
  print_name_and_greeting(name:"Kanye",greeting: "Hi")




  #MASS ASSIGNMENT
  class Person
    attr_accessor :name, :age
  
    def initialize(name:, age:)
      @name = name
      @age = age
    end
  end
  person_aTT={name:"Shee",age:21}
  shee=Person.new(**person_aTT)
  p shee.age


#MASS CLASS ASSIGNMENT 

  class User
    
  
    def initialize(attributes)
        attributes.each{
            |key,value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        }
    end
  end

  twitter_user = { 
    name: "Sophie", 
    user_name: "sm_debenedetto", 
    age: 26, 
    location: "NY, NY"
  }
  twit=User.new(twitter_user)
  puts twit.name