
o_player.keys++;

f_used();

obj = instance_create_layer(x,y,"GUI",o_float_text);
obj.value = "+1 key";
obj.type = "key";

instance_destroy();