function box = generate_box_stream()

box.length = 0.2 + rand()*0.2;   % 0.2m to 0.4m
box.width  = 0.15 + rand()*0.15;
box.height = 0.1 + rand()*0.2;
box.weight = 1 + rand()*9;

end