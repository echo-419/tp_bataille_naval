program bataille_naval;

const
	MAX= 10;							//taiile de la grille
	LONG=5;							//longueur max des bateau et nombre de bateau

Type cases=record			//type des cases
		i,j: integer;					//coordonnée de  cases
		nomcases: char;			//noms cases
	end;

TYPE bateau=record			//Types des bateaux
		TAILLE: cases;				//taille des bateau
		nombat: char;		//noms des bateau

	end;
TYPE FLOTTE=record				//types de la flotte
		nbflotte: integer;			//nombre de bateau dans la flotte
	end;

TYPE

	tabbat=array[1..LONG] of cases;				//array de bateau
	tabflotte=array[1..MAX] of BATEAU; 				//array de tous les bateaux

PROCEDURE creecases(var cases;var nomcases);	//creation grille
VAR
        i,j:integer;
BEGIN
	for i:=1 to MAX do
	BEGIN
		for j:=1 to MAX do
		BEGIN
		              cases.nomcases:=' ';						//on remplit de la grille de ' '
		end;
	end;
end;

PROCEDURE creebat(var bateau: TAILLE;var bateau:nombat;var n:integer);//creation de bateau
VAR
	nbcases,n:integer;
BEGIN
	for n:=1 to LONG do
        begin
		writeln(' entrer la taille du bateau ',n); 				//entrer taille bateau
		readln (nbcases);
		bateau.TAILLE:= nbcases*creecases ;			//affectation taille du bateau
		bateau.nombat:='B';				// on remplit avec B for montrer le bateau
		nomcases:=nombat; 					//on remplace le ' ' par B
	end;
	n:=LONG;
end;

function testcases(i,j:integer):boolean;
VAR
	test:boolean;
BEGIN
	test:=false;
	if cases.nomcases=' ' then
		test:=true;
	testcases:=test;
end;

function testbat(testcases:boolean):boolean;
VAR
	test:boolean;
BEGIN
	test:=false;
	if testcases=false then
		test:=true;
	testbat:=test;
end;

VAR
        i,j:integer;

BEGIN
        creecases(cases,nomcases);
        creebat(BATEAU,n);
        testcases(i,j);
        testbat(testceses);
        if testcases=false then
                writeln('rater');
        if testbat=true then
                writeln('toucher');
END.



