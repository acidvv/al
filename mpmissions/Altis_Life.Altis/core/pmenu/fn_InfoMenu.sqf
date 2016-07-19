private ["_start"];
_start = [_this,0,0,[0]] call BIS_fnc_param;

//InfoMenus
if(_start isEqualTo 0) exitWith {
disableSerialization;
createDialog "infoMenu";
switch(playerSide) do {case west:{ctrlShow[2011,false];ctrlShow[2016,false];};case independent:{ctrlShow[2011,false];ctrlShow[2016,false];};};

_InfoMenus = ((findDisplay 41500) displayCtrl 2300);
lbClear _InfoMenus;

_InfoMenus lbAdd "Zasady";lbSetColor[2300,(lbSize _InfoMenus)-1,[1,0.694,0.141,1]];
_InfoMenus lbAdd "Info"; lbSetValue [2300, (lbSize _InfoMenus)-1, 1];
_InfoMenus lbAdd "Admini"; lbSetValue [2300, (lbSize _InfoMenus)-1, 2];
_InfoMenus lbAdd "Klawisze"; lbSetValue [2300, (lbSize _InfoMenus)-1, 3];
_InfoMenus lbAdd "Regulamin podstawy"; lbSetValue [2300, (lbSize _InfoMenus)-1, 4];
_InfoMenus lbAdd "Praca"; lbSetValue [2300, (lbSize _InfoMenus)-1, 5];
_InfoMenus lbAdd "Zmiany"; lbSetValue [2300, (lbSize _InfoMenus)-1, 6];lbSetColor[2300,(lbSize _InfoMenus)-1,[1,0,0.082,1]];

_InfoMenus lbSetCurSel 1;
};

