function fullscreen()
    %fullscreen - Description
    %
    % Syntax: fullscreen()
    %
    % Long description
    ax = gca;
    outerpos___ = ax.OuterPosition;
    ti___ = ax.TightInset;
    left___ = outerpos___(1) + ti___(1)*1.5;
    bottom___ = outerpos___(2) + ti___(2)*1.2;
    ax_width___ = outerpos___(3) - ti___(1)*1.5 - ti___(3);
    ax_height___ = outerpos___(4) - ti___(2)*1.2 - ti___(4);
    ax.Position = [left___, bottom___, ax_width___, ax_height___];
end
