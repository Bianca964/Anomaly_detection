
function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    false_pozitives = 0;
    false_negatives = 0;
    true_pozitives = 0;

    % compar fiecare predictie cu ground truth-ul corspunzator
    for i = 1:length(predictions)
        % daca predictia este pozitiva, dar ground truth-ul este negativ
        if predictions(i) == 1 && truths(i) == 0 
            false_pozitives = false_pozitives + 1;
        endif

        % daca predictia este negativa, dar ground truth-ul este pozitiv
        if predictions(i) == 0 && truths(i) == 1
            false_negatives = false_negatives + 1;
        endif

        % daca ambele sunt pozitive
        if predictions(i) == 1 && truths(i) == 1
            true_pozitives = true_pozitives + 1;
        endif
    endfor
endfunction