clear
clc
app_start();


%% Main Program
function start = app_start()
x = 1;
z = input("Enter your first name : ","s");
invalid = str2double(z);
    if length(z) <= 8 && isnan(invalid) && length(z) > 3
        
        while x ~= 0
            program_interface(z);
            Usr_opt = input("Select a number (0 - 9) : ");
            switch Usr_opt
                %exit
                case 0
                    x = 0;
                    disp("Thank you for using my program");
                   
                    break;
                %Summation
                case 1
                    disp("Summation : ");
                    add(); 
                    pause(3);
                %Straight_Line_Equation
                case 2
                    disp("Straight Line Equation : y = mx + c . [back = 0,y = 1, m= 2, x=3,c = 4, distance = 5]");
                    Usr_index = input("Select a option (0 - 5) : ");
                        switch Usr_index
                            case 0
                                program_interface(z);
                                Usr_opt = input("Select a option (0 - 9) : ");
                            case 1
                                disp("Y = mx + c");
                                m = input("Enter the gradient (m) : ");
                                x = input("Enter the x-point (x) : ");
                                c = input("Enter the Y-intercept : ");
                                Straight_Line_Equation(m,x,c);
        
                            case 2
                                %gradient of the straight line
                                gradient();
        
                            case 3
                                % value of x
                                m = input("Enter the gradient(m) : ");
                                x = input("Enter the x-point(x) :");
                                Y = input("Enter the Y-point :");
                                y_intercept(Y,m,x);
        
                            case 4
                                % y-intercept
                                m = input("Enter the gradient (m)");
                                x = input("Enter the x-point (x)");
                                c = input("Enter the Y-intercept");
                                x_point(y,m,c);
        
                            case 5
                                % distance/length of the line
                               line();
                        end
        
                case 3
                    %Guess the name of the country 
                    pause(1);
                    guess_the_country();
        
                    usr_opt = input("Do you wish to play again? (YES = 1, NO = 0) : ");
                    while usr_opt ~0
                        if usr_opt == 1
                            disp(x);
                            guess_the_country();
                            usr_opt = input("Do you wish to play again? (YES = 1, NO = 0) : ");
                        else 
                            continue;
                        end
                    end 
                %Guess the flag of the country 
                case 4
                    score = 0;
                    Guess_the_flag(score);
                    continue;
        
                %Quadratic equation graph
                case 5
                    QuadraticEqn();
        
                %Battleships-Game
                case 6
                    disp("Rules");
                    disp("The board will reset if you try to place a ship that occupies more space than the board contains (ie placing a carrier ship J1 or G1)");
                    Battleships_game();
            
                %Rock Paper Scissors
                case 7
                    rock_paper_scissors();
                
                %Game of life
                case 8
                     game_of_life()
        
                %Roll a dice
                case 9
                    clc
                    roll();
                    if Usr_opt == 0
                        break
                    end
            end
        end 
    else
        %z = input("Enter your first name:","s");
        valid = str2double(z);
        pause(1);
        while ~isnan(valid) && length(z) > 3 || length(z) <= 8
             %z = input("Enter your first name:","s");
             %valid = str2double(z);
             %disp(z);
            app_start();  
        end 
   
    
    end
    
end

%% Summation - sums up all the numbers 
function sum = add()
    sum = 0;
    n = input("How many numbers do you want to add : ");
    if n < 0
        disp("Enter a positive integer");
    end

    A = [];
    for i = 1:n
        num = input("Enter a num : ");
        A = [A num];
        sum = sum + A(i);
    end

    disp("Numbers : ")
    disp(A(:,:));
    disp("Total : " + sum);
end

%% Straight Line Equation 

% Output Y
function y = Straight_Line_Equation(m,x,c)
    y = (m * x) + c;
    disp("Y :" + y);
end
%gradient
function m = gradient()
    y1 = input("Enter the coordinate (Y1) : ");
    y2 = input("Enter the coordinate (Y2) : ");
    x1 = input("Enter the coordinate (X1) : ");
    x2 = input("Enter the coordinate (X2) : ");
    m = (max(y1,y2)- min(y1,y2)) / (max(x1,x2) - min(x1,x2)) ;
    fprintf("Gradient : %0.2f \n",m);
end
%y-intercept
function c = y_intercept(y,m,x)
    c = y / (m * x);
    disp("Y-intercept : " + c);
end
%x-point
function x = x_point(y,m,c)
    x = (y - c) / m;
    disp("x : " + x);
