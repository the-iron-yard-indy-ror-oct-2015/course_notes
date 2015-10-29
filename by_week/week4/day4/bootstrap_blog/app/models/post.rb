 class Post

   attr_accessor :id, :title, :body, :summary, :author, :created_at

   def initialize(args)
     self.id = args[:id]
    self.title = args[:title]
    self.body = args[:body]
    self.summary = args[:summary]
    self.author = args[:author]
    self.created_at = args[:created_at]
   end

   def self.all
     5.times.collect{|num| Post.new(:id => num + 1, :title => "Post No. #{num + 1}")}
   end

   def self.find(id)
    all.select{|x| x.id == id}.first
   end

 end
