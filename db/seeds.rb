Caregiver.destroy_all
Child.destroy_all
Family.destroy_all

family1 = Family.create(display_name: 'Johnson Family', location_actual: 'location 1', location_display: 'close to location 1')
family2 = Family.create(display_name: 'Davis Family', location_actual: 'location 2', location_display: 'close to location 2')

caregiver1 = Caregiver.create(email: 'dad@whatever.com', password: '', first_name: 'Dad', last_name: 'Johnson', family_id: family1.id)
caregiver2 = Caregiver.create(email: 'mom@whatever.com', password: '', first_name: 'Mom', last_name: 'Johnson', family_id: family1.id)
caregiver3 = Caregiver.create(email: 'grandma@whatever.com', password: '', first_name: 'Grandma', last_name: 'Davis', family_id: family2.id)

child1 = Child.create(
    first_name: 'son1',
    birthdate: '01/01/2011',
    give: true,
    give_gender_preference: 'male',
    receive: false,
    receive_gender_preference: '',
    family_id: family1.id)
child2 = Child.create(
    first_name: 'daughter1',
    birthdate: '06/15/2015',
    give: true,
    give_gender_preference: 'female',
    receive: true,
    receive_gender_preference: 'female',
    family_id: family1.id)
child3 = Child.create(
    first_name: 'son1',
    birthdate: '12/01/2014',
    give: true,
    give_gender_preference: 'male',
    receive: true,
    receive_gender_preference: 'male',
    family_id: family2.id)
child4 = Child.create(
    first_name: 'son2',
    birthdate: '03/10/2016',
    give: true,
    give_gender_preference: 'male',
    receive: true,
    receive_gender_preference: 'male',
    family_id: family2.id)
