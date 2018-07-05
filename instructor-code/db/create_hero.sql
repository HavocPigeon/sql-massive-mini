insert into heroes (name, street_name, age, powers, picture_url) values (${name}, ${streetName}, ${age}, ${powers}, ${pictureUrl})
returning *;