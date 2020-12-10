delete from user_role;
delete from usr;

insert into usr(id, username, password, active) values
(1, 'ad', '$2a$08$aKGp64xgFQ3Gmv3200B8wOplC3YjVB5r.J7mwwk4/FflYcAXy0GFS', true),
(2, 'cobara', '$2a$08$g0RODHsxp3tUfY/veXVQK.I5TL4hx9eHTpMOlhoduRIJRrIe.YDF2', true);

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');