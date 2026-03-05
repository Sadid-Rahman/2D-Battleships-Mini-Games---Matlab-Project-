
rock_paper_scissors()

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