#include <iostream>
#include "screen.h"

Screen::Screen(int _SCREEN_WIDTH, int _SCREEN_HEIGHT) : _SCREEN_WIDTH(_SCREEN_WIDTH), _SCREEN_HEIGHT(_SCREEN_HEIGHT) {
    // returns zero on success else non-zero
    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        printf("error initializing SDL: %s\n", SDL_GetError());
        exit(1);
    }
    _window= SDL_CreateWindow("GAME", // creates a window
                                    SDL_WINDOWPOS_CENTERED,
                                    SDL_WINDOWPOS_CENTERED,
                                    _SCREEN_WIDTH, _SCREEN_HEIGHT, 0);
    if( _window == NULL )
    {
        printf( "Window could not be created! SDL_Error: %s\n", SDL_GetError() );
        exit(1);
    }

    SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "linear");

    //TODO: continue here

    //Get window surface
    _surface = SDL_GetWindowSurface(_window);

    //Fill the surface white
    SDL_FillRect(_surface, NULL, SDL_MapRGB(_surface->format, 0xFF, 0xFF, 0xFF ) );
    
    //Update the surface
    SDL_UpdateWindowSurface(_window);

    //Hack to get window to stay up
    SDL_Event e; bool quit=false; while(quit==false) {while(SDL_PollEvent(&e) ){if(e.type==SDL_QUIT) quit=true;}}
    Uint32 render_flags = SDL_RENDERER_ACCELERATED;
    
    // creates a renderer to render our images
    _renderer = SDL_CreateRenderer(_window, -1, render_flags);
}

Screen::~Screen() {
    //Destroy window, surface and renderer should be destroyed by window
    SDL_DestroyWindow(_window);

    //Quit SDL subsystems
    SDL_Quit();
}

void Screen::display() {
    SDL_Delay(3000);
    std::cout << "Displaying screen of size " << _SCREEN_WIDTH << "x" << _SCREEN_HEIGHT << std::endl;
}

bool Screen::load_media()
{
    //Loading success flag
    bool success = true;

    //Load splash image
    SDL_Surface*  _image_surface = SDL_LoadBMP( "path to image" );
    if( _image_surface == NULL )
    {
        printf( "Unable to load image %s! SDL Error: %s\n", "path to image", SDL_GetError() );
        success = false;
    }

    return success;
}

void Screen::handle_input() {
    SDL_Event event;

    while (SDL_PollEvent(&event))
    {
        switch (event.type)
        {
            case SDL_QUIT:
                exit(0);
                break;
            default:
                break;
        }
    }
}

void Screen::prepare_scene()
{
    SDL_SetRenderDrawColor(_renderer, 96, 128, 255, 255);
    SDL_RenderClear(_renderer);
}

void Screen::present_scene()
{
    SDL_RenderPresent(_renderer);
}

// TODO: destructor and quit function are similar
void Screen::quit() {
    SDL_DestroyWindow(_window);
    SDL_Quit();
    std::cout << "Quitting" << std::endl;
}
