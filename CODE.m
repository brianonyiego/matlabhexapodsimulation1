clear
cla

%% Geometry constants
len = [27.0, 48.0, 153.0];
frame_radius  = 104.24;
height_offset = 46.6;

%% Gait cycle coordinates
%bottom center of the gait cycle as an offset from ee neutral position
…        initial = initial3(i);
        final  = final3(i);
        
        t_final     = t_span  + t_initial;
        numerator   = final   - initial;
        denominator = t_final - t_initial; 
        current3(i) = (numerator/denominator)*(t_curr - t_initial) + initial;
    end
end