end
%distance between two points
function distance = line()
    y1 = input("Enter the coordinate (Y1) : ");
    y2 = input("Enter the coordinate (Y2) : ");
    x1 = input("Enter the coordinate (X1) : ");
    x2 = input("Enter the coordinate (X2) : ");
    distance = sqrt((max(x1,x2) - min(x1,x2))+((max(y1,y2) - min(y1,y2) )));
    disp("DIstance : " + distance);
end

%% Guess the name of the country 
function x = guess_the_country()
%Title
disp("Guess the name of the country!")
% The Database / The word set

words = ["USA","Bangladesh","Australia","Brunei","Malaysia","China","Vietnam","England","Japan","Saudi Arabia","Argentina","Brazil","Spain","Germany","Pakistan","Chile","Uzbekistan","Turkey","Egypt","Sudan","North Korea","South Korea","Palestine","Israel","Iraq","Iran","Iceland","Norway","Sweden","Denmark","Finland","Russia","Belarus","Canada","Kenya","Morocco","Ghana","Senegal","South Africa","Nigeria","Niger","Ethiopia","Mali","Uganda","Algeria","Madagascar","Somalia", "Central African Republic","Angola","Cameroon","Tunisia","Zimbabwe","Djibouti","Burundi","Cambodia","France","Indonesia"];
% The randomiser
random = randi(length(words));

% Storing the random word into a character vector 
A = char(upper(words(random)));

%Empty vector to store each character of a word
B = [];

%Empty vector for hiding and revealing character of the word 
% (if the user get it right)
C = [];

%The length of character in a word
lenArr = length(char(words(random)));
%disp(lenArr);

%concatenate each character of a word into into vector B and C
for i = 1:lenArr
    B = [B strcat("",upper(A(i)))];
    C = [C B(i)];
end

%assigning all the data in vector C to "?"
C(:) = "?";

%Answer
%disp(A)

% stores the index of the character that user get right
D = [];

    C(:) = "?";
    %Question Board
    disp(C);
  
    %Main loop     
    for x = 1:lenArr

        %user input
        n = upper(input("Enter a letter : ","s"));
    
        %compares user input with the each characters of the word
        letter_found = strcmp(n,B);
    
        %gets the index if the character matches
        letter_index = find(letter_found);
    
        %stores the index 
        D = [D letter_index];
    
        %replaces all the "?" in vector C according to indexes found in vector
        %D with all the data in vector B (index as in vector D)
        C(D(:)) = B(D(:));
    
      
        disp(C);
        if C(:) == B(:)
            disp("Great job!");
            break
            
        elseif x == lenArr
            country_name = input("Enter the name of the country : ","s");
            if upper(country_name) == upper(words(random))
                disp("Great job! , You won");
            else
                disp("Try again");
                disp("Answer : " + A);
                break;
            end
        end     
    end    
end

