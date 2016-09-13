select
user_id,
DATE(created_at) as day,
AVG(cost) as average_cost,
AVG(distance) as average_distance,
SUM(distance) as sum_distance,
array_agg(transport_type) as transport_types
  FROM trips
  GROUP BY DATE(created_at), user_id;

