namespace :posts do

  desc 'Create faker posts'
  task create: :environment do
    Usuario.all.each do |usuario|
      rand(3..15).times do
        post = Post.create(
          title: Faker::Lorem.sentence,
          content: Faker::Lorem.sentences.join(' '),
          usuario:
        )
  
        if post
          puts "Post #{post.title} created"
        end
      end
    end
  end

end
