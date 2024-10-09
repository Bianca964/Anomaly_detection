% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    % mean_values = zeros(1,1);
    % variances = zeros(1,1);

    % calculez numarul de linii pentru urmatoarea operatie
    m = size(X, 1);

    % calculez media pentru fiecare dimensiune
    mean_values = sum(X) / m;

    % calculez deviatia fata de medie pentru fiecare exemplu
    deviations = X - mean_values;

    % calculez matricea de covarianta
    variances = (deviations' * deviations) / m;
endfunction
