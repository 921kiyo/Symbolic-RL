1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 6)).

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).
%AAA
state_at((2, 6), 25).
%BBB
%CCC
time(25..250).
%DDD
%ANSWER SETS

%state_at((2,6),25)
%state_at((2,7),26)
%action(down,25)
%action(right,26)
%state_at((3,7),27)
%action(right,27)
%state_at((4,7),28)
%action(right,28)
%state_at((5,7),29)
%action(right,29)
%state_at((6,7),30)
%action(right,30)
%state_at((7,7),31)
%action(right,31)
%state_at((8,7),32)
%action(right,32)
%state_at((9,7),33)
%action(right,33)
%state_at((10,7),34)
%action(right,34)
%state_at((11,7),35)
%action(right,35)
%state_at((12,7),36)
%action(right,36)
%state_at((13,7),37)
%action(right,37)
%state_at((14,7),38)
%action(right,38)
%state_at((15,7),39)
%action(right,39)
%state_at((16,7),40)
%action(up,40)
%state_at((16,6),41)
%action(up,41)
%state_at((16,5),42)
%action(up,42)
%state_at((16,4),43)
%action(up,43)
%state_at((16,3),44)
%action(up,44)
%state_at((16,2),45)
%action(up,45)
%state_at((16,1),46)
