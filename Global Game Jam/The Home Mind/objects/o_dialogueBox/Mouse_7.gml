/// @description Go on with the dialogue

// There is a dialog right now
if(isVisible == true) {
// The dialogue has ended
	if(i >= array_length_1d(log)) {
		isVisible = false;
	}
// The dialogue continues
	else{
		currentLog = log[i];
		i++;
	}
}
// There is no dialog now
else {
	i = 1;
}