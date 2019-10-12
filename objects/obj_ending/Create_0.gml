gun_sprite = layer_sprite_get_id("Title_assets", "g_gun");
if(global.has_gun && global.kills > 0){
	end_text[0] = "So, you are cruel";
	end_text[1] = "You have killed " + string(global.kills) + " bad people";
	end_text[2] = "I dont think thats rally bad";
	end_text[3] = "Because the were shooting to you";
	end_text[4] = "Congratulations";
	end_text[5] = "Thank you";
	end_text[6] = "The end.";
}
else{
	layer_sprite_destroy(gun_sprite);
	end_text[0] = "You are so kind";
	end_text[1] = "You didn't murdered anyone";
	end_text[2] = "Congratulations";
	end_text[3] = "Thank you";
	end_text[4] = "The end.";
}

spd = 0.5;
letters = 0;
current_line = 0;
length = string_length(end_text[current_line]);
text = "";