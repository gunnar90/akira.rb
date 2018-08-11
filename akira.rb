movies = { akira: 10 }

puts "What is your favorite movie?"
choice = gets.chomp

case choice
  when "add"
  puts "Insert title"
  title = gets.chomp
  puts "Insert rating"
  rating = gets.chomp
  if movies[title.to_sym].nil?
  movies[title.to_sym] = rating.to_i
    puts "Pair added!"
  else puts "movie already exists in system!"
  end
  when "update"
  puts "insert title"
  title = gets.chomp
  if movies[title.to_sym].nil?
	puts "movie not in system!"
  else puts "Insert rating"
  rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
  when "display"
 movies.each do | title, rating | puts "#{title}: #{rating}"
  end
  when "delete"
  puts "Insert title"
  title = gets.chomp
  if movies[title.to_sym].nil?
  puts "Error!"
  else
    movies.delete(title)
  end
end
