//------------------------------------------------------------------------------
//Copyright Robert Pelloni.
//All Rights Reserved.
//------------------------------------------------------------------------------


#pragma once
#include "bobtypes.h"
class Logger;


#include "StadiumScreen.h"

class StadiumScreen;

class BobsGameStadium : public BobsGame
{
private:
	typedef BobsGame super;
public:
	static Logger log;

	StadiumScreen* stadiumScreen = nullptr;
	Area* area = nullptr;


	BobsGameStadium();
	~BobsGameStadium();
	void init() override;
	BobsGameStadium(StadiumScreen* stadiumScreen, Area* area);


	virtual void shakeSmall() override;
	virtual void shakeHard() override;

	virtual void titleMenuUpdate() override;

	virtual void tryToCloseGame() override;

	

};

