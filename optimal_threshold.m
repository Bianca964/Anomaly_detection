% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    nr_epsilons = 1000;
    eps_min = min(probabilities);
    eps_max = max(probabilities);
    step = (eps_max - eps_min) / nr_epsilons;
  
    % iau fiecare prag la rand
    for i = eps_min:step:eps_max
        epsilon = i;

        % generez predictiile pe baza pragului curent
        predictions = probabilities < epsilon;

        % calculez metricile pentru predictiile curente
        [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);
        [precision, recall, F1] = metrics(true_pozitives, false_pozitives, false_negatives);

        % actualizez cel mai bun prag si metricile asociate
        if F1 > best_F1
            best_epsilon = epsilon;
            best_F1 = F1;
            associated_precision = precision;
            associated_recall = recall;
        endif
    endfor
endfunction
