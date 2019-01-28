		o_father.x = 300;
		o_father.y = 20;
		switch(o_father.finale) {
			case 1:
				o_father.sprite_index = s_father_rich;
				instance_create_layer(250,700, "New", o_leave_home);
			break;
			case 2:
				o_father.sprite_index = s_father_poor;
				instance_create_layer(200,700, "New", o_home_taken);
			break;
			case 3:
				o_father.sprite_index = s_father_big;
				instance_create_layer(200,700, "New", o_stay_home);
			break;
		}
		o_mother.x = 800;
		o_mother.y = 20;
		switch(o_mother.finale) {
			case 1:
				o_mother.sprite_index = s_mother_rich;
				instance_create_layer(750,700, "New", o_leave_home);
			break;
			case 2:
				o_mother.sprite_index = s_mother_poor;
				instance_create_layer(700,700, "New", o_home_taken);
			break;
			case 3:
				o_mother.sprite_index = s_mother_big;
				instance_create_layer(700,700, "New", o_stay_home);
			break;
		}
		o_child.x = 1450;
		o_child.y = 200;
		switch(o_child.finale) {
			case 1:
				o_child.sprite_index = s_child_rich;
				instance_create_layer(1400,700, "Characters", o_leave_home);
			break;
			case 2:
				o_child.sprite_index = s_child_poor;
				instance_create_layer(1350,700, "Characters", o_home_taken);
			break;
			case 3:
				o_child.sprite_index = s_child_big;
				instance_create_layer(1350,700, "Characters", o_stay_home);
			break;
		}