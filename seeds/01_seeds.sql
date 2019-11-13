-- USER DATA
INSERT INTO users (id, name, email, password)
  VALUES (1, 'Zach Sullivan', 'zachrandom@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  (2, 'James Baker', 'bakerrandom@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  (3, 'Holly McNair', 'hollyrandom@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- PROPERTIES DATA
INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
  VALUES (1, 1, 'Title1', 'description1', 'thumbnail photo', 'cover photo', 500, 3, 5, 4, 'Canada', 'Marine Drive', 'West Vancouver', 'BC', 'A4B 1C1', true),
  (2, 1, 'Title2', 'description2', 'thumbnail photo', 'cover photo', 250, 1, 2, 2, 'Canada', 'Walnut Street', 'Vancouver', 'BC', 'Z4B 1C2', true),
  (3, 2, 'Title3', 'description3', 'thumbnail photo', 'cover photo', 150, 1, 1, 1, 'Canada', 'Homer Street', 'Vancouver', 'BC', 'G4B 9C1', true);

-- RATES DATA
INSERT INTO rates (id, start_date, end_date, cost_per_night, property_id)
  VALUES (1, '2019-12-01', '2019-12-20', 500, 1),
  (2, '2019-12-10', '2019-12-30', 250, 2),
  (3, '2020-01-01', '2020-02-01', 150, 3);

-- RESERVATIONS DATA
INSERT INTO reservations (id, start_date, end_date, property_id, guest_id)
  VALUES (1, '2019-11-14', '2019-11-20', 1, 1),
  (2, '2019-11-14', '2019-11-20', 2, 2),
  (3, '2020-11-14', '2020-11-20', 3, 3);

-- PROPERTY REVIEWS DATA
INSERT INTO property_reviews (id, rating, message, guest_id, reservation_id, property_id)
  VALUES (1, 5, 'message', 1, 1, 1),
  (2, 4, 'message', 2, 2, 2),
  (3, 3, 'message', 3, 3, 3);

-- GUEST REVIEWS DATA
INSERT INTO guest_reviews (id, rating, message, guest_id, owner_id, reservation_id)
  VALUES (1, 5, 'message', 1, 1, 1),
  (2, 5, 'message', 2, 2, 2),
  (3, 5, 'message', 3, 3, 3);