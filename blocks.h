//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",		"~/.local/src/dwmblocks/keymap.sh",		 0,			20},
	{"", 		"~/.local/src/dwmblocks/corona-lt.sh",		 3600, 			0},	
	{"", 		"~/.local/src/dwmblocks/sound.sh",		 0, 			10},	
	{"", 		"~/.local/src/dwmblocks/uptime.sh", 		 60, 			0},	
	{"", 		"~/.local/src/dwmblocks/time.sh", 		 60, 			0},	
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
