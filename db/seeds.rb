User.create(username: "SeeYouSpaceCowboy", password: "Password", password_confirmation: "Password", first_name: "Spike", last_name: "Spiegel")
User.create(username: "SecretService", password: "Password", password_confirmation: "Password", first_name: "James", last_name: "Bond")
User.create(username: "X-Men", password: "Password", password_confirmation: "Password", first_name: "Logan", last_name: "Howlett")

Follow.create(follower_id: 1, following_id: 3)
Follow.create(follower_id: 2, following_id: 3)
Follow.create(follower_id: 3, following_id: 2)

Video.create(title: "Aboard the Bebop", url: "http://www.youtube.com", user_id: 1)
Video.create(title: "X-Men Academy New Student Arrival", url: "http://www.youtube.com", user_id: 3)
Video.create(title: "Government Advertisement", url: "http://www.youtube.com", user_id: 2)
Video.create(title: "New London House", url: "http://www.youtube.com", user_id: 2)
