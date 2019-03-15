def input_students
  puts "Please enter the names of the students and their cohort"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chop
  cohort = gets.chomp.to_sym
  cohort = :january if cohort.empty?
  while !name.empty? do
    students << {name: name, cohort: cohort, hobbie: :coding}
    if students.length == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets.chomp
    cohort= gets.chomp
  end
  students
end

def print_header
  puts "The students of Villians Academy".center(120)
  puts "-------------".center(120)
end

def print(students)
  if students.length != 0
    students.each_with_index do |student, index|
      puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort) hobbie: #{student[:hobbie]}".center(120)
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(120)
end

def print_letter(students)
  puts "Enter a letter:"
  letter = STDIN.gets.chomp
  counter = 0

  while counter <= students.length
    if student[:name][0] == letter
      puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)"
      counter += 1
    end
  end
end

def print_length(students)
  # NEED TO REVISIT
  puts "Enter a number:"
  number = STDIN.gets.chomp

  students.each_with_index do |student, index|
      if student[:name].length == number
        puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)"
      end
  end
end

def print_by_cohort(students)
  #NEED TO REVISIT
  puts "Enter a cohort"
  chosen_cohort = gets.chomp.to_sym
  # students.map { |hash| hash[:cohort] == chosen_cohort  }
  students.each_with_index do |student, index|
    if :cohort == chosen_cohort
      puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort) hobbie: #{student[:hobbie]}".center(120)
    end
  end
end

students = input_students
print_header
print(students)
print_footer(students)