//Infos
if(_start isEqualTo 1) exitWith {
private ["_index","_infoText"];
_index = ((findDisplay 41500) displayCtrl 2300) lbValue (lbCurSel 2300);
((findDisplay 41500) displayCtrl 2301) ctrlSetText lbText [2300, lbCurSel 2300];

if(_index isEqualTo 0) exitWith {};


_infoText = call {
//Server
if(_index isEqualTo 1) exitWith {
"AltisLand Best Server<br/>
<t color='#0099ff'>Tu w info masz wszystko:</t> ZAPOZNAJ SIE Z TYM<br/>
<t color='#0099ff'>Nazwa:</t> [PL] Altisland BEST<br/>
<t color='#0099ff'>IP:</t> 149.202.65.190<br/>
<t color='#0099ff'>Port:</t>2352<br/><br/>
<t color='#0099ff'>Linki</t><br/>
<a href=''>Teamspeak 3: 51.254.132.75</a><br/>
<a href='http://www.altisland.pl'>Forum: altisland.pl</a><br/><br/>
Restart<br/>
<t color='#0099ff'>0:00, 04:00, 8:00, 12:00, 16:00, 20:00</t>
";
};

//Regeln
<<<<<<< HEAD
if(_index isEqualTo 2) exitWith {"Admini Acid, Arek, Veyron Castle<br/><a color='#0099ff' href='www.altisland.pl'>Rozączając się z serwera nieprzepisowo możesz stracić wszystko</a>"};
=======
if(_index isEqualTo 2) exitWith {"Admini Acid, Arek, Veyron<br/><a color='#0099ff' href='www.altisland.pl'>Rozączając się z serwera nieprzepisowo możesz stracić wszystko</a>"};
>>>>>>> origin/master

//Steuerung
if(_index isEqualTo 3) exitWith {
"<t color='#0099ff'>Y</t> Player Menu<br/>
<t color='#0099ff'>U</t> Otwieranie zamykanie pojazdów <br/>
<t color='#0099ff'>T</t> Bagażnik <br/>
<t color='#0099ff'>TAB</t> Rozmowa <br/>
<t color='#0099ff'>Windows</t> Menu interakcji <br/>
<t color='#0099ff'>Shift+G</t> Powalenie gracza <br/>
<t color='#0099ff'>Shift+P</t> Zatyczki do uszów <br/>
<t color='#0099ff'>Shift+B</t> Poddanie się <br/>
<t color='#0099ff'>Shift+R</t> Kajdanki>" ;

};

//Lizensen
if(_index isEqualTo 4) exitWith {
<<<<<<< HEAD
"<t color='#00ff00'>§1 
Wchodząc na serwer, gracz jest zobligowany do przestrzegania ReGuLaMiN'u Ogólnego 
§2 
Nieznajomość regulaminu, nie zwalnia z jego przestrzegania 
§3 
Za nieprzestrzeganie regulaminu grozi kara w postaci : 
	Kicka, 
	Bana Czasowego, 
	Bana Permanentnego, 
	Bądź w przypadku forum, usunięcia postu. 
§4 
Osoba, która dopuszcza się grożenia innym, bądź dokonuje fałszywych oskarżeń, będzie surowo ukarana. 

Art.2 - RDM/VDM/Trollowanie/Czat 

§1 
Osoba, która dopuszcza się losowych zabójstw na serwerze lub zabójstwa bez uzasadnienia, dokonuje RDM (Random DeathMatch). RDM jest ściśle zabroniony. 

§2 
Osoba, która celowo zabija innych graczy przy użyciu pojazdu, dopuszcza się VDM (Vehice DeathMatch), który jest zabroniony. Nie łamie regulaminu serwera ten, kto w wyniku wypadku lub losowego zdarzenia zabił drugiego gracza przy użyciu pojazdu. 

§3 
Gracz może jednorazowo użyć pojazdu w celu samoobrony, jednak na zasadach opisanych na poniższym przykładzie. 

Przykład: Gracz A jedzie ulicą {o dopuszczalnej prędkości), nagle dostrzega gracza B, który wychodzi na ulicę i celuję w jego kierunku. Gracz A postanawia nie zatrzymać pojazdu, w wyniku czego gracz B otwiera ogień. W tym momencie gracz A ma prawo przejechać gracza B. W przypadku gdy gracz A nie zabije gracza B, NIE ma prawa, nawrócić pojazdu i ponowić próby! 

§4 
Kto w sposób oczywisty przy pomocy zachowania lub słownictwa dopuszcza się trollingu może zostać ukarany banem czasowym bąd też i stałym. 

Przykłady trollingu : Krążenie samochodem w okół policjanta. Bieganie za policjantem bez powodu. 

Trolling zbiorowy, czyli utrudnianie pracy policji, będzie banem. 

§5 
Zabrania się używania komunikacji ustnej przy pomocy kanału strony (side channel). 

§6 
Zabrania się wykorzystywania wszelkich narzędzi umożliwiających podglądanie innego gracza jego pozycji na mapie (ghosting) w tym tzw. live stream. Prześladowanie przez dłuższy czas jest zabronione. 

§7 
Jedynym wyjątkiem zezwolenia KoS, czyli Killing on Sight są bliskie okolice nielegalnych stref (nielegalne pola, processingi, handlarze itp.)Strefy zaznaczone na czerwono na mapie. 


Art.3 - Rebelianci 

§1 
Za rebielianta uznaję się osobę, która działa w szeregach dobrze wyposażonej i dobrze zorganizowanej grupy zbrojnej. Celem rebelii jest destabilizacja sytuacji na serwerze. Jednak należy zwrócić uwagę, aby swą działalności nie doprowadzały do trwałej destabilizacji struktury i pracy policji. 

§2 
Rebelianci mają możliwość dokonania ataku na obiekt publiczny (np. miasto) pod warunkiem, że uprzedzili o swoich zamiarach policję i cywili. Wyjątek stanowi przeprowadzenie zasadzki przeciwko policji. 

§3 
Rebelia nie ma prawa polować na policję. Wyjątek stanowi organizacja zasadzki na pojazd policji. Warunkiem jednak jest natychmiastowe wycofanie się po dokonanym ataku/porwaniu policjanta. 

§4 
Rebelia ma prawo stosować helikoptery jako broń do dokonywania napadów rabunkowych. W przypadku tego typu ataku nie ma obowiązku informować o tym policji. Przy czym helikopter nie może zostać wykorzystany do taranowania innych pojazdów latajacych. 


Art.4 - Policja 

§1 
Policja ma prawo zatrzymać każdy pojazd do kontroli pod warunkiem, że ma ku temu powód 

§2 
Policja ma prawo organizować punkty kontrolne. Owy punkt musi być iznakowany przynajmniej jednym radiowozem. 

§3 
Policja ma prawo organizować blokady drogowe, celem zatrzymania pojazdu. Policja odpowiada za wszelkie szkody wśród osób postronnych spowodowane zastosowaniem kolczatki. 

§4 
Za spowodowanie śmierci niewinnego cywila policja winna jest mu wypłacić rekompensatę w wysokości 10 000 $. Za wszelkie inne szkody wyrządzone cywilą policja jest zobligowana do usunięcia ich oraz wypłacenia rekompensaty w wysokości 5 000 $. 

§5 
Policja ma prawo użyć paralizatora bez ostrzeżenia. 

§6 
Policja ma obowiązek wydać ustne ostrzeżenie oraz strzał ostrzegawczy przed użyciem broni ostrej. Wyjątek stanowi sytuacja gdy policjant stosuje broni w obronie własnej oraz gdy policja wdała się w konflikt z rebelią. 

§7 
W przypadku, gdy dany gracz popełnia przestępstwo większej wagi ( zabójstwo policjantów, zbrojny opór itp. ), stawia większy opór dla policji lub dochodzi do starcia Policji ze zorganizowaną grupą przestępczą (grupa od 3 osób wzwyż) - policja ma prawo do użycia wszelkich dostępnych środków by zatrzymać taką osobę/grupę. 


Art.5 - Pojazdy 

§1 
Zabrania się taranowania innych helikopterów. 

§2 
Zezwala się na taranowanie innych pojazdów, pod warunkiem posiadania odpowiedniego powodu. 

§3 
Zabrania się kradzieży pojazdu na zasadzie “Czekam aż gracz wyjdzie i wchodzę na miejsce kierowcy nim zamknie samochód”. Takie czyny będą karane banem 

§4 
Zabrania się wchodzienia na pozycję pasażera w celu wymuszemia podwiezienia lub kradzieży.


Art.6 - Wykroczenia niedopuszczalne 

§1 
Popełnianie samobójstwa w celu zniknięcia z listy poszukiwanych jest karane banem czasowym. 

§2 
GHOSTING, czyli przekazywanie informacji jako trup jest zabronione. 

§3 
Wykorzystywanie błędów w oprogramowaniu lub bugów. O wykrytych błędach należy informować administratorów. 

§4 
Ucieczka z więzienia w inny sposób niż wpłacenie kaucji lub pomoc innego gracza z użyciem helikoptera. 

§5 
Samobójstwo w momencie porażenia prądem lub zakucia w kajdanki. 

§6 
Współpraca z osobą która łamie regulamin serwera (np. przyjęcie dużej ilości gotówki, która jest owocem łamania regulaminu serwera). 

§7 
Używanie zhakowanych przedmiotów. 

§8 
Wykorzystywanie glitchy w grze. 

§9 
Zabronione jest wykorzystywanie błędów w skrypcie gry. Taki błąd należy zgłosić do admina. 

§10 
Zabronione jest wykorzystywanie cheatów 

§11 
BATTLELOG - czyli wylogowanie się podczas jakiejkolwiek akcji jest zabronione. 

Art.7 - Stany Wyjątkowe 

§1 
W przypadku destabilizacji sytuacji w Altis, policja ma prawo użyć środków wymiernych do swej obecnej siły i skali zagrożenia. 

§2 
Policja może ogłosić stan wyjątkowy (za pośrednictwem cywila lub poprzez smsa do cywili). W takim przypadku wszelkie przestępstwa przeciwko porządkowi, życiu i zdrowi będą karane podwójnie. Przy czym dla przykładu przemyt narkotyków, gdy nie jest powiązany z próbą ucieczki jest traktowany normalnie. Informacja o stanie wyjątkowym powinna być powtarzana co ok. 15 min. Policja ma prawo typować cywila, który za pośrednictwem SIDE CHAT’u będzie informował o tym zajściu pozostałych graczy. Samowolne ogłaszanie stanu wyjątkowego przez cywila grozi banem. Stan wyjątkowy może ogłosić policjant, który ma stopień kapitana. 

§3 
Uzbrojone lotnictwo policji może zostać użyte tylko za zgodą najwyższego przedstawiciela policji, który jest na służbie. 

§4 
W przypadku gdy pojazd latający odmawia lądowania, nie reaguje na sygnał dźwiękowy, ucieka lub nie wykonuje poleceń, policja ma prawo zestrzelić owy pojazd przy pomocy wszelkich dostępnych środków (wykluczając celowe zderzenie helikopter-helikopter). Przed otwarciem ognia, policja musi powiadomić podejrzany helikopter smsem o natychmiastowym nakazie lądowania. Jeżeli ścigany helikopter nie zastosuje się do wydawanych mu poleceń, policja powinna oddać strzały ostrzegawcze. Jeśli zostaną one zignorowane wówczas policyjny helikopter może otworzyć ogień w celu wymuszenia lądowania. 

§5 
Policja ma prawo użyć ciężkiego sprzętu lądowego podczas : 

a) Stanu wyjątkowego, 
b) napadu na bank, 
c) gdy przeciwnik dysponuje przewagą, 
d) podczas ataku terrorystycznego. 
e) próby zatrzymania pojazdu opancerzonego (ostrzeżenie sms) i neutralizacji wszelkiego zagrożenia z tym związanego. 


