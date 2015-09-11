
def exec_problem(int,num=1)
  time1=Time.now
  case int
  when 1
    puts problem1(num)
  when 2
    puts problem2(num)
  when 3
    puts problem3(num)
  when 4
    puts problem4(num)
  else
    puts problem1(num)
  end
  puts "Time to execute: " + ((Time.now - time1)*1000).to_s + " ms"
end


#Problem1
def problem1(int = 1000)
    sum = 0
    for i in 2..int
        sum += i if (i%3 == 0 || i%5 == 0)
    end
    sum
end

#problem2
def problem2(int = 1000)
  fibo1 = 1
  fibo2 = 2
  placeholder = 0
  sum = 0
  iter = 0
  until fibo2 > int
    sum += fibo2 if fibo2.even?
    placeholder = fibo2
    fibo2 += fibo1
    fibo1 = placeholder
  end
  sum
end

def problem3(int = 13195)
  counter = 0
  largest_prime = 1
  factors = []
  until (int==1)
    largest_prime += 1
    while (int%largest_prime == 0)
      factors.push(largest_prime)
      int /= largest_prime
    end
  end
  p factors
  largest_prime
end

exec_problem(1,1000)
exec_problem(2,4000000)
exec_problem(3,600851475143)
