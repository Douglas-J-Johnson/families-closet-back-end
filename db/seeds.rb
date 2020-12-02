Caregiver.destroy_all
Child.destroy_all
Family.destroy_all

family1 = Family.create(display_name: 'Johnson Family', location_actual: 'location 1', location_display: 'close to location 1')
family2 = Family.create(display_name: 'Davis Family', location_actual: 'location 2', location_display: 'close to location 2')

caregiver1 = Caregiver.create(username: 'dad1', password: '', first_name: 'Dad', last_name: 'Johnson', family_id: family1.id)
caregiver2 = Caregiver.create(username: 'mom1', password: '', first_name: 'Mom', last_name: 'Johnson', family_id: family1.id)
caregiver3 = Caregiver.create(username: 'grandma1', password: '', first_name: 'Grandma', last_name: 'Davis', family_id: family2.id)

child1 = Child.create(first_name: 'son1', gender: 'male', birthdate: '1/1/2011', family_id: family1.id)
child1 = Child.create(first_name: 'daughter', gender: 'female', birthdate: '6/15/2015', family_id: family1.id)
child1 = Child.create(first_name: 'son1', gender: 'male', birthdate: '12/1/2014', family_id: family2.id)
child1 = Child.create(first_name: 'son2', gender: 'male', birthdate: '3/10/2016', family_id: family2.id)
