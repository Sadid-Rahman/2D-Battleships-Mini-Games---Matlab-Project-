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
