%%dimension 10x10
%each player has 5 ships
%Carrier - 5 holes
%Battleship - 4 holes
%Cruiser - 3 holes
%Submarine - 3 holes
%Destroyer - 2 holes
% ships can not be placed diagonally 
 
clc
%% Main game
Battleships_game()

%% Game Board


%% Battleships Source Code
function x = Battleships_game()
    %row grid (A-J)
    rowGrid = ["A","B","C","D","E","F","G","H","I","J"];
    
    %Game board : 10x10
    Board = [];
    
    %creating the board
    for r = 1:11
        row = string([]);
        for c = 1:11
            col = c;
            row = [row (col-1)];
        end
        Board = [Board;"["+row+"]"];
    end
    
    
    %defining the each playable cell in the board
    Cordinate0 = ["A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"];
    Cordinate1 = ["B1","B2","B3","B4","B5","B6","B7","B8","B9","B10"];
    Cordinate2 = ["C1","C2","C3","C4","C5","C6","C7","C8","C9","C10"];
    Cordinate3 = ["D1","D2","D3","D4","D5","D6","D7","D8","D9","D10"];
    Cordinate4 = ["E1","E2","E3","E4","E5","E6","E7","E8","E9","E10"];
    Cordinate5 = ["F1","F2","F3","F4","F5","F6","F7","F8","F9","F10"];
    Cordinate6 = ["G1","G2","G3","G4","G5","G6","G7","G8","G9","G10"];
    Cordinate7 = ["H1","H2","H3","H4","H5","H6","H7","H8","H9","H10"];
    Cordinate8 = ["I1","I2","I3","I4","I5","I6","I7","I8","I9","I10"];
    Cordinate9 = ["J1","J2","J3","J4","J5","J6","J7","J8","J9","J10"];
    
    %placing the playable cells into the board
    for i = 1:10
        Board(2,i+1:11) = Cordinate0(i);
        Board(3,i+1:11) = Cordinate1(i);
        Board(4,i+1:11) = Cordinate2(i);
        Board(5,i+1:11) = Cordinate3(i);
        Board(6,i+1:11) = Cordinate4(i);
        Board(7,i+1:11) = Cordinate5(i);
        Board(8,i+1:11) = Cordinate6(i);
        Board(9,i+1:11) = Cordinate7(i);
        Board(10,i+1:11) = Cordinate8(i);
        Board(11,i+1:11) = Cordinate9(i);
    
        Board(1,1) = "   ";
        Board(i+1:11,1) = "[" + rowGrid(i) + "]";
    end
    
    %display the board
    disp(Board);
    
       
    %% Ships
    Carrier =    ["(*)","(*)","(*)","(*)","(*)"];
    Battleship = ["(*)","(*)","(*)","(*)"];
    Cruiser =    ["(*)","(*)","(*)"];
    Submarine =  ["(*)","(*)","(*)"];
    Destroyer =  ["(*)","(*)"];

    %display ship1
    ship1_length = length(Carrier);
    disp("Carrier : " + ship1_length);
    %disp(Carrier);
    % 
    % %display ship2
    ship2_length = length(Battleship);
    disp("Battleship : " + ship2_length)
    %disp(Battleship);
    % 
    % %display ship3
    ship3_length = length(Cruiser);
    disp("Cruiser : " + ship3_length)
    % %disp(Cruiser);
    % 
    % %display ship4
    ship4_length = length(Submarine);
    disp("Submarine : " + ship4_length)
    % %disp(Submarine);
    % 
    % %display ship5
    ship5_length = length(Destroyer);
    disp("Destroyer : " + ship5_length)
    %A6disp(Destroyer);

    %% Gameplay 
    %defining the top border of the board
    Top_border = ["[1]","[2]","[3]","[4]","[5]","[6]","[7]","[8]","[9]","[10]"];

    ship_L = input("Enter location : ","s");
    ship_D = input("H or V : ","s");
    loc = find(Board == upper(ship_L));

    disp(loc)
    disp(Board(loc))

    %% ship1
    for Board_row = 2:11
        for Board_column = 2:11
           if strcmp(upper(ship_L),Board(Board_row,Board_column))==1 
               xy = find(Board == upper(ship_L));
               lenS = 1;
               lenSA = 0;
               if upper(ship_D)== "V"
                   while lenS <= ship1_length
                       if xy == 19 || xy == 20 || xy == 21 || xy == 22 ||xy == 30 || xy == 31 || xy == 32 ||xy == 33 ||  xy == 41 || xy == 42 ||xy == 43 || xy == 44 ||  xy == 52 || xy == 53 ||xy == 54 || xy == 55 ||xy == 63 || xy == 64 ||xy == 65 || xy == 66 || xy == 74 || xy == 75 ||xy == 76 || xy == 77 || xy == 85 || xy == 86 ||xy == 87 || xy == 88 || xy == 96 || xy == 97 ||xy == 98 || xy == 99 || xy == 107 || xy == 108 ||xy == 109 || xy == 110 || xy == 198 || xy == 199 ||xy == 120 || xy == 121 
                           Battleships_game()

                       end
                    Board(xy + lenS-1) = "*";
                    lenS = lenS+1;
                   end

               elseif upper(ship_D) == "H"
                   while lenSA <= 50
                    Board(xy + lenSA) = "*";
                    lenSA = lenSA+11;
                   end
               end
           end

        end
    end
    disp(Board);

    %% ship2
    ship_L1 = input("Enter location : ","s");
    ship_D1 = input("H or V : ","s");
    loc = find(Board == upper(ship_L1));
    for Board_row = 2:11
        for Board_column = 2:11
           if strcmp(upper(ship_L1),Board(Board_row,Board_column))==1 
               xy = find(Board == upper(ship_L1));
               lenS = 1;
               lenSA = 0;
               if upper(ship_D1) == "V"
                   while lenS <= ship2_length
                        if  xy == 20 || xy == 21 || xy == 22 || xy == 31 || xy == 32 ||xy == 33 || xy == 42 ||xy == 43 || xy == 44 || xy == 53 ||xy == 54 || xy == 55 || xy == 64 ||xy == 65 || xy == 66 || xy == 75 ||xy == 76 || xy == 77 || xy == 86 ||xy == 87 || xy == 88 || xy == 97 ||xy == 98 || xy == 99 || xy == 108 ||xy == 109 || xy == 110 || xy == 199 ||xy == 120 || xy == 121 
                            Battleships_game()
                        end
                    Board(xy + lenS-1) = "*";
                    lenS = lenS+1;
                   end

               elseif upper(ship_D1) == "H"
                   while lenSA <= 40
                    Board(xy + lenSA) = "*";
                    lenSA = lenSA+11;
                   end
               end
           end

        end
    end
    disp(Board);

    %% ship3
    ship_L2 = input("Enter location : ","s");
    ship_D2 = input("H or V : ","s");
    loc = find(Board == upper(ship_L2));
    for Board_row = 2:11
        for Board_column = 2:11
           if strcmp(upper(ship_L2),Board(Board_row,Board_column))==1 
               xy = find(Board == upper(ship_L2));
               lenS = 1;
               lenSA = 0;
               if upper(ship_D2) == "V"
                   while lenS <= ship3_length
                        if xy == 21 || xy == 22 || xy == 32 ||xy == 33 || xy == 43 || xy == 44 || xy == 54 || xy == 55 || xy == 65 || xy == 66 ||xy == 76 || xy == 77 || xy == 87 || xy == 88 || xy == 98 || xy == 99 ||xy == 109 || xy == 110 || xy == 120 || xy == 121
                            Battleships_game()
                        end
                    Board(xy + lenS-1) = "*";
                    lenS = lenS+1; 
                   end

               elseif upper(ship_D2) == "H"
                   while lenSA <= 30
                    Board(xy + lenSA) = "*";
                    lenSA = lenSA+11;
                   end
               end
           end

        end
    end
    disp(Board);

    %% ship 4
    ship_L3 = input("Enter location : ","s");
    ship_D3 = input("H or V : ","s");
    loc = find(Board == upper(ship_L3));
    for Board_row = 2:11
        for Board_column = 2:11
           if strcmp(upper(ship_L3),Board(Board_row,Board_column))==1 
               xy = find(Board == upper(ship_L3));
               lenS = 1;
               lenSA = 0;
               if upper(ship_D3) == "V"
                   while lenS <= ship4_length
                        if xy == 21 || xy == 22 || xy == 32 ||xy == 33 || xy == 43 || xy == 44 || xy == 54 || xy == 55 || xy == 65 || xy == 66 ||xy == 76 || xy == 77 || xy == 87 || xy == 88 || xy == 98 || xy == 99 ||xy == 109 || xy == 110 || xy == 120 || xy == 121 
                            Battleships_game()
                        end
                    Board(xy + lenS-1) = "*";
                    lenS = lenS+1;
                   end

               elseif upper(ship_D3) == "H"
                   while lenSA <= 30
                    Board(xy + lenSA) = "*";
                    lenSA = lenSA+11;
                   end
               end
           end

        end
    end
    disp(Board);

    %% ship5
    ship_L4 = input("Enter location : ","s");
    ship_D4 = input("H or V : ","s");
    loc = find(Board == upper(ship_L4));
    for Board_row = 2:11
        for Board_column = 2:11
           if strcmp(upper(ship_L4),Board(Board_row,Board_column))==1 
               xy = find(Board == upper(ship_L4));
               lenS = 1;
               lenSA = 0;
               if upper(ship_D1) == "V"
                   while lenS <= ship5_length
                     if xy == 22 ||xy == 33 || xy == 44 ||xy == 55 ||xy == 66 || xy == 77 ||xy == 88 || xy == 99 ||xy == 110 || xy == 121 
                        Battleships_game()
                     end
                    Board(xy + lenS-1) = "*";
                    lenS = lenS+1;
                   end

               elseif upper(ship_D4) == "H"
                   while lenSA <= 20
                    Board(xy + lenSA) = "*";
                    lenSA = lenSA+11;
                   end
               end
           end

        end
        disp(Board);
    end

    % Game Board After placing the ships
    disp(Board);
    
    %% Computer's Turn
    y = 0;
    count = 0;
    while y < 18
        for r2 = 2:11
            for c2 = 2:11
                clc
                x1 = randi([2 11]);
                y1 = randi([2 11]);

                if Board(x1,y1) == "*"
                    Board(x1,y1) = "X";
                    count = count + 1;
                    disp(Board);
                    disp("Missile landed : " + count)
                    pause(1);

                    y = y +1;
                elseif count == 17

                    disp("You lose");
                    break;
                else

                    Board(x1,y1) = "X";
                     y = y +1;
                    continue;
                end
                %disp(Board)



            end
        end

    end

    disp(Board)
    disp("Computer :");
    disp("Missile landed : " + count + " / 17")
    pause(1);

    %% Player's turn
    % H = x + 12
    % v = x + 1
    %row grid (A-J)
    disp("Player's Turn")
    rowGrid = ["A","B","C","D","E","F","G","H","I","J"];

    %Game board : 10x10
    Board = [];

    %creating the board
    for r = 1:11
        row = string([]);
        for c = 1:11
            col = c;
            row = [row (col-1)];
        end
        Board = [Board;"["+row+"]"];
    end


    %defining the each playable cell in the board
    Cordinate0 = ["A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"];
    Cordinate1 = ["B1","B2","B3","B4","B5","B6","B7","B8","B9","B10"];
    Cordinate2 = ["C1","C2","C3","C4","C5","C6","C7","C8","C9","C10"];
    Cordinate3 = ["D1","D2","D3","D4","D5","D6","D7","D8","D9","D10"];
    Cordinate4 = ["E1","E2","E3","E4","E5","E6","E7","E8","E9","E10"];
    Cordinate5 = ["F1","F2","F3","F4","F5","F6","F7","F8","F9","F10"];
    Cordinate6 = ["G1","G2","G3","G4","G5","G6","G7","G8","G9","G10"];
    Cordinate7 = ["H1","H2","H3","H4","H5","H6","H7","H8","H9","H10"];
    Cordinate8 = ["I1","I2","I3","I4","I5","I6","I7","I8","I9","I10"];
    Cordinate9 = ["J1","J2","J3","J4","J5","J6","J7","J8","J9","J10"];

    %placing the playable cells into the board
    for i = 1:10
        Board(2,i+1:11) = Cordinate0(i);
        Board(3,i+1:11) = Cordinate1(i);
        Board(4,i+1:11) = Cordinate2(i);
        Board(5,i+1:11) = Cordinate3(i);
        Board(6,i+1:11) = Cordinate4(i);
        Board(7,i+1:11) = Cordinate5(i);
        Board(8,i+1:11) = Cordinate6(i);
        Board(9,i+1:11) = Cordinate7(i);
        Board(10,i+1:11) = Cordinate8(i);
        Board(11,i+1:11) = Cordinate9(i);

        Board(1,1) = "   ";
        Board(i+1:11,1) = "[" + rowGrid(i) + "]";
    end

    %display the board
    %disp(Board);
   
   ships_count = 0;
   while ships_count <= 5
        % 1 = horzizontal
        % 2 = vertical
        r_d = randi([1 2]);
        r_r = randi([2 11]);
        r_c = randi([2 11]);
        lenShip = randi([3 6]);
        index_comp = [];
        for r4 = 2:11
            for c4 = 2:11
                if r_d == 1
                    Board(r_r,2:lenShip) = "*";
                    z = find(Board == "*");
                    index_comp = [index_comp z];
                elseif r_d == 2
                     Board(2:lenShip,r_c) = "*";
                     z = find(Board == "*");
                     index_comp = [index_comp z];

                end
            end
        end
        ships_count = ships_count +1;
   end
        
   
  
    %Enemy Location
    %disp(Board); 
    refined_data = unique(index_comp);
    %disp(refined_data)

    %row grid (A-J)
    rowGrid = ["A","B","C","D","E","F","G","H","I","J"];
    
    %Game board : 10x10
    Board = [];
    
    %creating the board
    for r = 1:11
        row = string([]);
        for c = 1:11
            col = c;
            row = [row (col-1)];
        end
        Board = [Board;"["+row+"]"];
    end
    
    
    %defining the each playable cell in the board
    Cordinate0 = ["A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"];
    Cordinate1 = ["B1","B2","B3","B4","B5","B6","B7","B8","B9","B10"];
    Cordinate2 = ["C1","C2","C3","C4","C5","C6","C7","C8","C9","C10"];
    Cordinate3 = ["D1","D2","D3","D4","D5","D6","D7","D8","D9","D10"];
    Cordinate4 = ["E1","E2","E3","E4","E5","E6","E7","E8","E9","E10"];
    Cordinate5 = ["F1","F2","F3","F4","F5","F6","F7","F8","F9","F10"];
    Cordinate6 = ["G1","G2","G3","G4","G5","G6","G7","G8","G9","G10"];
    Cordinate7 = ["H1","H2","H3","H4","H5","H6","H7","H8","H9","H10"];
    Cordinate8 = ["I1","I2","I3","I4","I5","I6","I7","I8","I9","I10"];
    Cordinate9 = ["J1","J2","J3","J4","J5","J6","J7","J8","J9","J10"];
    
    %placing the playable cells into the board
    for i = 1:10
        Board(2,i+1:11) = Cordinate0(i);
        Board(3,i+1:11) = Cordinate1(i);
        Board(4,i+1:11) = Cordinate2(i);
        Board(5,i+1:11) = Cordinate3(i);
        Board(6,i+1:11) = Cordinate4(i);
        Board(7,i+1:11) = Cordinate5(i);
        Board(8,i+1:11) = Cordinate6(i);
        Board(9,i+1:11) = Cordinate7(i);
        Board(10,i+1:11) = Cordinate8(i);
        Board(11,i+1:11) = Cordinate9(i);
    
        Board(1,1) = "   ";
        Board(i+1:11,1) = "[" + rowGrid(i) + "]";
    end
    
    %display the board
    disp(Board);
    missile = 50;
    disp("Total number of missiles : " + missile)
    refined_data_len = length(refined_data);
    %disp(refined_data_len);
    ontarget = 0;
    while missile > 0 
        usr_input = input("Enter the missile target : ","s");
        usr_index = find(Board == upper(usr_input));
        %disp(usr_index);
        for v = 1:refined_data_len
            if usr_index == refined_data(v)
                Board(refined_data(v)) = "X";
                ontarget = ontarget + 1;
            end
        end
       missile = missile - 1;
       disp(Board)
       if missile == 0
           clc
           disp("Number of missile launched on target : " + ontarget + " / " + refined_data_len );
           disp("Game Over!");
       elseif ontarget == 13
           clc
           disp("You won the Battle");
           break;
       end
       disp("Missile left : " + missile);
       
    end

end
