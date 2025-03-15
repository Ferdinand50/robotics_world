#ifndef SCREEN_H
#define SCREEN_H

#include <stdio.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>

class Screen {
public:
    Screen(int _SCREEN_WIDTH, int _SCREEN_HEIGHT);
    ~Screen();
    void display();
    void quit();

private:
    bool load_media();
    void handle_input();
    void prepare_scene();
    void present_scene();

private:
    const int _SCREEN_WIDTH;
    const int _SCREEN_HEIGHT;
    SDL_Window* _window;
    SDL_Renderer* _renderer;
    SDL_Surface* _surface;
};

#endif // SCREEN_H