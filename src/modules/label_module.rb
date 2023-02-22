require_relative '../classes/label'

module LabelModule
  def find_labels
    puts 'Labels: '
    if @labels.empty?
      puts "\nNo labels added yet. Please add some . . . "
    else
      @labels.each_with_index do |label, index|
        puts "[Label #{index + 1}]. Title : #{label.title}, Color : #{label.color}"
      end
    end
  end

  def add_a_label
    puts 'Please enter the title of the label: '
    title = gets.chomp

    puts 'Please enter the color of the label: '
    color = gets.chomp

    label = Label.new(title, color)

    @labels.push(label)
    item = add_item
    item.add_label(label)

    puts "Label created with #{item.title} item added successfully!"
  end
end
