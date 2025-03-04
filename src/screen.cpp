#include <iostream>
#include "screen.h"

Screen::Screen(int _width, int _height) : _width(_width), _height(_height) {
    // returns zero on success else non-zero
    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        printf("error initializing SDL: %s\n", SDL_GetError());
        exit(1);
    }
    _win = SDL_CreateWindow("GAME", // creates a window
                                    SDL_WINDOWPOS_CENTERED,
                                    SDL_WINDOWPOS_CENTERED,
                                    1000, 1000, 0);
    Uint32 render_flags = SDL_RENDERER_ACCELERATED;
    // creates a renderer to render our images
    // TODO: delete renderer
    _rend = SDL_CreateRenderer(_win, -1, render_flags);

}

Screen::~Screen() {
}

void Screen::display() {
    SDL_Delay(3000);
    std::cout << "Displaying screen of size " << _width << "x" << _height << std::endl;
}

void Screen::quit() {
    SDL_DestroyWindow(_win);
    SDL_Quit();
    std::cout << "Quitting" << std::endl;
}
