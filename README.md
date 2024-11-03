
# Metode Numerice : Analiza Datelor

## Detectarea Anomaliilor

### estimate_gaussian.m
- **Descriere**: Calculează media și varianța pentru un set de date, returnând parametrii mu și sigma2.
- **Logica**: Implementează formulele statistice pentru calculul mediei și varianței pentru date multidimensionale.

### multivariate_gaussian.m
- **Descriere**: Calculează densitatea de probabilitate pentru un set de date sub un model gaussian multivariat.
- **Logica**: Utilizează media și covarianța pentru a evalua probabilitatea fiecărui punct de date.

### check_predictions.m
- **Descriere**: Verifică acuratețea predicțiilor de anomaliile detectate comparând cu valorile reale.
- **Logica**: Compară predicțiile modelului cu adevăratele etichete ale datelor.

### gaussian_distribution.m
- **Descriere**: Calculează distribuția gaussiană pentru setul de date.
- **Logica**: Utilizează parametrii statistici pentru a evalua forma distribuției.

### identify_outliers.m
- **Descriere**: Identifică outlierii într-un set de date bazat pe un prag stabilit.
- **Logica**: Folosește un prag pentru a determina care puncte se califică ca fiind anomali.

### metrics.m
- **Descriere**: Calculează metricele de performanță, cum ar fi precision, recall, și F1 score.
- **Logica**: Evaluarea performanței modelului de detectare a anomaliilor.

### optimal_threshold.m
- **Descriere**: Determină pragul optim pentru detectarea outlierilor utilizând o metrică specifică.
- **Logica**: Alege valoarea pragului care maximizează o metrică dată, de obicei F1 score.

## Regresia Kernel

### build_kernel.m
- **Descriere**: Construiește o matrice kernel folosind funcții kernel specificate.
- **Logica**: Aplică funcția de kernel între toate perechile de puncte din date.

### cholesky.m
- **Descriere**: Implementează descompunerea Cholesky pentru matrici pozitiv definite.
- **Logica**: Utilizată pentru a simplifica calculele în metodele numerice.

### conjugate_gradient.m
- **Descriere**: Implementează metoda gradientului conjugat pentru soluționarea sistemelor liniare.
- **Logica**: Oferă o soluție eficientă pentru sistemele de ecuații liniare mari.

### eval_value.m
- **Descriere**: Evaluează modelul pe un nou set de date.
- **Logica**: Calculează ieșirea modelului folosind parametrii estimati și kernelul definit.

### gaussian_kernel.m
- **Descriere**: Definește un kernel gaussian pentru a calcula similitudinea între punctele de date.
- **Logica**: Folosește distanța euclidiană între puncte pentru a determina similitudinea.

### get_lower_inverse.m
- **Descriere**: Calculează inversa unei matrici triunghiulare inferioare.
- **Logica**: Utilizată în procesul de descompunere și inversare a matricilor în calculul numeric.

## Generarea de Text Stochastic

### split_input.m
- **Descriere**: Împarte un text în cuvinte și semne de punctuație pentru procesare.
- **Logica**: Parsează textul pentru a extrage și manipula cuvintele individual.

### stochastic_matrix.m
- **Descriere**: Construiește o matrice stocastică bazată pe un lanț Markov derivat din text.
- **Logica**: Utilizează frecvențele de apariție ale cuvintelor pentru a construi matricea de tranziție.
