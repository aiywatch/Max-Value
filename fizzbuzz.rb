def fizzbuzz(s, e)
  s.upto(e) do |i|
    puts "FizzBuzz" if i%5 == 0 && i%3 == 0
    puts "Buzz" if i%5 == 0
    puts "Fizz" if i%3 == 0
    puts i if i%5 != 0 && i%3 != 0

    # case
    # when i%5 == 0 && i%3 == 0
    #     puts "FizzBuzz"
    #   when i%5 == 0
    #     puts "Buzz"
    #   when i%3 == 0
    #     puts "Fizz"
    #   else
    #     puts i
    # end

    # if i % 5 == 0 && i % 3 == 0
    #   puts "FizzBuzz"
    # elsif i % 5 == 0
    #   puts "Buzz"
    # elsif i % 3 == 0
    #   puts "Fizz"
    # else
    #   puts i
    # end
  end
end

fizzbuzz(1, 100)