§6 
Podczas trwania stanu wyjątkowego, policja ma prawo aresztować każdego Cywila w danym regionie. 


Art.8 - Posiadłości 

§1 
Każdy cywil ma prawo do posiadania własnego domu oraz garażu. 

§2 
Nie można wykorzystywać domu do ucieczki przed wymiarem sprawiedliwości. 

§3 
Policja ma prawo wyłamać zamek w posiadłości, jeśli jej właściciel jest ścigany w związku z podejrzeniem dokonania przestępstwa i/lub nie reaguje na polecenie policji. 

§4 
Policja ma prawo wyłamać zamek w posiadłości i przeszukać budynek, jeśli istnieje uzasadnione podejrzenie dokonania przestępstwa. 

§5 
Policja nie ma prawa wyłamywać zamków i przeszukiwać losowych posiadłości.</t><br/>
=======
"<t color='#00ff00'>Regulamin Altisland BEST

Zasady i wytyczne

Szanuj innych graczy i adminów!!!!!!!!!!!

Administratorzy serwerów Altisland to ochotnicy, którzy dobrowolnie poświęcają swój czas, aby pomóc w utrzymaniu serwerów.
Nie będziemy tolerować molestowanie, lekceważenie lub ataków osobistych wobec każdego członka naszej społeczności.
Jeśli chcesz zgłosić sie na administratora, skontaktuj się z administracją. Jeśli chcesz zgłosić coś ważnego używaj do tego forum.

