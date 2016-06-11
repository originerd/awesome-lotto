import Enum

to_list(1..45)
|> shuffle
|> slice(0..5)
|> sort
|> join(", ")
|> IO.puts
