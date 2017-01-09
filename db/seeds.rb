r1 = Role.create({name: "Teacher", description: "Can add merits and demerits"})
r2 = Role.create({name: "Admin", description: "Can create teachers and students and assign both to lessons"})
r3 = Role.create({name: "Default", description: "Default user role"})

u1 = User.create({title: "Mr", firstname: "Admin", lastname: "One", email: "adminone@archten.com", password: "password", password_confirmation: "password", role_id: r2.id})
u2 = User.create({title: "Miss", firstname: "Teacher", lastname: "Two", email: "teachertwo@archten.com", password: "password", password_confirmation: "password", role_id: r1.id})

l1 = Lesson.create({name: "A2 Maths", user_id: u2.id})
l2 = Lesson.create({name: "AS Maths", user_id: u2.id})

s1 = Student.create({firstname: "Mike", lastname: "Crengle", lesson_id: l1.id})
s2 = Student.create({firstname: "Lisa", lastname: "Crengle", lesson_id: l1.id})
s3 = Student.create({firstname: "Hal", lastname: "Bleach", lesson_id: l2.id})
s4 = Student.create({firstname: "Dave Jr", lastname: "Crengle", lesson_id: l2.id})