//
// GWEN
// Copyright (c) 2013-2015 James Lammlein
// Copyright (c) 2011 BQ
// Copyright (c) 2010 Facepunch Studios
//
// This file is part of GWEN.
//
// MIT License
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#pragma once

#include "Gwen/Controls/Canvas.h"
#include "Gwen/Input/gwen_input_base.h"

#include "SDL.h"

namespace Gwen
{
namespace Input
{

/// \brief This class represents an SDL2 input system.
class GwenSDL2
{
public:
    /// \brief Constructor.
    GwenSDL2();

    /// \brief Initializes the input system.
    void Initialize(Controls::Canvas* canvas);

    /// \brief Processes an event.
    bool ProcessEvent(const SDL_Event& the_event);

protected:
    /// \brief A helper function to process an accelerator character.
    bool _ProcessAccelerator(char character, const SDL_KeyboardEvent& keyboard_event);

    /// \brief A pointer to the canvas.
    Controls::Canvas* _canvas;
};

}; // namespace Input

}; // namespace Gwen
