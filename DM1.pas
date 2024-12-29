{Falcon Clément, TP5, DM1 - JeuTM, Version 1}
program DM1v1;

procedure Jeu();
{Procédure de lancement et boucle du jeu. Intervalle fixe de 0 à 100, nombre d'essais illimités}
var
devinette: integer = 0; {Variable contenant le nombre proposé par le joueur}
cherche: integer = 0; {Variable contenant le nombre aléatoire à trouver}
coups: integer = 0; {compteur du nombre d'essais}
trouve: boolean = False; {Variable booléenne permettant de casser la boucle une fois le nombre trouvé}
begin
	cherche := random(100+1); {On attribue à la variable du nombre à deviner un nombre aléatoire de 0 à 100, en n'oubliant pas que }
	while (trouve=False) do 
	begin
		coups+=1; {On incrémente le compteur au début de la boucle, ça évite d'avoir un essai 0 puis n-1...}
		writeln('Essai n° ', coups, ': Entrez un nb entre 0 et 100 inclus : ');
		readln(devinette);
		if (devinette = cherche) then
		begin
			trouve := True; {Et à partir de là, la boucle se brise, on affiche le message de victoire}
		end;
		if (devinette > cherche) then 
		begin
			writeln('trop grand !');
		end;
		if (devinette < cherche) then
		begin
			writeln('trop petit !');
		end;
	end;
	writeln('Bravo, gagne en ', coups, ' coups !'); {Le msg de victoire cité plus haut}
end;

begin
	randomize(); {Pour initialiser l'aléatoire}
	Jeu(); {On démarre le jeu par l'appel de sa procédure}
end.