1. Wstęp
Jeśli logujesz się i grasz na serwerze AltisLand BEST obowiązuje Ciebie ten regulamin. Przestrzegaj jego zasad - jego nieznajomość nie jest okolicznością łagodzącą. Jeśli notorycznie naruszasz jego zasady, utrudniając grę innym użytkownikom, administracja serwera może ukarać cię czasowym banem, a wyjątkowych przypadkach nawet usunięciem konta.
Wszelkie kary administracyjne nakłada tylko i wyłącznie administracja serwera. Prośby o odwołanie/skrócenie bana należy kierować do administracji. Na forum znajduje się odpowiedni dział. Rolą Adminów nie jest represjonowanie graczy, tylko utrzymanie zasad i ładu na serwerze. Chcemy abyś się dobrze bawił, pamiętając o tym żeby nie utrudniać gry innym.
1. Życie ludzkie jest najwyższą wartością. Osoby, które w sposób ewidentny nie będą wykazywać poszanowania dla własnego życia będą blokowane.
2. Restart - restart jest rozwiązaniem technicznym, mającym na celu usprawnienie działania serwera. Nie jest to zjawisko mające jakikolwiek wpływ na RP. Restart nie kończy akcji, restart nie jest katatrofą, restart nie zdejmuje z listy, nie wymazuje pamięci. Wszystkie akcje RP toczące się przed restartem powinny zostać po nim dokończone.
3. Sytuacje, które nie zostaną ujęte w regulaminie muszą być zawsze analizowane pod kątem RP. To, że nie zostały wymienione nie oznacza, że w przypadku stwierdzenia braku RP nie zostaną wręczone odpowiednie kary, nagrody.

2. Role Graczy

CYWIL
Może parać się legalnymi i nielegalnymi zajęciami.
Cywil może napadać na sklepy, na innych cywili czy rebeliantów.
Cywil może otworzyć ogień po uprzedniej interakcji sms, czat, w bliskiej odległości czat głosowy działa na około 10m
Zabrania się strzelania do Medyka (nawet na strefach gdzie jest zniesiony RDM).
Cywil ma zakaz okradania medyka oraz kradzieży pojazdów należących do frakcji medycznej. 
Zasady RDM i VDM, Zasada Nowego Życia i BattleLog obowiązują Cywila.

POLICJA
•Policja ma prawo zatrzymać każdy pojazd do kontroli pod warunkiem, że ma ku temu powód i trafne podejrzenia. Nie można zatrzymywać każdego lub większości pojazdów bez większych ku temu podejrzeń.
•Policja ma prawo organizować blokady drogowe, celem zatrzymania pojazdu.
•Policja ma prawo użyć paralizatora bez ostrzeżenia tylko i wyłącznie przeciw osobie poszukiwanej, oraz na tzw. troli, także na strefach prac nielegalnych np. diler, przetwarzanie heroiny itp. Osób wysiadających przy rutynowej kontroli drogowej. Zabronione jest używanie paralizatora do zatrzymania szybko jadących pojazdów, a jedynie na pojazdy które dopiero ruszyły np. zaraz po kradzieży z parkingu, zabronione jest także paraliżowanie gracza tylko do rutynowej kontroli, jeśli gracz nie ucieka policjant może go skuć, podać powód zatrzymania np. rutynowa kontrola celem sprawdzenia czy ma przy sobie legalnie broń, czy nie posiada wytrychów lub czy ma licencje rebelianta posiadając eq rebelianta.
•Policja ma obowiązek wydać ustne ostrzeżenie oraz strzał ostrzegawczy przed użyciem broni ostrej. Wyjątek stanowi sytuacja gdy policjant stosuje broni w obronie własnej lub czuje mocne zagrożenie ze strony napastnika/napastników oraz gdy policja wdała się w konflikt z rebelią.
•Pojazdy, które znajdują się na miejscu toczonej akcji nie mogą zostać odholowywane przez policję do czasu zakończenia akcji, dotyczy to także pojazdów policyjnych.
•Policja ma prawo użycia ostrej broni, w sytuacjach gdy poszukiwany przekroczył granicę 500 000$ na liście, aby zmniejszyć ryzyko śmierci funkcjonariuszy lub osób postronnych.
* Policja może użyć ostrej broni w celu neutralizacji grupy, w której przynajmniej jeden członek przekroczył granicę 500 000$ na liście poszukiwanych.
•Podczas patrolów poza miastem w pojeździe policyjnym musi znajdować się minimum dwóch policjantów, w przypadku małej liczby policjantów 2-3 dopuszczalne są samodzielne patrole po za miastem funkcjonariuszy o randze wyższej niż kadet, w przypadku np. 3 policjantów kadet + inspektor + starszy sierżant na serwerze kadet musi być przydzielony do policjanta o wyższej randze lub patrol musi być prowadzony przez 3 policjantów.
•Zabronione jest przebywanie policji na bazach rebeliantów, oraz patrole tych baz, wyjątek stanowi pościg za rebeliantem
•Zabronione jest chowanie do garażu / hangaru / portu pojazdów podczas pościgu.
•Zabronione jest dawanie podwójnych mandatów np: Akcja z 1 policjantem który został zabity to rebeliant dostaje mandat za morderstwo nie 2 czyli za morderstwo i celownie/strzelanie do policjanta
•Podczas przeprowadzonej kontroli cywila jak nic nie znajdziesz nie legalnego i nie sprawia kłopotów nie przeszukujemy auta 
• Policja nie ma prawa dostarczać cywilom broni. Takie zachowanie skutkować będzie więzieniem a nawet Banem
•Hierarchia
 Struktury policji prezentują się w sposób oczywisty i zaprezentowany na kanale TS
