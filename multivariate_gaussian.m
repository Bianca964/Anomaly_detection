% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    % probabilities = zeros(1, 1);

    % nr de exemple din setul de date
    m = size(X, 1);

    % initializez vectorul de probabilitati
    probabilities = zeros(m, 1);

    % calculez probabilitatea pt fiecare exemplu din setul de date
    for i = 1:m
        probabilities(i) = gaussian_distribution(X(i, :), mean_values, 
                                                 variances);
    endfor
endfunction
