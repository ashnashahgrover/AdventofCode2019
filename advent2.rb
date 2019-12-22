require 'pry'



main_code = [1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,6,19,1,9,19,23,2,23,10,27,1,27,5,31,1,31,6,35,1,6,35,39,2,39,13,43,1,9,43,47,2,9,47,51,1,51,6,55,2,55,10,59,1,59,5,63,2,10,63,67,2,9,67,71,1,71,5,75,2,10,75,79,1,79,6,83,2,10,83,87,1,5,87,91,2,9,91,95,1,95,5,99,1,99,2,103,1,103,13,0,99,2,14,0,0]


def computer(code)

  for i in (0..(code.size - 1)).step(4) do

    opcode = code[i]
    if opcode ===99
      return code
    end
    input1 = code[code[i+1]]
    input2 = code[code[i+2]]
    replace_position = code[i+3]

    if opcode===1
      code[replace_position] = input1 + input2
    elsif opcode === 2
      code[replace_position] = input1 * input2
    elsif opcode === 99
      return code
    else
      nil
    end


  end

end

# def test_values()
#   if computer(main_code)[0]===19690720
#     return [main_code[1] , main_code[2]]
#   end
# end

def determine_pair(main_code)
  #double for loop?
  test_code = main_code.clone

    for i in (0..99) do

      test_code[1] = i

      for i in (0..99) do
        test_code[2] = i
        computed = test_code.clone
        computer(computed)
        if computed[0]==19690720
          puts "When origin=19690720, noun= #{test_code[1]}, verb=#{test_code[2]}"

        end

      end

    end

end

determine_pair(main_code)