- Osoby nie przestrzegające hierarchii będą ponosić konsekwencje dyscyplinarne
- Nieprzestrzeganiem hierarchii jest nie wykonanie rozkazów, ale również kwestionowanie ich kiedy może to zagrażać prowadzonym operacjom przez wprowadzenie chaosu na kanale TS
•. Kultura osobista
 Każdego ponoszą emocje ale nie jest to powodem do bluzgów czy wyzywania kolegów
- Osoby, które nie będą potrafiły panować nad emocjami będą ponosić konsekwencje dyscyplinarne
- Bez względu na sytuację wyzywanie kogoś od kretynów i debili np. dlatego, że stwierdził coś oczywistego z dniem wejścia regulaminu będzie karane degradacją.
. Patrole
- Każdy policjant pełniący służbę na serwerze ma obowiązek poruszać się w patrolu
- Patrol to grupa min. 2 policjantów
- Policjanci nie poruszający się w patrolach będą karani dyscyplinarnie
- Policjant pełniący służbę ma obowiązek pełnić ją w standardowym mundurze policyjnym. Wyjątki opisane są w punkcie: "Praca pod przykrywką"
- Policjant pełniący służbę, broń długą trzyma zawsze schowaną w plecaku lub w bagażniku pojazdu. Wyciąga ją tylko w stanie zagrożenia lub podczas akcji.
- Policjant pełniący służbę, kamizelkę ma obowiązek trzymać schowaną chyba, że występuje wyraźne zagrożenie lub policjant prowadzi operację, w której konieczne jest posiadanie kamizelki
- Policjant pełniący służbę, broń krótką trzyma zawsze w kaburze chyba że występuje wyraźne zagrożenie lub prowadzona operacja tego wymaga
- Podczas zatrzymania cywili policjant powinien wstrzymać się z kuciem ich w kajdanki do momentu kiedy konieczne będzie sprawdzenie ich tożsamości, chyba że mogą stwarzać oni zagrożenie
- Procedura przeprowadzania kontroli opisana jest pod "M" na serwerze
. Operacje i operacje specjalne
- Korzystanie z mundurów bojowych i wyposażenia[ AT]jest dozwolone jedynie w przypadku prowadzenia operacji przeciwko zorganizowanym grupom przestępczym - zgodę na taką operację wyraża najwyższy stopniem na serwerze. Zgodę na wykorzystanie ekwipunku jednostek specjalnych musi wyrazić funkcjonariusz w stopniu min. Komisarza. On również odpowiada za przebieg operacji, aczkolwiek nie musi w niej uczestniczyć.
- Drużyna bojowa prowadząca operację powinna być na osobnym kanale TS, na którym ma panować cisza, a głos zabiera jedynie dowodzący operacją. Pozostałe osoby głos zabierają jedynie jeśli ma to kluczowe znaczenie dla wykonywanej operacji (np. raportowanie pozycji lub wykonania etapów zadania czy o zmieniającej się sytuacji)
Policjant broni porządku i przestrzegania kodeksu karnego na serwerze. Ma specjalne uprawnienia dotyczące kontroli i zastosowania środków przymusu wobec innych postaci. Obowiązują go zasady funkcjonariusza. Ma dostęp do szerokiego spektrum broni. Policjant przed nickiem musi mieć policyjny tag (COP). Aby dołączyć do policji należy złożyć Podanie na policjanta.
Zasady Policjanta:
Policjant ma prawo użyć przemocy/środków przymusu wobec niestosujących się do jego poleceń.
Policjant ma prawo wymierzyć karę więzienia lub mandatu określoną w TKiM.
Policjant w mieście stara się używać tylko tazera chyba że akcja jest skomplikowana (wielu przestępców) zagrożenie życia innych cywili i policji.
Policjant ma prawo zatrzymać pojazd mechaniczny i skontrolować jego stan i zawartość bagażnika.
Policjant ma prawo czasowo zatrzymać gracza (zakuć w kajdanki) na czas rutynowej kontroli.
Jeśli policjant zakuwa w kajdanki z innego powodu niż rutynowa kontrola lub jeśli z jakiegoś powodu rutynowa kontrola ma trwać dłużej, policjant jest zobowiązany podać konkretny powód takiego zatrzymania.
Policjant ma prawo uszkodzić pojazd mechaniczny którym ucieka ścigany.
Policjant ma prawo otworzyć ogień z broni ostrej w razie zagrożenia życia bez ostrzeżenia.
Policja ma obowiązek kulturalnego traktowania innych graczy.
Policjant ma prawo otworzyć ogień w strefie bezpiecznej do osoby ściganej jeśli ta nie chce się dobrowolnie zatrzymać do kontroli.
Policjant ma zakaz przekazywania czy kupowania sprzętu policyjnego innym frakcjom.
Policjant nie może uleczać innych policjantów czy cywili w momencie gdy w pobliżu trwa akcja z użyciem broni ostrej. Zasada działa podobnie jak w przypadku procedur medyka. Uleczenie może nastąpić dopiero gdy akcja się zakończy.  Warunek leczenia wtedy kiedy nie ma żadnego medyka.
Policjant ma obowiązek przebywać na kanale TS3 podczas gry.
Policjant nie może przebywać na kanale grupy która prowadzi akcję zbrojną.
Posiadanie strojów wojskowych lub paramilitarnych jest powodem wystarczającym dla dogłębnej kontroli osobistej przez policjanta bez dodatkowej przyczyny.
Policja może wystawić mandat za posiadanie maski i nie okazanie dokumentu tożsamości.
Zasady RDM i VDM, Zasada Nowego Życia i BattleLog obowiązują Policjanta.

