% Do 1: Make a simple knowledge base. 
%       Represent some of your favorite books and authors.

book('Coders At Work', 'Peter Seibel').
book('Rocket Surgery Made Easy', 'Steve Krug').
book('Seven Languages In Seven Weeks', 'Bruce Tate').
book('The Bullpen Gospels', 'Dirk Hayhurst').
book('Some Other Book', 'Dirk Hayhurst').

% Do 2: Find all books in your knowledge base written by one author.

% ?- book(What, 'Dirk Hayhurst').
% What = 'The Bullpen Gospels' ? a
% What = 'Some Other Book'

% Do 3: Make a knowledge base representing musicians and instruments.
%       Also represent musicians and their genre of music.

musician_instrument('Dave Weckyl', drums).
musician_instrument('Neil Peart', drums).
musician_instrument('Flea', bass).
musician_instrument('Winton Marsalis', trumpet).
musician_instrument('Slash', guitar).

musician_genre('Dave Weckyl', jazz).
musician_genre('Neil Peart', rock).
musician_genre('Flea', alternative).
musician_genre('Winton Marsalis', jazz).
musician_genre('Slash', rock).

% Do 4: Find all musicians who play the drums.

% ?- musician_instrument(What, drums).
% What = 'Dave Weckyl' ? a
% What = 'Neil Peart'