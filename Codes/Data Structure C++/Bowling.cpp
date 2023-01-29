/*****************
 * Bowling Score *
 *****************/

#include <iostream>

using namespace std;

int main(int argc, char** argv) {

int frame[10][3] = {{0,0},
                    {0,0},
                    {0,0},
                    {0,0},
                    {0,0},
                    {0,0},
                    {0,0},
                    {0,0},
                    {0,0},
                    {0,0,0}};
int frameOutcome[10];
int frameTotal[10];
int currentFrame = 0;
int totalScore = 0;

cout<<"\tWELCOME TO BILGISAYAR MUH BOWLING\n\n";

do
{

    cout << "Input roll 1 for frame number " << currentFrame + 1 << endl;
    cin >> frame[currentFrame][0];
    cout << endl;

    if (frame[currentFrame][0] == 10)
    {
        cout << "STRIKE" << endl;
        frameOutcome[currentFrame] = 2;
        currentFrame++;
    }
    else
    {
        cout << "Input roll 2 for frame number " << currentFrame + 1 << endl;
        cin >> frame[currentFrame][1];
        cout << endl;

        if (frame[currentFrame][0] + frame[currentFrame][1] == 10)
        {
            cout << "SPARE!" << endl;
            frameOutcome[currentFrame] = 1;
            currentFrame++;
        }
        else
        {
            cout << "The total for frame " << currentFrame + 1 <<
            " is: " << frame[currentFrame][0] + frame[currentFrame][1] << endl;
            frameOutcome[currentFrame] = 0;
            currentFrame++;
        }
    }
}
while (currentFrame < 9);

do
{

    cout << "Input roll 1 for frame number " << currentFrame + 1 << endl;
    cin >> frame[currentFrame][0];
    cout << endl;

    if (frame[currentFrame][0] == 10)
    {
        cout << "STRIKE" << endl;
        frameOutcome[currentFrame] = 2;
        cout << "Input roll 2 for frame number " << currentFrame + 1 << endl;
        cin >> frame[currentFrame][1];
        cout << endl;
        cout << "Input roll 3 for frame number " << currentFrame + 1 << endl;
        cin >> frame[currentFrame][2];
        cout << endl;
        currentFrame++;
    }
    else
    {
        cout << "Input roll 2 for frame number " << currentFrame + 1 << endl;
        cin >> frame[currentFrame][1];
        cout << endl;

        if (frame[currentFrame][0] + frame[currentFrame][1] == 10)
        {
            cout << "SPARE!" << endl;
            frameOutcome[currentFrame] = 1;
            cout << "Input roll 3 for frame number " << currentFrame + 1 << endl;
            cin >> frame[currentFrame][2];
            cout << endl;
            currentFrame++;
        }
        else
        {
            cout << "The total for frame " << currentFrame + 1 <<
            " is: " << frame[currentFrame][0] + frame[currentFrame][1] << endl;
            frameOutcome[currentFrame] = 0;
            currentFrame++;
        }
    }
}
while (currentFrame < 10);

for (currentFrame = 0; currentFrame < 8 ; currentFrame++)
{
    switch(frameOutcome[currentFrame])
    {
        case 0:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame][1];
        break;
        case 1:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame][1] +
        frame[currentFrame + 1][0];
        break;
        case 2:
        if(frameOutcome[currentFrame + 1] == 2)
        {
            frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame + 1][0] +
            frame[currentFrame + 2][0];
        }
        else
        {
            frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame + 1][0] +
            frame[currentFrame + 1][1];
        }
        break;
    }
}

for (currentFrame = 8; currentFrame < 9 ; currentFrame++)
{
    switch(frameOutcome[currentFrame])
    {
        case 0:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame][1];
        break;
        case 1:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame][1] +
        frame[currentFrame + 1][0];
        break;
        case 2:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame + 1][0] +
        frame[currentFrame + 1][1];
        break;
    }
}

for (currentFrame = 9; currentFrame < 10 ; currentFrame++)
{
    switch(frameOutcome[currentFrame])
    {
        case 0:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame][1];
        break;
        case 1:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame][1] +
        frame[currentFrame][2];
        break;
        case 2:
        frameTotal[currentFrame] = frame[currentFrame][0] + frame[currentFrame][1] +
        frame[currentFrame][2];
        break;
    }
}

for (currentFrame = 0; currentFrame < 10 ; currentFrame++)
{
    totalScore = totalScore + frameTotal[currentFrame];

    cout << "Frame " << currentFrame + 1 << " Total score: " <<
    frameTotal[currentFrame];
    cout << endl;
}
    cout << "Total score = " << totalScore << endl;

system("PAUSE");
return 0;
}