%% Guess the flag
function z = Guess_the_flag(x)
    clc
    %Database (storing all the variable in a vector for easy access)
    %%Storing the flags in a variable 
    Andorra = "Images\png1000px\ad.png";
    Albania = "Images\png1000px\al.png";
    Brazil = "Images\png1000px\br.png";
    Bangladesh = "Images\png1000px\bd.png";
    France = "Images\png1000px\fr.png";
    Germany = "Images\png1000px\de.png";
    Australia = "Images\png1000px\au.png";
    Argentina = "Images\png1000px\ar.png";
    Bhutan = "Images\png1000px\bt.png";
    China = "Images\png1000px\cn.png";
    Cuba = "Images\png1000px\cu.png";
    UK = "Images\png1000px\gb.png";
    Iraq = "Images\png1000px\iq.png";
    Iran = "Images\png1000px\ir.png";
    Mongolia = "Images\png1000px\mn.png";
    Nepal = "Images\png1000px\np.png";
    Panama = "Images\png1000px\pa.png";
    Pakistan = "Images\png1000px\pk.png";
    Saudi_arabia = "Images\png1000px\sa.png";
    US = "Images\png1000px\us.png";
    Yemen = "Images\png1000px\ye.png";
    South_Africa = "Images\png1000px\za.png";
    North_Korea = "Images\png1000px\kp.png";
    Ghana = "Images\png1000px\gh.png";
    New_zealand = "Images\png1000px\nz.png";
    Japan = "Images\png1000px\jp.png";
    Russia = "Images\png1000px\ru.png";
    
   
    Flags = [Andorra,Albania,Brazil,Bangladesh,France,Germany,Australia,Argentina,Bhutan,China,Cuba,UK,Iraq,Iran,Mongolia,Nepal,Panama,Pakistan,Saudi_arabia,US,Yemen,South_Africa,North_Korea,Ghana,New_zealand,Japan,Russia];
    Flag_name = ["Andorra","Albania","Brazil","Bangladesh","France","Germany","Australia","Argentina","Bhutan","China","Cuba","UK","Iraq","Iran","Mongolia","Nepal","Panama","Pakistan","Saudi Arabia","USA","Yemen","South Africa","North Korea","Ghana","New zealand","Japan","Russia"];
    % the total number of flags in the database
    n = length(Flags);
    
    %random number generator
    random_num = randi(n);
    %disp(random_num);
    random_val = random_num;
    %disp(random_val)
    %disp(random_num);
    
    %display the random flag
    
    imshow(Flags(random_num));
    set(gcf,'Position',[1000 500 200 150]);
    
    %answer
    %disp(Flag_name(random_val));
        
    %timer settings
    interval = 1;
    start = 0;
    finish = 10;
    pause('on');
    
    while start < finish
        %set the position and size of the image
        set(gcf,'Position',[1000 500 200 150]);
        pause(interval)
        start = start + interval;
        disp(start);
    
        if start == finish
            %close the flag after 30 
            close
            usr_input = waitinput("Enter the name of the flag : ",7,"s");
            if string(upper(usr_input)) == upper(Flag_name(random_val))
                disp("Great job");
                x = x + 1;   
                Guess_the_flag(x);
            elseif string(upper(usr_input)) ~= upper(Flag_name(random_val))
                disp("Game Over!");
                disp("Current Score : " + x);
                break;
            end
            break;
        end
        
        if start == 5
            
            set(gcf,'Position',[1000 500 200 150]);
            usr_input = waitinput("Ready to name the country? (if not just wait) : ",7,"s");
            
            if string(upper(usr_input)) == upper(Flag_name(random_val))
                disp("Great job");
                x = x + 1;
                disp("Current Score : " + x);

                start = 0;
                %random number generator
                random_num = randi(n);
                %disp(random_num);
                random_val = random_num;
                %disp(random_val)
                %disp(random_num);
                
                %display the random flag
                
                imshow(Flags(random_num));
                %disp(Flag_name(random_val));
    
                continue;
            else
                disp("Look at the flag again");
                disp("Current Score : " + x);
            end
        end
    end
    %disp("Total Score : " + x);
end

%% Quadratic Equation
function X = QuadraticEqn()
    clear
    %Quadratic Equation Graph
    a = input("a : ");
    while a < 0
        disp("Error! , [a > 0]")
        a = input("a : ");
    
    end
    b = input("b : ");
    c = input("c : ");
    
    min_x = input("Enter the min range of x (recommended -10) : ");
    interval_x = input("Set the interval (recommended is  0.05) : ");
    max_x = input("Enter the max range of x (recommended 10) : ");
    
    
    for x = min(max_x,min_x):interval_x:max(max_x,min_x)
        % Quadratic Equation
        y = a*(x^2) + (b*x) + c;
        
        %Graph
        quadratic_graph = plot(x,y,LineStyle="-",Marker=".",Color="RED");
    
        %Graph Settings
        ax = gca;
        
        grid("on")
        
        %holds the all the point on the graph
        hold("on")
    
       
        % draws the graph in real time
        drawnow
    end
end

%% Roll a dice
function x = roll()
    switch_1 = 1;
    while switch_1 == 1
        n = input("How to dice do you want to roll : ");
        rand_num = randi(9,n);
        %disp(rand_num);
        A = []; 
        lenArr = length(rand_num);
        %disp(lenArr)
        for i = 1:n
            pause(1);
            disp("Dice " + i + " : " + rand_num(i))
        end
    
        usr_opt = input("Do you want to roll again? (0 = NO , 1 = YES) : ");
        if usr_opt == 1
            pause(1);
            roll();
        elseif usr_opt == 0
            break;
        end
    end
end

