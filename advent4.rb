#372304-847060
require 'pry'

def how_many()

  accept = true
  accepted=[]
  #372304..847060
  for i in (372304..847060) do
    accept = true
    #without that everytime true was getting set to false, when it went through the next loop it would still
    #be false
    #adding the line above made sure it was reset to true with every iteration
    for j in (1..5) do
      if !(i.to_s[j-1] <= i.to_s[j])
        accept = false
      end
    end

    if accept==true
      accept=false
      for j in (1..5) do
        if (i.to_s[j-1] == i.to_s[j])
          accept = true
        end
      end
    end

    if accept==true
      accepted.push(i)
    end

  end

  return accepted

end

how_many()

def extra_criteria(array)
  final = []

  array.each do |num|
    #11XXXX
    # num.to_s[0]==num.to_s[1] && !num.to_s[0]==num.to_s[2]
    # num.to_s[1]==num.to_s[2] && !num.to_s[1]==num.to_s[0] && !num.to_s[1]==num.to_s[3]
    # num.to_s[3]==num.to_s[4] && !num.to_s[3]==num.to_s[5] && !num.to_s[3]==num.to_s[2]
    # num.to_s[4]==num.to_s[5] && !num.to_s[4]==num.to_s[6] && !num.to_s[4]==num.to_s[3]
    # num.to_s[5]==num.to_s[6] && !num.to_s[5]==num.to_s[4]
    for j in (0..4) do

      if j==0 && num.to_s[j]==num.to_s[j+1] && !(num.to_s[j]==num.to_s[j+2]) ||
      j==4 && num.to_s[j]==num.to_s[j+1] && !(num.to_s[j]==num.to_s[j-1]) ||
      num.to_s[j]==num.to_s[j+1] && !(num.to_s[j]==num.to_s[j+2]) && !(num.to_s[j]==num.to_s[j-1])
          final.push(num)
          break
      end

    end


  end
  puts "final size =", final.size
end

checking = how_many()
extra_criteria(checking)