MEDYK
Medyk to osoba, która niesie pomoc rannym, poległym w walce, może również dostarczać prowiant potrzebującym oraz pełnić rolę pomocy drogowej. Medyk to frakcja neutralna dlatego zabrania się strzelać do medyków.
Zasady Medyka:
Medyk może udzielić pomocy drogowej lub dowieźć prowiant osobie wzywającej. Opłata za taką usługę pozostaje kwestią indywidualną ustalaną między osobą wzywającą a medykiem.
Medyk nie może pojawić się w miejscu gdzie trwa walka z użyciem broni ostrej. 
Medyk nie może uleczać poległych osób gdy w pobliżu trwa walka z użyciem broni ostrej. 
Medyk może uleczyć osoby dopiero po zakończeniu całej akcji. 
Medyk jest zobowiązany zapytać się policji lub członków grup rebelianckich czy akcja została zakończona poprzez SMS, Side Channel lub komunikację głosową. 
Medyk może pojawić się w okolicach akcji przed jej zakończeniem ale w takiej sytuacji musi zaznaczyć swoją obecność odpowiednimi środkami - żółty granat dymny, żółty świetlik, sygnalizacja świetlna i głosowa dostępna w pojeździe medycznym.
Medyk nie może posiadać broni i nie może brać udziału w zorganizowanych akcjach policji czy rebelii.
Medyk może zostać zatrzymany i ukarany przez policję gdy łamie Prawo Altis. 
Medyk ma obowiązek używać sygnalizacji dźwiękowej i świetlnej w przypadku gdy udaje się na interwencję. Bez takiej sygnalizacji Medyk ma obowiązek przestrzegać Zasad Ruchu Drogowego i Lotniczego. 
Medyk ma obowiązek przebywać na kanale TS3 podczas gry.
Medyk nie może przebywać na kanale grupy która prowadzi akcję zbrojną.
Medyk nie może faworyzować żadnej ze stron (Policja, Rebelia, Cywile).
Medyk nie może podnosić ekwipunku ani żadnych rzeczy w okolicy przed uleczeniem osoby poszkodowanej.
W przypadku gdy medyk natrafia na "zbugowane ciało/battlelog itd" po uleczeniu ma prawo podnieść pieniądze oraz obowiązek konfiskaty sprzętu i dostarczenie go policji oraz zgłosić denata administracji w celu usunięcia jego ciała.
Osoba która chce otrzymać pomoc od medyka po naciśnięciu przycisku zobowiązana jest czekać na jego pomoc.
Medyk ma prawo odmówić (odpowiednio uzasadniając odmowę) udzielenia pomocy jedynie w skrajnych przypadkach, takich jak: bezcelowe i nagminne samobójstwa, trollowanie i utrudnianie wykonywania obowiązków.
Medyk nie może grać na cywilu

REBELIA
Rebeliant to ktoś kto wznosi broń przeciwko rządowi. W tym przypadku przedstawicielem rządu jest Policja.
Żołnierzy jest jednak niewielu więc warto znaleźć sobie inne zajęcie niż polowanie na nich. Zamiast tego postaraj się wpaść na sposób jak wzbogacić rozrywkę pod względem RP, odgrywając swoją rolę najlepiej jak potrafisz.

