function probability = gaussian_distribution(X, mean_value, variance)
    % probability = 0;

    % nr de caracteristici (nr de coloane)
    n = size(X, 2);

    % calculez deviatia fata de medie pentru fiecare exemplu
    deviations = X - mean_value;

    % calculez inversa matricei de varianta
    inverse_variance = inv(variance);

    % calculez partea exponentiala a densitatii de probabilitate Gaussiane
    exp_part = exp(-0.5 *
                   sum((deviations * inverse_variance) .* deviations, 2));

    % calculez factorul din fata exponentialei
    prefactor = 1 / ((2 * pi)^(n / 2) * sqrt(det(variance)));

    % calculez densitatea de probabilitate pt fiecare exemplu din setul de date
    probability = prefactor * exp_part;
endfunction
