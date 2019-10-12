w = RES_W;
h = RES_H;
h_half = h * 0.5;
enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	PAUSE
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;