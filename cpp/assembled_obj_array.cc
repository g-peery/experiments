// g++ -Og -W -Wall -std=c++14 -S assembled_obj_array.cc
#include <cstdlib>
#include <iostream>

using namespace std;

enum Suit {
    CLUBS = 0x2663,
    DIAMONDS = 0x2662,
    HEARTS = 0x2661,
    SPADES = 0x2660
};

string GetSuitString(const Suit& suit) {
    string ret;
    switch(suit) {
        case CLUBS:
            ret = "Clubs";
            break;
        case DIAMONDS:
            ret = "Diamonds";
            break;
        case HEARTS:
            ret = "Hearts";
            break;
        case SPADES:
            ret = "Spades";
            break;
        default:
            ret = "Unknown";
    }
    return ret;
}

class PlayingCard {
    Suit suit;
    string rank;
    void SetRank(const int&);
public:
    PlayingCard(const Suit&, const int&);
    ~PlayingCard();
    friend ostream& operator<<(ostream&, const PlayingCard&);
};

ostream& operator<<(ostream& lhs, const PlayingCard& rhs) {
    return lhs << rhs.rank << " " << GetSuitString(rhs.suit);
}

// Constructor
PlayingCard::PlayingCard(const Suit& suit, const int& rank) {
    SetRank(rank);
    this->suit = suit;
}

// Destructor
PlayingCard::~PlayingCard() {
    cout << "*Whoosh* " << *this << endl;
}

// Given a rank in numeric form, sets private rank string.
void PlayingCard::SetRank(const int& rank) {
    if(2 <= rank && rank < 10) this->rank = '0' + rank;
    else if(rank == 10) this->rank = "10";
    else if(rank == 11) this->rank = "JACK";
    else if(rank == 12) this->rank = "QUEEN";
    else if(rank == 13) this->rank = "KING";
    else if(rank == 1) this->rank = "ACE";
    else this->rank = "?";
}

int main() {
    //--------------------------------------------------------------------------
    // EXPERIMENT
    // Setup:
    PlayingCard my_cards[] = {
        PlayingCard(HEARTS, 10), 
        PlayingCard(DIAMONDS, 1), 
        PlayingCard(SPADES, 3), 
        PlayingCard(CLUBS, 12) 
    };

    // Prediction:
    // In assembled code, will allocate stack space then call constructor for
    // each card and put into proper place. Output:
    // *Whoosh* 12 (Black Club)
    // *Whoosh* 3 (Black Spade)
    // *Whoosh* 1 (White Diamond)
    // *Whoosh* 10 (White Heart)

    // Result: Worked as expected
    //--------------------------------------------------------------------------

    return EXIT_SUCCESS;
}
