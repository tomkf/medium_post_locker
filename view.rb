class View

def list_all(info_from_repo)
info_from_repo.each_with_index do |item, index|
check_box = display_check_mark?(item)
puts "#{index += 1} #{check_box} - #{item.post_title} (#{item.post_author})"
end
end




def get_pathway
puts "Enter the extention of the url: (e.g, everything after the .com)"
user_input = gets.chomp
return user_input
end


def check_off(info_from_repo)
puts "Index?"
user_input = gets.chomp.to_i
submit = info_from_repo[user_input -= 1]
end

def display_check_mark?(instance)
    check_box = "[]"
if instance.check_mark 
    check_box == "[X]"
end
return check_box
end

end





# 1. [x] - What’s your goal for learning to code? (Boris Paillard)
# 2. [ ] - Teaching Programming is Hard (Boris Paillard)
# 3. [ ] - This is what a developer looks like (Rebecca Menat)
# Index?
# > 2

# 1. [x] - What’s your goal for learning to code? (Boris Paillard)
# 2. [x] - Teaching Programming is Hard (Boris Paillard)
# 3. [ ] - This is what a developer looks like (Rebecca Menat)