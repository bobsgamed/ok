//------------------------------------------------------------------------------
//Copyright Robert Pelloni.
//All Rights Reserved.
//------------------------------------------------------------------------------

#pragma once
#include "bobtypes.h"
class Logger;


class ScreenSprite : public Entity
{
public:

	static Logger log;

	float screenXPixelsHQ = 0;
	float screenYPixelsHQ = 0;

	bool useXPercent = false;
	bool useYPercent = false;

	float screenXPercent = 0;
	float screenYPercent = 0;

	bool centerX = false;
	bool centerY = false;

	ScreenSprite(Engine* g, const string& name, const string& spriteName);

	virtual float getScreenLeft() override;

	virtual float getScreenTop() override;

	virtual void setX(float x) override;

	virtual void setY(float y) override;

	void setXPercent(float x);

	void setYPercent(float y);

	virtual float getWidth() override;

	virtual float getHeight() override;

	void checkIfOnscreen();

	virtual bool shouldDraw() override;

	virtual void deleteFromMapEntityListAndReleaseTexture() override;

	virtual void render(float alpha, BobTexture* texture, BobTexture* shadowTexture) override;
};

