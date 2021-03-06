#include "stdafx.h"

//------------------------------------------------------------------------------
//Copyright Robert Pelloni.
//All Rights Reserved.
//------------------------------------------------------------------------------


//#pragma once




Logger NDGameEngine::log = Logger("NDGameEngine");

//=========================================================================================================================
NDGameEngine::NDGameEngine()
{ //=========================================================================================================================

#ifdef _DEBUG
	log.debug("NDGameEngine()");
#endif

}
//=========================================================================================================================
NDGameEngine::~NDGameEngine()
{ //=========================================================================================================================
#ifdef _DEBUG
	log.debug("~NDGameEngine()");
#endif

}
//=========================================================================================================================
NDGameEngine::NDGameEngine(ND* nD)
{ //=========================================================================================================================

#ifdef _DEBUG
	log.debug("NDGameEngine(ND* nD)");
#endif
	this->nD = nD;
}

//=========================================================================================================================
void NDGameEngine::init()
{//=========================================================================================================================

	super::init();

#ifdef _DEBUG
	log.debug("NDGameEngine::init()");
#endif

	
}



void NDGameEngine::tryToCloseGame()
{ //=========================================================================================================================


	MiniGameEngine::tryToCloseGame();

	nD->setActivated(false);

	//override this!
}


