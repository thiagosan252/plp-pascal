// Fenótipos (A, B, AB, O)
// Fórmula para identificar a frequência gênica do sistema ABO para posteriormente calcular o 'Equilíbrio Hardy e Weinberg'

Program CalculaFrequenciaGenica;

function calculaRaiz(valor: double) : double;
begin
 calculaRaiz := sqrt(valor); 
end;

var
  a: integer;
  b: integer;
  ab: integer;
  o: integer;

  totalPopulacao: integer;
  
  rZao: double;
  rZinho: double;

  pZao: double;

  p: double;  
  q: double;
begin
  
  write('Digite a quantidade de pessoas com fenótipo A: ');
  readln(a); 

  write('Digite a quantidade de pessoas com fenótipo B: ');
  readln(b); 

  write('Digite a quantidade de pessoas com fenótipo AB: ');
  readln(ab); 

  write('Digite a quantidade de pessoas com fenótipo O: ');
  readln(o); 

  totalPopulacao := a + b + ab + o;

  rZao := o / totalPopulacao;

  pZao := a / totalPopulacao;

  rZinho := calculaRaiz(rZao);
   
  p := calculaRaiz(pZao + rZao) - rZinho;

  q := 1 - rZinho - p;

  writeln('População TOTAL = ', totalPopulacao);
  writeln('Frequência Gênica = ', q:0:3);
  
end.