1. Rebeliant jest osobą, która działając w dużej grupie przestępczej (+4 osoby) walczy z wojskiem lub napada na cywili. Za rebeliantów uznaje się również osoby działające w mniejszych grupach pod warunkiem używania przez nich sprzętu nieosiągalnego w inny sposób niż przystanie do partyzanckich grup.
2. Bycie rebeliantem nie usprawiedliwia zabijania innych graczy bez nawiązania z nimi interakcji głosowej ani innych form RDM.
3. Posiadanie strojów wojskowych lub paramilitarnych jest powodem wystarczającym dla dogłębnej kontroli osobistej bez dodatkowej przyczyny.
4. Rebelianci powinni być skoordynowanymi grupami które potrafią odgrywać swoje role
5. Każda grupa rebeliancka powinna sama zdecydować czy walczy z opresorem jakim są Policjia by uwolnić swoich rodaków, czy może woli ich gnębić celem wzbogacenia się.
6. Każda akcja zbrojna powinna być wynikiem działań wynikających z odgrywania przez nich roli
7. Rebeliant jak każdy cywil musi przestrzegać Zasady Nowego Życia
8. Rebelia nie ma prawa polować na policję. Wyjątkiem jest chęć zorganizowania zasadzki na funckjonariuszy.
9. Rebeliant ma prawo atakować bez interakcji członków Policji  pod warunkiem, że znajdują się oni poza miastami lub na czerwonych strefach  
10. Rebelianci mają możliwość dokonania ataku na obiekt publiczny (np. miasto) pod warunkiem, że uprzedzili o swoich zamiarach wojsko i cywili minimum 5 minut wcześniej, a na serwerze znajduje się co najmniej 4 Policjantów, w tym 1 w stopniu [………]. Cywili należy powiadomić za pośrednictwem chatu strony a wojsko poprzez wiadomość.
11. Zorganizowana grupa ma prawo dokonać ataku na miasto lub inne miejsce publiczne, musi jednak spełnić szereg wymagań:
• Uprzedzić cywili (side chat) oraz policję (SMS do najwyższego stopniem policjanta) minimum 5 minut wcześniej
• Upewnić się, że na serwerze pełni służbę min. 4 Policjantów 
• Upewnić się, że min. 1 z Policjant pełniących służbę na serwerze musi być w stopniu [……]
• Upewnić się, że nie ma miejsca równoległy atak na inne miasto
• Upewnić się, że nikt nie napada na Bank

GANGI:
1. Bycie w gangu nie jest nielegalne
2. Bycie gangu umożliwia przejęcie kryjówek gangu 
3. Policjia na każde przejęcie kryjówki gangu lub próbę przejęcia będzie odpowiadać zbrojnie.
4. Wypowiedzenie wojny gangow  
5. Gangi nie mogą zabijać cywili, chyba że dany cywil jest członkiem wrogiegu gangu i przebywa na terenie kontrolowanym przez Twój gang
6. Gangi nie mogą zabijać cywili, którzy nie są dla nich zagrożeniem. Mogą ich zranić, ale zabicie ich bez wyraźnego i oczywistego powodu będzie złamaniem zasad RDM



3.WYKROCZENIA
Ciężkie wykroczenia - lista przewinień karanych bezwzględnym banem
1. Ucieczka z więzienia w sposób inny niż wpłacenie kaucji lub ucieczka śmigłowcem
2. Samobójstwo, wylogowanie się, wyjście do lobby w celu uniknięcia konsekwencji aktualnych wydarzeń. Przykład: Jesteś skuty, związany, powalony, pod ostrzałem, rozbiłeś się pojazdem, ukradli Ci pojazd itd. itp.
3. Duplikowanie/kopiowanie przedmiotów. Jeśli jakiś gracz wręczy Ci podejrzany prezent NATYCHMIAST zgłoś to administracji i oddaj prezent/pieniądze administratorowi lub najwyższemu rangą policjantowi. Niedopełnienie obowiązku będzie karane banem.
4. Wykorzystywanie bugów i błędów w mechanice gry. Przykładowo: zabijanie ludzi poprzez pchanie łódki, samoduplikująca się rzecz, przedmiot, który można sprzedać drożej niż się go kupiło itd., itp. O takich błędach należy bezzwłocznie poinformować administrację.
5. Streamhunting (zdobywanie informacji o czyichś poczynaniach przez oglądanie transmisji z gry)
6. Współpraca z osobą łamiącą regulamin
7. Korzystanie z cheatów, hacków itd.
8. Battlelog - wylogowanie się podczas trwającej akcji RP (strzelanina, pościg, rabunek, bycie zakładnikiem, skutym, porażonym itd itp) lub do 15 min po niej.
9. Karą za popełnienie któregoś z powyższych wykroczeń jest ban min. 7 dniowy oraz usunięcie min. 25% środków z konta.


Kodeks Karny:
1. Zabójstwo funkcjonariusza Policji: 200,000
2. Morderstwo: 150,000
3. Zabójstwo z użyciem pojazdu: 100,000
4. Zastraszanie innych obywateli: do 100,000
5. Terroryzm: do 200,000
6. Porwanie: 100,000
7. Ucieczka z więzienia: 75,000
8. Pomoc w ucieczce z więzienia: 75,000
9. Napad na bank: 100,000
10. Napad na sklep: 25,000
11. Rabunek: 20% skradzionej kwoty, ale nie mniej niż 40,000
12. Kradzież pojazdu: 60,000
13. Włamanie: 100,000
14. Przemyt narkotyków: 160,000
15. Posiadanie narkotyków: do 80,000
16. Handel oraz planowany handel (sprzedaż) narkotykami: 30,000
17. Niezatrzymanie się do kontroli: do 150,000
18. Niewykonywanie poleceń Policji: do 150,000
19. Posiadanie przedmiotów nielegalnych: do 80,000
20. Próba przekupstwa funkcjonariusza: do 100,000
21. Działanie w zorganizowanej grupie przestepczej (min. 2 osoby): w zależności od rozmiaru grupy tj. do 100,000 od każdego członka grupy przestępczej
22. Przebywanie na terenie strefy zamkniętej: do 100,000

