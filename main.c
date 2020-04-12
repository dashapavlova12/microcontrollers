#include "game.h"

int main(void)
{
    initializeAll ();

    STATE = START_SCREEN;

    startScreen();

    while (1) {
        initModels();
        countdown();
        game();
        endGame();
    }
}
