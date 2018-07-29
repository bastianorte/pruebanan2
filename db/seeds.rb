User.delete_all
Task.delete_all
UserTask.delete_all



User.create(
photo: 'https://loremflickr.com/100/100/dog',
name: 'Bastian',
email: 'bastian@bastian.com',
password:123456 )
puts "usuario creado"

12.times do |i|
  Task.create!(name: Faker::Job.field,
    photo: "https://picsum.photos/400/400/?image=#{i+1}"
  )
end
puts "tarea creada"

10.times do |i|
  User.create(
    name: Faker::Name.first_name,
    email: "#{Faker::Name.first_name}@gmail.com",
    photo: "https://loremflickr.com/100/100?lock=#{1+i}",
    password:123456
  )
end
puts "10 usuarios creados"

20.times do |i|
UserTask.create(user: User.all.sample,
  task: Task.all.sample,
  check: [true, false].sample)
end
puts "20 listas creadas"