Prawo o Dostępności Broni Palnej:
1. Posiadanie broni bez zezwolenia: 80,000
2. Handel bronią lub amunicją: 80,000
3. Posiadanie broni nielegalnej: 80,000
4. Posiadanie broni w sposób widoczny w mieście: do 50,000
5. Posiadanie broni w sposób widoczny w obecności funkcjonariusza policji: do 50,000
WSZYSTKIE CENY BĘDĄ DOPIERO DOPASOWANE! OBOWIĄZUJĄ TE CO SĄ NA SERWERZE




4. Zachowania zabronione
Kategorycznie zabrania się jakiegokolwiek obrażania innych graczy na serwerze. Jeśli będziesz znieważał innych graczy, niezależnie of ich statusu i rangi, pożegnamy się z twoją postacią. Dotyczy to wszystkich postaci w grze (policji, rebelli, medyków, cywilów czy adminów). 
Jeśli notorycznie będziesz naruszać ten punkt regulaminu administracja będzie zmuszona usunąć twoje konto permanentnie.

(RDM)

RDM zabicie / zestrzelenie innego gracza bez jakiegokolwiek interakcji.
Należy wyraźnie zakomunikować nasze zamiary, przeciwnik musi mieć odpowiedni czas na reakcję.
Zemsta nie jest formą fabularnej rozgrywki RP.

Zasady RDM nie mają zastosowania w obszarach nielegalnych czyli czerwonych strefach.


(VDM)

VDM wykorzystuje swój pojazd jako broń ofensywną.
Świadome używanie pojazdów do zabicia innego gracza

Battlelog

Wyjście z gry podczas akcji, aby uniknąć sytuacji, role-play.
Zasada ta odnosi się także do chowania pojazdów. Obejmuje pojazdy biorące udział w strzelaninie, są ścigane lub biorą jaki kolwiek udział w akcji.

Trolling i Nękanie
Nadmierny trolling i molestowanie może być traktowane jako przestępstwo lub jeśli admin zadecyduje może usunąć gracza z serwera!

Rasizm
Rasizm jest kategorycznie zabroniony 

Nie spamuj na Side Chat

Promowanie innych serwerów wszelkiego rodzaju jest karane banem!



NOWE DODATKOWE ZASADY:
              -Opaski na oczy: służą do zamknięcia oczów przeciwnika zakaz ożywania na zielonych strefach.
              -Maski- są legalne jedynie kiedy odmówisz policji pokazania dowodu osobistego stają się nielegalne.
              -Opaski zaciskowe (Zippy)- Opaski są sprzętem nielegalnym. Służą do do skucia przeciwnika i jego ewentualnego porwania. Zakaz                        używania na zielonych strefach.
              -Pas Sahida: jest to pas samobójcy który po odpaleniu i odczekaniu około 3-5 sekund detonuje się. Zakaz używania na zielonych                          strefach. Interakcją przed użyciem pasa jest uprzedzenie osób znajdujących sie w pobliżu poprzez czat bezpośredni i odczekanie 5                      sekund.
              -Więzienie: lądując w więzieniu tracisz wszystkie nielegalne licencje oraz licencje rebelianta.
              -Ubezpieczenie pojazdów: Na serwerze przy garażu jest możliwość ubezpieczenia pojazdów jeśli to zrobisz w razie jakiejś dziwnej                           sytuacji serwer zwraca część pieniędzy za pojazd, jeśli tego nie zrobiłeś nie ma jakiejkolwiek możliwości rekompensaty za pojazd.
              -Podczas jakiejkolwiek akcji obowiązuje bezwzględny zakaz używania Taxi!!!:</t><br/>
>>>>>>> origin/master
" ;
};

if(_index isEqualTo 5) exitWith {
"Szukasz pracy policjanta medyka zapraszamy na ts.<br/><br/>
";
};

if(_index isEqualTo 6) exitWith {
"<t size='1.2px' align='center' color='#0099ff'>Ważne!!!</t><br/>
<t align='center' color='#0099ff'>Zginiesz poszukiwany tracisz licencje: gun, drive</t><br/><br/>

<t align='center'><t size='1.7px' align='center' color='#FF0000'>Idąc do więzienia tracisz licencje:</t><br/>
gun, driver, nielegalki, REBELKĘ!!!<br/><br/>

<t align='center'><t size='1.7px' align='center' color='#FF0000'>Sugestie</t><br/>
Masz jakieś pomysły zapraszamy na TS i forum.";
};

};

//Add Infos
((findDisplay 41500) displayCtrl 2304) ctrlSetStructuredText parseText ("<t size='0.8'>" + _infoText);
};
[] spawn life_fnc_InfoMenu;
