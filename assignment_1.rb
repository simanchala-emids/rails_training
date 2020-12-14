$count = 0
class Customer 

    attr_accessor :id , :name, :points, :group,:avg

   #parameterized constructor
   def initialize(id,name)
   @id = id 
   @name = name 
   end

    def addPoints(given_amount)
      @points = given_amount

    end

    def upgradePoints(given_percentage)
        @upgradePoint = @points * (given_percentage)/10
        @points = @points + @upgradePoint
    end

   def removePoints(a)
    @points  = @points - a
   end

    def display
        $count =  $count + 1
        puts "…………………………… Customer: #{$count} ID: #{@id}  Name: #{@name} Points: #{@points} Group: null "
    end

    def self.getBest(get_arr)
     m = get_arr.max
     puts "MAX: #{m}"
    end
    
    def self.calAvg(get_arr)
      sum = get_arr.inject(:+)
      avg = sum/$count
    end
 
    def self.displayAvg(val)
          avg = val
         puts "Average of points  is #{avg}"
    end

end

class Test 
    
    def display
    
    arr = []

    c0 = Customer.new(1543 ,"Nimal")
    c0.addPoints(129)
    arr << c0.points
    c0.display

    c1 = Customer.new(6561,"Saman")
    c1.addPoints(785)
    b = c1.upgradePoints(2)
    arr << c1.points
    c1.display

    c2 = Customer.new(6954,"Kasun")
    a = c2.addPoints(3258)
    a = c2.addPoints(1000)
    arr << c2.points
    c2.display

    c3 = Customer.new(3485,"Nayana")
    c3.addPoints(59)
    arr << c3.points
    c3.display

    c4 = Customer.new(8546,"Kalpa")
    p = c4.addPoints(1652)
    arr << c4.points
    c4.display

    a = Customer.calAvg(arr)
    Customer.displayAvg(a)
    Customer.getBest(arr) # highest number of points using the method getBest

    cust = Customer.new(1543 ,"Nimal")
    cust = c4 #reference variable called cust of type Customer.
    cust.display
    cust.removePoints(2000)
    cust.display

    cust1 = Customer.new(1 ,"Raghu")
    cust1 = cust
    # cust = nil
    # cust1.id
    # end
  end
end

 t = Test.new
 t.display