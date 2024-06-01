    def palindrome_recursive(string)
        if string.length == 0 || string.length == 1
            true
        elsif string[0] == string[-1]
            palindrome_recursive(string[1..-2])
        else
            false
        end
    end

    def recursive_beers(n)
        return "no more beers on the wall" unless n > 0
        puts "#{n} beers on the wall"
        recursive_beers(n-1)
    end

    def fib(n)
        if n == 0
          0
        elsif n == 1
          1
        else
          fib(n-1) + fib(n-2)
        end
      end