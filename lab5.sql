USE sakila;

select count(*) as num_copies_of_hunchback_impossible from inventory i
join film f on i.film_id = f.film_id
where f.title = 'Hunchback Impossible';

select title, length from film
where length > (select avg(length) from film);

select a.first_name, a.last_name from actor a
join film_actor fa on a.actor_id = fa.actor_id
join film f on fa.film_id = f.film_id
where f.title = 'Alone Trip';
