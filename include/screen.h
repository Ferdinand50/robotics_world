#ifndef SCREEN_H
#define SCREEN_H

#include <stdio.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>

class Screen {
public:
    Screen(int _width, int _height);
    ~Screen();
    void display();
    void quit();

private:
    int _width;
    int _height;
    SDL_Window* _win;
    SDL_Renderer* _rend;
};

#endif // SCREEN_H