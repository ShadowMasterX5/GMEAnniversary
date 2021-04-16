draw_sprite_ext(sprite_index,-1,round(x),round(y),1,1,0,c_white,1);

//Sets the font.
draw_set_font(global.font_message);

//Draws the text of the letter.
draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+40,"Hello!#"
+ "Welcome to the newest version #"
+ "of Gatete Mario Engine #"
+ " #"
+ "This engine was written by #"
+ "the GMEngine Team. #"
+ " #"
+ "There's a lot of features on #"
+ "this engine, some of them never #"
+ "seen before in a fangame. #"
+ " #"
+ "I hope you enjoy this engine as #"
+ "us programming it. #"
+ " #"
+ " #"
+ " #"
+ "        - The GMEngine Team -", c_black, c_black, 1, 1, 0.25, 1);

