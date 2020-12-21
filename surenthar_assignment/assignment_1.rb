$count = 0
class Customer
  attr_accessor :id, :name, :points, :group, :avg
  def initialize(id, name)
    @id = id
    @name = name
  end

  def add_points(given_amount)
    @points = 25
    @points = @points + given_amount
  end

  def upgrade_points(given_percentage)
    @upgradepoint = @points * given_percentage / 10
    @points = @points + @upgradepoint
  end

  def remove_points(remove_point)
    @points = @points - remove_point
    if @points.negative?
      @points = 0
      puts "Amount value is negative so i'm making it to #{@points}"
    elsif puts "Amount value is not negative so i'm making it to #{@points}"
    end
  end

  def compute_group(points, group)
    @point = points
    @group = group
    @i = 0
    while @point > 0 do
      if @point < 100 && @point > 1
        @group = 'Silver'
      elsif @point <= 500 && @point > 100
        @group = 'Gold'
      elsif @point <= 2000 && @point > 500
        @group = 'Diamond'
      elsif @point > 2000 && @point < 3000
        @group = 'Platinum'
      end
        break
    end
  end

  def self.getbest(get_arr)
    @m = get_arr.max
    puts "MAX: #{@m}"
  end
    
  def self.calAvg(get_arr)
    sum = get_arr.inject(:+)
    avg = sum / $count
  end

  def self.display_avg(val)
    avg = val
    puts "Average of points is: #{avg}"
  end

  def display
    $count = $count + 1
     puts "…………………………… Customer: #{$count} Id: #{@id}  Name: #{@name} Points: #{@points} Group: #{@group} "
  end
end

class Test
  def display
    arr = []
    c = []
    c0 = Customer.new(1543, 'Nimal')
    c0.add_points(129)
    arr << c0.points
    c0.compute_group(c0.points, 'metal')
    c0.display
    c << c0
    c1 = Customer.new(6561, 'Saman')
    c1.add_points(785)
    # b = c1.upgrade_points(2)
    arr << c1.points
    c1.compute_group(c1.points, 'metal')
    c1.display
    c << c1
    c2 = Customer.new(6954, 'Kasun')
    a = c2.add_points(3258)
    arr << c2.points
    c2.compute_group(c2.points, 'metal')
    c2.display
    c << c2
    c3 = Customer.new(3485, 'Nayana')
    c3.add_points(59)
    arr << c3.points
    c3.compute_group(c3.points, 'metal')
    c3.display
    c << c3
    c4 = Customer.new(8546, 'Kalpa')
    arr1 = c4.add_points(1652)
    arr << c4.points
    c4.compute_group(c4.points, 'metal')
    c << c4
    c[4].display
    arr1 = c4.add_points(5000)
    arr << c4.points
    c4.compute_group(arr1, 'suren')
    c4.display
    a = Customer.calAvg(arr)
    Customer.display_avg(a)
    Customer.getbest(arr)
    cust = Customer.new(1543, 'Nimal')
    cust = c3
    cust.remove_points(50)
    cust.display
    cust1 = Customer.new(1, 'suren')
    cust1 = cust
    cust1 = nil
  end
end
t = Test.new
t.display
