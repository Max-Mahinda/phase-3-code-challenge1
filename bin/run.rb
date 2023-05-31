require_relative '../config/environment'
# Create instances and test the methods
author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")

magazine1 = Magazine.new("Magazine 1", "Category 1")
magazine2 = Magazine.new("Magazine 2", "Category 2")

author1.add_article(magazine1, "Article 1")
author1.add_article(magazine1, "Article 2")
author1.add_article(magazine2, "Article 3")
author2.add_article(magazine1, "Article 4")
author2.add_article(magazine2, "Article 5")
author2.add_article(magazine2, "Article 6")

puts "Author name: #{author1.name}"
puts "Author articles: #{author1.articles.map(&:title)}"
puts "Author magazines: #{author1.magazines.map(&:name)}"
puts "Author topic areas: #{author1.topic_areas}"

puts "Magazine name: #{magazine1.name}"
puts "Magazine category: #{magazine1.category}"
puts "Magazine contributors: #{magazine1.contributors.map(&:name)}"
puts "Magazine article titles: #{magazine1.article_titles}"
puts "Magazine contributing authors: #{magazine1.contributing_authors.map(&:name)}"
