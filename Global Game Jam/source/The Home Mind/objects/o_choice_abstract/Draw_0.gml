/// @description Draw the choice

draw_sprite(sprite_index, 0, x, y);
draw_text_transformed(x + 5, y + 5, choiceMade, 0.75, 0.75, 0);

draw_text_transformed(o_manager.character.x -200,o_manager.character.y +40,"Right Click To Go Back", 2, 2, 0);