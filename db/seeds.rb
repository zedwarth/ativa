# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.destroy_all
Phase.destroy_all
Post.destroy_all
User.destroy_all

users = [
  {first_name: "Bat", user_name: 'batman', profile_pic: 'https://s3.amazonaws.com/mks_learn_app/batman.jpg'},
  {first_name: "Cat", user_name: 'catwoman', profile_pic: 'https://s3.amazonaws.com/mks_learn_app/catwoman.jpg'}
]

users.each do |user|
  User.create(
    first_name: user[:first_name],
    user_name: user[:user_name],
    password: 'password',
    profile_pic: user[:profile_pic]
  )
end

phases = ['onboarding','creative', 'design', 'development', 'implementation']

phases.each do |phase|
  Phase.create(name: phase)
end

projects = [
  'Bird Watch',
  'GameStarter',
  'Prepify',
  'Mission Impossible',
  'Bring Up',
  'Harsh on Internet',
  'Matt is Better',
  'MakerSquare'
]

projects.each do |project|
  Project.create(name: project, phase_id: Phase.first.id)
end

messages = [
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.",
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.",
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.",
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod."
]

attachments = [
  "http://www.cran.r-project.org/doc/manuals/R-intro.pdf",
  "http://www.cran.r-project.org/doc/manuals/R-intro.pdf",
  "http://www.cran.r-project.org/doc/manuals/R-intro.pdf",
  "http://www.cran.r-project.org/doc/manuals/R-intro.pdf"
]

Project.all.each do |project|
  Phase.all.each do |phase|
    10.times do |num|
      Post.create(
        message: messages[rand(4)],
        attachment: attachments[rand(4)],
        title: "#{phase.name.capitalize} Revision #{num + 1}",
        project_id: project.id,
        phase_id: phase.id,
        user_id: User.first.id
      )
    end
  end
end