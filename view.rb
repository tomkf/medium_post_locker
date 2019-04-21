class View
  def list_all(info_from_repo)
    info_from_repo.each_with_index do |item, index|
      check_box = display_check_mark?(item)
      puts "#{index += 1} #{check_box} - #{item.post_title} (#{item.post_author})"
    end
  end

  def get_pathway
    puts 'Enter the extention of the url: (e.g, everything after the .com)'
    user_input = gets.chomp
    user_input
  end

  def select
    puts 'Select the articles index'
    user_input = gets.chomp.to_i
    user_input -= 1
  end

  def read_post(instance)
    puts instance.content
  end

  def display_check_mark?(instance)
    check_box = '[]'
    check_box == '[X]' if instance.check_mark
    check_box
  end
end
