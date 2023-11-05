% Find selling price:-

s_p(CP, PP, SP) :-
    SP is (CP + (CP * PP) / 100).

%  Find Cost price:-

cost_price(SP, PP, CP) :-
    CP is SP / (1 + PP / 100).

% Find Percentage Profit

percentage_profit(CP, SP, PP) :-
    PP is ((SP - CP) / CP) * 100.

percentage_loss(CP, SP, LossPercentage) :-
    LossPercentage is ((CP - SP) / CP) * 100.
