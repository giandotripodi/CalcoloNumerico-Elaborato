%Definiamo il vettore c, le cui componenti sono numeri interi da 3 a 11%
c = [3: 11];
%Costruiamo la matrice di Vandermonde, utilizzando fliplr per rappresentare
%al meglio la matrice, in quanto, utilizzando fliplr abbiamo la struttura
%classica della matrice di Vandermonde dove abbiamo elementi nella prima
%colonna tutti uguali a 1.
matrix = fliplr(vander(c));
%Calcoliamo la matrice di identità, moltiplicando la matrice per la sua
%inversa. Utilizziamo l'operatore ' / ' perché permette sia un migliore tempo di
%esecuzione dell'operazione e sia una maggiore accuratezza numerica, a
%differenza dell'operatore ' * '
matrixId= matrix/inv(matrix);
%Matrice di identità con 1 sulla diagonale principale e 0 altrove
Id = eye(9);
%Calcoliamo il numero di condizionamento della matrice, utilizzando il
%comando 'cond'. Esso restituisce il numero di condizionamento in norma 2.
matrixCond = cond(matrix);
%Per calcolare il numero di condizionamento in norma 1, possiamo
%alternativamente utilizzare il comando 'rcond'.
matrixrCond = rcond(matrix);
%Calcoliamo il numero di condizionamento in norma 2 della matrice identità
matrixIdCond = cond(matrixId);
%Allo stesso modo, calcoliamo il numero di condizionamento in norma 1 della %matrice di identità %comando 'rcond'.
matrixIdrCond = rcond(matrixId);
%Definiamo l'errore assoluto tra la matrice di identità della nostra matrice di Vandermonde
%e la matrice di identità.
error = norm(matrixId - Id);