%% Application Interface
function x = program_interface(name)
    B= [];
    for r = 1:13
       A = [];
       for c = 1:16
           x = ' * ';
           A = [A x];
           
       end
       B = [B;A];
    end
    
    %disp(B);
    [row col] = size(B);
    for r2 = 2:row-1
        for c2 = 3:col-2
            B(r2,c2) = " ";

        end
    end
    spaces = "    ";
    spaces2 = "                          ";
    %name = "sadid";
    x = length(name);
    camelcase = upper(name(1));
    name(1) = camelcase;
    str = char(" Welcome, "+ name +" [Select a function:(0-9)]" +"    "+ "0) Exit" + spaces2 + "           " +"1) Summation" + spaces2 + "      "+"2) Straight line equation" + spaces + "               " + "3) Guess the name of the country "+ spaces + "       " + "4) Guess the name of the flag " + spaces + "          " + "5) Quadratic equation graph"+ spaces + "             " +"6) Battleships"+ spaces2 + "    " + "7) Rock Paper Scissors   " + spaces + "               " + "8) Game of Life "+ spaces2 + "  " + "9) Roll a dice"+ spaces2 );
    
    %str = char(" Welcome, User [Select a function: (0-9)]");
    %opt1 = char("0) Exit");
    x = length(str);
    
    index1 = 1;
    
    for r3 = 2:row-1
        
        for c3 = 3:col-2
            if index1 <= x
               B(r3,c3) = str(index1);             
               index1 = index1 + 1;
            end
        end
    end
    disp(B);
end


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
    missile = 40;
    disp("Total number of missiles : " + missile)
    refined_data_len = length(refined_data);
    %disp(refined_data_len);
    ontarget = 0;
    while missile > 0 && ontarget ~= 13
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

%% Rock Paper Scissors

function rock_paper_scissors()
    Computer_score = 0;
    Player_score = 0 ;
    Draw = 0;
    stw = 1;
    while stw == 1
        disp("Player Score : " + Player_score + " | " + "Computer Score : " + Computer_score + " | " + "Draw : " + Draw)
        usr = input("Enter a value (Rock = 1 , Paper = 2, Scissors = 3, Exit = 4) : ");
        if usr > 4
            disp("Error! Please a enter a valid number");
            continue;
        elseif usr == 4
            break;
        end
        rand_num1 = randi(3);
        com = ["Rock","Paper", "Scissors"];
        player = ["Rock","Paper", "Scissors"];
        Computer = com(rand_num1);
        
        if player(usr) == Computer
             clc
             disp("Player : " + player(usr) + " | Computer : " + Computer )
             disp("Draw");
             Draw = Draw + 1;
        elseif (usr == 1 && rand_num1 == 2 || usr == 2 && rand_num1 == 3 || usr == 3 && rand_num1 == 1)
            clc
            disp("Player : " + player(usr) + " | Computer : " + Computer )
            disp("Computer Wins");
            Computer_score = Computer_score +1;
            %disp("Computer Score : " + Computer_score)
        else 
            clc
            disp("Player : " + player(usr) + " | Computer : " + Computer )
            disp("Player wins");
            Player_score = Player_score + 1;
            %disp("Player Score : " + Player_score)
        end
    end
end

%% Game of life
function x = game_of_life()
    clear;
    clc;
    
    %size of the matrix
    N = 200;

    % probabilty of alive cells to begin with
    prob = input("Enter the probablility of survival (0 - 1) : ");
    %disp(prob);
   
   
    % N+2 to make the edge of the grid zero
    A = zeros(N+2, N+2);
    A(2:N+1, 2:N+1) = rand(N);
    %disp(A)
    
    %sets the probablity 
    G = (A < prob);
    %disp(G)
    if prob >= 0 && prob <= 1
    for i = 1:200
        A = zeros(N+2, N+2);
        for row = 2:N+1
           for col = 2:N+1
               % diagonal neighbors
               tri = G(row-1, col-1)+G(row-1, col+1)+G(row+1, col-1)+G(row+1, col+1);
              
               % nearest neighbors
               dir = G(row-1, col)+G(row, col-1)+G(row, col+1)+G(row+1, col);
               % number of alive neighbor/s
               n = tri + dir;
               % if a live cell has less than 2 or more than 3 neighbors
               % cell should be dead due to under/over-population
               if (G(row, col)== 1) && ((n < 2) || (n > 3))
                   A(row, col) = 0;
               % if a live cell has 2 or 3 alive neighbors, stays alive
               elseif (G(row, col)== 1) && ((n == 2) || (n == 3))
                   A(row, col) = 1;
               % if a dead cell has three alive neighbors, it becomes alive 
               % in the next generation as if repopulation
               elseif (G(row, col)== 0) && (n == 3)
                   A(row, col) = 1;
               end
    
           end
           %pause(0.001);
           %spy(G)
    
        end
        G = A;
        %disp(G)
        pause(0.1)
        % spy(S,'LineSpec',markersize)
        spy(G, '.', 10)
        drawnow
    end
    else
        game_of_life();
    end
end


