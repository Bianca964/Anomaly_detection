
## ANOMALY-DETECTION

    # function [mean_values variances] = estimate_gaussian(X)
    Aceasta functie are rolul de a estima parametrii unei distributii
Gaussiene folosind datele dintr-o matrice X. Ea calculeaza media si variantele
distributiei pe baza datelor furnizate. Functia primeste o matrice X care
contine datele si returneaza doi vectori: mean_values (media) si
variances. 

    # function probability = gaussian_distribution(X, mean_value, variance)
    Aceasta functie realizeaza calculul densitatii de probabilitate
Gaussiene pentru un set de date dat, pe baza mediei si a variantei date ca
parametri. Functia primeste o matrice X de exemple, o valoare medie
(mean_value) si o matrice de varianta (variance) si returneaza un vector de
probabilitati corespunzatro fiecarui exemplu din setul de date. Prin
intermediul acestei functii pot determina probabilitatea ca un anumit exemplu
sa apartina unei distributii Gaussiene cu parametrii specificati. Aceasta
functie este o functie auxiliara de care ma folosesc in multivariante_gaussian.

    # function probabilities = multivariate_gaussian(X, mean_values, variances)
    Aceasta functie calculeaza probabilitatile pentru un set de date dat.
Prin intermediul unei iteratii asupra fiecarui exemplu din setul de date
functia apeleaza functia gaussian_distribution pentru a calcula probabilitatea
pentru fiecare punct in parte. Rezultatul este un vector de probabilitati
asociat fiecarui exemplu din setul de date. De asemenea, este folosita in
functia optimal_threshold.

    # function [false_pozitives, false_negatives, true_pozitives] =
check_predictions(predictions, truths)
    Aceasta functie calculeaza numarul pozitivelor false si adevarate, precum
si numarul negativelor false pe care le returneaza verificand pentru fiecare
in parte in ce categorie se incadreaza.

    # function [precision recall F1] = metrics(true_pozitives,
false_pozitives, false_negatives)
    Aceasta functie calculeaza parametrii necesari conform formulelor date.
Este folosita mai apoi pentru simplificare si organizare in functia
optimal_threshold.

    # function [best_epsilon best_F1 associated_precision associated_recall] =
optimal_threshold(truths, probabilities)
    Aceasta functie are rolul de a gasi pragul optim pentru selectarea
outlierilor intr-un set de date. Prin analiza probabilitatilor calculate
anterior si a adevarurilor (truths), functia determina pragul care
maximizeaza scorul F1. Functia returneaza cel mai bun prag gasit
(best_epsilon), scorul F1 asociat (best_F1), precizia corespunzatoare
(associated_precision) si acoperirea corespunzatoare (associated_recall).
Pentru a gasi pragul optim, functia imparte intervalul de probabilitati
in multe praguri mai mici, mai exact 1000 (asa e dat in enunt) si evalueaza
fiecare prag in raport cu scorul F1 obtinut din predictiile generate. Pragul
care maximizeaza scorul F1 este considerat cel mai bun prag.
