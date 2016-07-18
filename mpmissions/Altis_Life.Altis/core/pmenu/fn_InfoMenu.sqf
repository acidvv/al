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
if(_index isEqualTo 2) exitWith {"Admini: Acid, Arek, Veyron<br/><a color='#0099ff' href='www.altisland.pl'>Rozączając się z serwera nieprzepisowo możesz stracić wszystko</a>"};

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
"<t color='#00ff00'>Regulamin Altisland BEST<br/>

Zasady i wytyczne<br/>

Szanuj innych graczy i adminów!!!!!!!!!!!<br/>

Administratorzy serwerów Altisland to ochotnicy, którzy dobrowolnie poświęcają swój czas,<br/>
 aby pomóc w utrzymaniu serwerów.
Nie będziemy tolerować molestowanie, lekceważenie lub ataków osobistych wobec każdego<br/>
 członka naszej społeczności.<br/>
Jeśli chcesz zgłosić sie na administratora, skontaktuj się z administracją. Jeśli chcesz<br/>
 zgłosić coś ważnego używaj do tego forum.<br/>

1. Wstęp<br/>
Jeśli logujesz się i grasz na serwerze AltisLand BEST obowiązuje Ciebie ten regulamin.<br/>
 Przestrzegaj jego zasad - jego nieznajomość nie jest okolicznością łagodzącą.<br/>
 Jeśli notorycznie naruszasz jego zasady, utrudniając grę innym użytkownikom,<br/>
 administracja serwera może ukarać cię czasowym banem, a wyjątkowych przypadkach nawet usunięciem konta.<br/>
Wszelkie kary administracyjne nakłada tylko i wyłącznie administracja serwera.<br/>
 Prośby o odwołanie/skrócenie bana należy kierować do administracji.<br/>
 Na forum znajduje się odpowiedni dział. Rolą Adminów nie jest represjonowanie graczy,<br/>
 tylko utrzymanie zasad i ładu na serwerze. Chcemy abyś się dobrze bawił, pamiętając o tym żeby nie utrudniać gry innym.<br/>
1. Życie ludzkie jest najwyższą wartością. Osoby, które w sposób ewidentny nie będą wykazywać<br/>
 poszanowania dla własnego życia będą blokowane.
2. Restart - restart jest rozwiązaniem technicznym, mającym na celu usprawnienie działania serwera.<br/>
 Nie jest to zjawisko mające jakikolwiek wpływ na RP. Restart nie kończy akcji, restart nie jest katatrofą,<br/>
 restart nie zdejmuje z listy, nie wymazuje pamięci. Wszystkie akcje RP toczące się przed restartem<br/>
 powinny zostać po nim dokończone.<br/>
3. Sytuacje, które nie zostaną ujęte w regulaminie muszą być zawsze analizowane pod kątem RP. To że<br/>
 nie zostały wymienione nie oznacza, że w przypadku stwierdzenia braku RP nie zostaną wręczone odpowiednie kary, nagrody.<br/>

2. Role Graczy<br/>

CYWIL<br/>
Może parać się legalnymi i nielegalnymi zajęciami.<br/>
Cywil może napadać na sklepy, na innych cywili czy rebeliantów.<br/>
Cywil może otworzyć ogień po uprzedniej interakcji sms, czat, w bliskiej odległości czat głosowy działa na około 10m<br/>
Zabrania się strzelania do Medyka (nawet na strefach gdzie jest zniesiony RDM).<br/>
Cywil ma zakaz okradania medyka oraz kradzieży pojazdów należących do frakcji medycznej. <br/>
Zasady RDM i VDM, Zasada Nowego Życia i BattleLog obowiązują Cywila.<br/>

POLICJA<br/>
•Policja ma prawo zatrzymać każdy pojazd do kontroli pod warunkiem, że ma ku temu powód i trafne podejrzenia.<br/>
 Nie można zatrzymywać każdego lub większości pojazdów bez większych ku temu podejrzeń.<br/>
•Policja ma prawo organizować blokady drogowe, celem zatrzymania pojazdu.<br/>
•Policja ma prawo użyć paralizatora bez ostrzeżenia tylko i wyłącznie przeciw osobie poszukiwanej, oraz na tzw.<br/>
 troli, także na strefach prac nielegalnych np. diler, przetwarzanie heroiny itp. Osób wysiadających przy <br/>
 rutynowej kontroli drogowej. Zabronione jest używanie paralizatora do zatrzymania szybko jadących pojazdów,<br/>
 a jedynie na pojazdy które dopiero ruszyły np. zaraz po kradzieży z parkingu, zabronione jest także paraliżowanie<br/>
 gracza tylko do rutynowej kontroli, jeśli gracz nie ucieka policjant może go skuć, podać powód zatrzymania np.<br/>
 rutynowa kontrola celem sprawdzenia czy ma przy sobie legalnie broń, czy nie posiada wytrychów lub czy ma licencje<br/>
 rebelianta posiadając eq rebelianta.<br/>
•Policja ma obowiązek wydać ustne ostrzeżenie oraz strzał ostrzegawczy przed użyciem broni ostrej. Wyjątek stanowi <br/>
sytuacja gdy policjant stosuje broni w obronie własnej lub czuje mocne zagrożenie ze strony napastnika/napastników<br/>
 oraz gdy policja wdała się w konflikt z rebelią.<br/>
•Pojazdy, które znajdują się na miejscu toczonej akcji nie mogą zostać odholowywane przez policję do czasu zakończenia akcji,<br/>
 dotyczy to także pojazdów policyjnych.<br/>
•Policja ma prawo użycia ostrej broni, w sytuacjach gdy poszukiwany przekroczył granicę 500 000$ na liście,<br/>
 aby zmniejszyć ryzyko śmierci funkcjonariuszy lub osób postronnych.<br/>
* Policja może użyć ostrej broni w celu neutralizacji grupy, w której przynajmniej jeden członek przekroczył granicę<br/>
 500 000$ na liście poszukiwanych.<br/>
•Podczas patrolów poza miastem w pojeździe policyjnym musi znajdować się minimum dwóch policjantów, w przypadku małej<br/>
 liczby policjantów 2-3 dopuszczalne są samodzielne patrole po za miastem funkcjonariuszy o randze wyższej niż kadet,<br/>
 w przypadku np. 3 policjantów kadet + inspektor + starszy sierżant na serwerze kadet musi być przydzielony do policjanta<br/>
 o wyższej randze lub patrol musi być prowadzony przez 3 policjantów.<br/>
•Zabronione jest przebywanie policji na bazach rebeliantów, oraz patrole tych baz, wyjątek stanowi pościg za rebeliantem<br/>
•Zabronione jest chowanie do garażu / hangaru / portu pojazdów podczas pościgu.<br/>
•Zabronione jest dawanie podwójnych mandatów np: Akcja z 1 policjantem który został zabity to rebeliant dostaje mandat<br/>
 za morderstwo nie 2 czyli za morderstwo i celownie/strzelanie do policjanta<br/>
•Podczas przeprowadzonej kontroli cywila jak nic nie znajdziesz nie legalnego i nie sprawia kłopotów nie przeszukujemy auta <br/>
• Policjant który poniósł śmierć w akcji nie ma prawa do tej akcji wrócić. Za koniec akcji uznajemy śmierć wszystkich <br/>
Polcjantów biorących w niej udział. Wyjątkiem jest sytuacja kiedy na serwerze jest 4 lub mniej polcjantów. <br/>   
·        Policja nie ma prawa dostarczać cywilom broni. Takie zachowanie skutkować będzie więzieniem a nawet Banem<br/>
•Hierarchia<br/>
 Struktury policji prezentują się w sposób oczywisty i zaprezentowany na kanale TS<br/>
- Osoby nie przestrzegające hierarchii będą ponosić konsekwencje dyscyplinarne<br/>
- Nieprzestrzeganiem hierarchii jest nie wykonanie rozkazów, ale również kwestionowanie ich kiedy może to zagrażać<br/>
 prowadzonym operacjom przez wprowadzenie chaosu na kanale TS<br/>
•. Kultura osobista<br/>
 Każdego ponoszą emocje ale nie jest to powodem do bluzgów czy wyzywania kolegów<br/>
- Osoby, które nie będą potrafiły panować nad emocjami będą ponosić konsekwencje dyscyplinarne<br/>
- Bez względu na sytuację wyzywanie kogoś od kretynów i debili np. dlatego, że stwierdził coś oczywistego z dniem wejścia<br/>
 regulaminu będzie karane degradacją.<br/>
. Patrole<br/>
- Każdy policjant pełniący służbę na serwerze ma obowiązek poruszać się w patrolu<br/>
- Patrol to grupa min. 2 policjantów<br/>
- Policjanci nie poruszający się w patrolach będą karani dyscyplinarnie<br/>
- Policjant pełniący służbę ma obowiązek pełnić ją w standardowym mundurze policyjnym. Wyjątki opisane są w punkcie: <br/>
"Praca pod przykrywką"<br/>
- Policjant pełniący służbę, broń długą trzyma zawsze schowaną w plecaku lub w bagażniku pojazdu. Wyciąga ją tylko w stanie<br/>
 zagrożenia lub podczas akcji.<br/>
- Policjant pełniący służbę, kamizelkę ma obowiązek trzymać schowaną chyba, że występuje wyraźne zagrożenie lub policjant prowadzi operację,<br/>
 w której konieczne jest posiadanie kamizelki<br/>
- Policjant pełniący służbę, broń krótką trzyma zawsze w kaburze chyba że występuje wyraźne zagrożenie lub prowadzona operacja tego wymaga<br/>
- Podczas zatrzymania cywili policjant powinien wstrzymać się z kuciem ich w kajdanki do momentu kiedy konieczne będzie<br/>
 sprawdzenie ich tożsamości, chyba że mogą stwarzać oni zagrożenie<br/>
- Procedura przeprowadzania kontroli opisana jest pod "M" na serwerze<br/>
. Operacje i operacje specjalne<br/>
- Korzystanie z mundurów bojowych i wyposażenia[ AT]jest dozwolone jedynie w przypadku prowadzenia operacji przeciwko<br/>
 zorganizowanym grupom przestępczym - zgodę na taką operację wyraża najwyższy stopniem na serwerze. Zgodę na wykorzystanie<br/>
 ekwipunku jednostek specjalnych musi wyrazić funkcjonariusz w stopniu min. Komisarza. On również odpowiada za przebieg<br/>
 operacji, aczkolwiek nie musi w niej uczestniczyć.<br/>
- Drużyna bojowa prowadząca operację powinna być na osobnym kanale TS, na którym ma panować cisza, a głos zabiera jedynie dowodzący operacją.<br/>
 Pozostałe osoby głos zabierają jedynie jeśli ma to kluczowe znaczenie dla wykonywanej operacji (np. raportowanie pozycji lub<br/>
 wykonania etapów zadania czy o zmieniającej się sytuacji)<br/>
Policjant broni porządku i przestrzegania kodeksu karnego na serwerze. Ma specjalne uprawnienia dotyczące kontroli i zastosowania <br/>
środków przymusu wobec innych postaci. Obowiązują go zasady funkcjonariusza. Ma dostęp do szerokiego spektrum broni. Policjant przed nickiem <br/>
musi mieć policyjny tag (COP). Aby dołączyć do policji należy złożyć Podanie na policjanta.<br/>
Zasady Policjanta:<br/>
Policjant ma prawo użyć przemocy/środków przymusu wobec niestosujących się do jego poleceń.<br/>
Policjant ma prawo wymierzyć karę więzienia lub mandatu określoną w TKiM.<br/>
Policjant w mieście stara się używać tylko tazera chyba że akcja jest skomplikowana (wielu przestępców) zagrożenie życia innych cywili i policji.<br/>
Policjant ma prawo zatrzymać pojazd mechaniczny i skontrolować jego stan i zawartość bagażnika.<br/>
Policjant ma prawo czasowo zatrzymać gracza (zakuć w kajdanki) na czas rutynowej kontroli.<br/>
Jeśli policjant zakuwa w kajdanki z innego powodu niż rutynowa kontrola lub jeśli z jakiegoś powodu rutynowa kontrola ma trwać dłużej,<br/>
 policjant jest zobowiązany podać konkretny powód takiego zatrzymania.<br/>
Policjant ma prawo uszkodzić pojazd mechaniczny którym ucieka ścigany.<br/>
Policjant ma prawo otworzyć ogień z broni ostrej w razie zagrożenia życia bez ostrzeżenia.<br/>
Policja ma obowiązek kulturalnego traktowania innych graczy.<br/>
Policjant ma prawo otworzyć ogień w strefie bezpiecznej do osoby ściganej jeśli ta nie chce się dobrowolnie zatrzymać do kontroli.<br/>
Policjant ma zakaz przekazywania czy kupowania sprzętu policyjnego innym frakcjom.<br/>
Policjant nie może uleczać innych policjantów czy cywili w momencie gdy w pobliżu trwa akcja z użyciem broni ostrej. Zasada działa podobnie<br/>
 jak w przypadku procedur medyka. Uleczenie może nastąpić dopiero gdy akcja się zakończy.  Warunek leczenia wtedy kiedy nie ma żadnego medyka.<br/>
Policjant ma obowiązek przebywać na kanale TS3 podczas gry.<br/>
Policjant nie może przebywać na kanale grupy która prowadzi akcję zbrojną.<br/>
Posiadanie strojów wojskowych lub paramilitarnych jest powodem wystarczającym dla dogłębnej kontroli osobistej przez policjanta bez dodatkowej przyczyny.<br/>
Policja może wystawić mandat za posiadanie maski i nie okazanie dokumentu tożsamości.<br/>
Zasady RDM i VDM, Zasada Nowego Życia i BattleLog obowiązują Policjanta.<br/>

MEDYK<br/>
Medyk to osoba, która niesie pomoc rannym, poległym w walce, może również dostarczać prowiant potrzebującym oraz pełnić rolę pomocy drogowej.<br/>
 Medyk to frakcja neutralna dlatego zabrania się strzelać do medyków.<br/>
Zasady Medyka:<br/>
Medyk może udzielić pomocy drogowej lub dowieźć prowiant osobie wzywającej. Opłata za taką usługę pozostaje kwestią<br/>
 indywidualną ustalaną między osobą wzywającą a medykiem.<br/>
Medyk nie może pojawić się w miejscu gdzie trwa walka z użyciem broni ostrej. <br/>
Medyk nie może uleczać poległych osób gdy w pobliżu trwa walka z użyciem broni ostrej. <br/>
Medyk może uleczyć osoby dopiero po zakończeniu całej akcji. <br/>
Medyk jest zobowiązany zapytać się policji lub członków grup rebelianckich czy akcja została zakończona poprzez SMS, Side Channel lub komunikację głosową. <br/>
Medyk może pojawić się w okolicach akcji przed jej zakończeniem ale w takiej sytuacji musi zaznaczyć swoją obecność odpowiednimi<br/>
 środkami - żółty granat dymny, żółty świetlik, sygnalizacja świetlna i głosowa dostępna w pojeździe medycznym.<br/>
Medyk nie może posiadać broni i nie może brać udziału w zorganizowanych akcjach policji czy rebelii.<br/>
Medyk może zostać zatrzymany i ukarany przez policję gdy łamie Prawo Altis. <br/>
Medyk ma obowiązek używać sygnalizacji dźwiękowej i świetlnej w przypadku gdy udaje się na interwencję. Bez takiej sygnalizacji <br/>
Medyk ma obowiązek przestrzegać Zasad Ruchu Drogowego i Lotniczego. <br/>
Medyk ma obowiązek przebywać na kanale TS3 podczas gry.<br/>
Medyk nie może przebywać na kanale grupy która prowadzi akcję zbrojną.<br/>
Medyk nie może faworyzować żadnej ze stron (Policja, Rebelia, Cywile).<br/>
Medyk nie może podnosić ekwipunku ani żadnych rzeczy w okolicy przed uleczeniem osoby poszkodowanej.<br/>
W przypadku gdy medyk natrafia na "zbugowane ciało/battlelog itd" po uleczeniu ma prawo podnieść pieniądze oraz obowiązek konfiskaty sprzętu<br/>
 i dostarczenie go policji oraz zgłosić denata administracji w celu usunięcia jego ciała.<br/>
Osoba która chce otrzymać pomoc od medyka po naciśnięciu przycisku zobowiązana jest czekać na jego pomoc.<br/>
Medyk ma prawo odmówić (odpowiednio uzasadniając odmowę) udzielenia pomocy jedynie w skrajnych przypadkach, takich jak: bezcelowe i nagminne<br/>
 samobójstwa, trollowanie i utrudnianie wykonywania obowiązków.<br/>
Medyk nie może grać na cywilu<br/>

REBELIA<br/>
Rebeliant to ktoś kto wznosi broń przeciwko rządowi. W tym przypadku przedstawicielem rządu jest Policja.<br/>
Żołnierzy jest jednak niewielu więc warto znaleźć sobie inne zajęcie niż polowanie na nich. Zamiast tego postaraj się wpaść na sposób jak<br/>
 wzbogacić rozrywkę pod względem RP, odgrywając swoją rolę najlepiej jak potrafisz.<br/>

1. Rebeliant jest osobą, która działając w dużej grupie przestępczej (+4 osoby) walczy z wojskiem lub napada na cywili. Za rebeliantów<br/>
 uznaje się również osoby działające w mniejszych grupach pod warunkiem używania przez nich sprzętu nieosiągalnego w inny sposób niż przystanie do partyzanckich grup.<br/>
2. Bycie rebeliantem nie usprawiedliwia zabijania innych graczy bez nawiązania z nimi interakcji głosowej ani innych form RDM.<br/>
3. Posiadanie strojów wojskowych lub paramilitarnych jest powodem wystarczającym dla dogłębnej kontroli osobistej bez dodatkowej przyczyny.<br/>
4. Rebelianci powinni być skoordynowanymi grupami które potrafią odgrywać swoje role<br/>
5. Każda grupa rebeliancka powinna sama zdecydować czy walczy z opresorem jakim są Policjia by uwolnić swoich rodaków, czy może woli ich gnębić celem wzbogacenia się.<br/>
6. Każda akcja zbrojna powinna być wynikiem działań wynikających z odgrywania przez nich roli<br/>
7. Rebeliant jak każdy cywil musi przestrzegać Zasady Nowego Życia<br/>
8. Rebelia nie ma prawa polować na policję. Wyjątkiem jest chęć zorganizowania zasadzki na funckjonariuszy.<br/>
9. Rebeliant ma prawo atakować bez interakcji członków Policji  pod warunkiem, że znajdują się oni poza miastami lub na czerwonych strefach <br/> 
10. Rebelianci mają możliwość dokonania ataku na obiekt publiczny (np. miasto) pod warunkiem, że uprzedzili o swoich zamiarach wojsko i cywili<br/>
 minimum 5 minut wcześniej, a na serwerze znajduje się co najmniej 4 Policjantów, w tym 1 w stopniu [………]. Cywili należy powiadomić za pośrednictwem chatu strony a wojsko poprzez wiadomość.<br/>
11. Zorganizowana grupa ma prawo dokonać ataku na miasto lub inne miejsce publiczne, musi jednak spełnić szereg wymagań:<br/>
• Uprzedzić cywili (side chat) oraz policję (SMS do najwyższego stopniem policjanta) minimum 5 minut wcześniej<br/>
• Upewnić się, że na serwerze pełni służbę min. 4 Policjantów <br/>
• Upewnić się, że min. 1 z Policjant pełniących służbę na serwerze musi być w stopniu [……]<br/>
• Upewnić się, że nie ma miejsca równoległy atak na inne miasto<br/>
• Upewnić się, że nikt nie napada na Bank<br/>

GANGI:<br/>
1. Bycie w gangu nie jest nielegalne<br/>
2. Bycie gangu umożliwia przejęcie kryjówek gangu <br/>
3. Policjia na każde przejęcie kryjówki gangu lub próbę przejęcia będzie odpowiadać zbrojnie.<br/>
4. Wypowiedzenie wojny gangow  <br/>
5. Gangi nie mogą zabijać cywili, chyba że dany cywil jest członkiem wrogiegu gangu i przebywa na terenie kontrolowanym przez Twój gang<br/>
6. Gangi nie mogą zabijać cywili, którzy nie są dla nich zagrożeniem. Mogą ich zranić, ale zabicie ich bez wyraźnego i oczywistego powodu będzie złamaniem zasad RDM<br/>



3.WYKROCZENIA<br/>
Ciężkie wykroczenia - lista przewinień karanych bezwzględnym banem<br/>
1. Ucieczka z więzienia w sposób inny niż wpłacenie kaucji lub ucieczka śmigłowcem<br/>
2. Samobójstwo, wylogowanie się, wyjście do lobby w celu uniknięcia konsekwencji aktualnych wydarzeń. Przykład: Jesteś skuty, związany, powalony,<br/>
 pod ostrzałem, rozbiłeś się pojazdem, ukradli Ci pojazd itd. itp.<br/>
3. Duplikowanie/kopiowanie przedmiotów. Jeśli jakiś gracz wręczy Ci podejrzany prezent NATYCHMIAST zgłoś to administracji i oddaj prezent/pieniądze administratorowi<br/>
 lub najwyższemu rangą policjantowi. Niedopełnienie obowiązku będzie karane banem.<br/>
4. Wykorzystywanie bugów i błędów w mechanice gry. Przykładowo: zabijanie ludzi poprzez pchanie łódki, samoduplikująca się rzecz, przedmiot,<br/>
 który można sprzedać drożej niż się go kupiło itd., itp. O takich błędach należy bezzwłocznie poinformować administrację.<br/>
5. Streamhunting (zdobywanie informacji o czyichś poczynaniach przez oglądanie transmisji z gry)<br/>
6. Współpraca z osobą łamiącą regulamin<br/>
7. Korzystanie z cheatów, hacków itd.<br/>
8. Battlelog - wylogowanie się podczas trwającej akcji RP (strzelanina, pościg, rabunek, bycie zakładnikiem, skutym, porażonym itd itp) lub do 15 min po niej.<br/>
9. Karą za popełnienie któregoś z powyższych wykroczeń jest ban min. 7 dniowy oraz usunięcie min. 25% środków z konta.<br/>


Kodeks Karny:<br/>
1. Zabójstwo funkcjonariusza Policji: 200,000<br/>
2. Morderstwo: 150,000<br/>
3. Zabójstwo z użyciem pojazdu: 100,000<br/>
4. Zastraszanie innych obywateli: do 100,000<br/>
5. Terroryzm: do 200,000<br/>
6. Porwanie: 100,000<br/>
7. Ucieczka z więzienia: 75,000<br/>
8. Pomoc w ucieczce z więzienia: 75,000<br/>
9. Napad na bank: 100,000<br/>
10. Napad na sklep: 25,000<br/>
11. Rabunek: 20% skradzionej kwoty, ale nie mniej niż 40,000<br/>
12. Kradzież pojazdu: 60,000<br/>
13. Włamanie: 100,000<br/>
14. Przemyt narkotyków: 160,000<br/>
15. Posiadanie narkotyków: do 80,000<br/>
16. Handel oraz planowany handel (sprzedaż) narkotykami: 30,000<br/>
17. Niezatrzymanie się do kontroli: do 150,000<br/>
18. Niewykonywanie poleceń Policji: do 150,000<br/>
19. Posiadanie przedmiotów nielegalnych: do 80,000<br/>
20. Próba przekupstwa funkcjonariusza: do 100,000<br/>
21. Działanie w zorganizowanej grupie przestepczej (min. 2 osoby): w zależności od rozmiaru grupy tj. do 100,000 od każdego członka grupy przestępczej<br/>
22. Przebywanie na terenie strefy zamkniętej: do 100,000<br/>

Prawo o Dostępności Broni Palnej:<br/>
1. Posiadanie broni bez zezwolenia: 80,000<br/>
2. Handel bronią lub amunicją: 80,000<br/>
3. Posiadanie broni nielegalnej: 80,000<br/>
4. Posiadanie broni w sposób widoczny w mieście: do 50,000<br/>
5. Posiadanie broni w sposób widoczny w obecności funkcjonariusza policji: do 50,000<br/>
WSZYSTKIE CENY BĘDĄ DOPIERO DOPASOWANE! OBOWIĄZUJĄ TE CO SĄ NA SERWERZE<br/>




4. Zachowania zabronione<br/>
Kategorycznie zabrania się jakiegokolwiek obrażania innych graczy na serwerze. Jeśli będziesz znieważał innych graczy, niezależnie of ich statusu i rangi,<br/>
 pożegnamy się z twoją postacią. Dotyczy to wszystkich postaci w grze (policji, rebelli, medyków, cywilów czy adminów). <br/>
Jeśli notorycznie będziesz naruszać ten punkt regulaminu administracja będzie zmuszona usunąć twoje konto permanentnie.<br/>

(RDM)<br/>

RDM zabicie / zestrzelenie innego gracza bez jakiegokolwiek interakcji.<br/>
Należy wyraźnie zakomunikować nasze zamiary, przeciwnik musi mieć odpowiedni czas na reakcję.<br/>
Zemsta nie jest formą fabularnej rozgrywki RP.<br/>

Zasady RDM nie mają zastosowania w obszarach nielegalnych czyli czerwonych strefach.<br/>


(VDM)<br/>

VDM wykorzystuje swój pojazd jako broń ofensywną.<br/>
Świadome używanie pojazdów do zabicia innego gracza<br/>

Battlelog<br/>

Wyjście z gry podczas akcji, aby uniknąć sytuacji, role-play.<br/>
Zasada ta odnosi się także do chowania pojazdów. Obejmuje pojazdy biorące udział w strzelaninie, są ścigane lub biorą jaki kolwiek udział w akcji.<br/>

Trolling i Nękanie<br/>
Nadmierny trolling i molestowanie może być traktowane jako przestępstwo lub jeśli admin zadecyduje może usunąć gracza z serwera!<br/>

Rasizm<br/>
Rasizm jest kategorycznie zabroniony <br/>

Nie spamuj na Side Chat<br/>

Promowanie innych serwerów wszelkiego rodzaju jest karane banem!<br/>



NOWE DODATKOWE ZASADY:<br/>
              -Opaski na oczy: służą do zamknięcia oczów przeciwnika zakaz ożywania na zielonych strefach.<br/>
              -Maski- są legalne jedynie kiedy odmówisz policji pokazania dowodu osobistego stają się nielegalne.<br/>
              -Opaski zaciskowe (Zippy)- Opaski są sprzętem nielegalnym. Służą do do skucia przeciwnika i jego ewentualnego porwania.<br/>
			  Zakaz  używania na zielonych strefach.<br/>
              -Pas Sahida: jest to pas samobójcy który po odpaleniu i odczekaniu około 3-5 sekund detonuje się. Zakaz używania na zielonych  strefach.<br/>
			  Interakcją przed użyciem pasa jest uprzedzenie osób znajdujących sie w pobliżu poprzez czat bezpośredni i odczekanie 5 sekund.<br/>
              -Więzienie: lądując w więzieniu tracisz wszystkie nielegalne licencje oraz licencje rebelianta.<br/>
              -Ubezpieczenie pojazdów: Na serwerze przy garażu jest możliwość ubezpieczenia pojazdów jeśli to zrobisz w razie jakiejś dziwnej <br/>
			  sytuacji serwer zwraca część pieniędzy za pojazd, jeśli tego nie zrobiłeś nie ma jakiejkolwiek możliwości rekompensaty za pojazd.<br/>
              -Podczas jakiejkolwiek akcji obowiązuje bezwzględny zakaz używania Taxi!!!</t><br/>
" ;
};

if(_index isEqualTo 5) exitWith {
"Szukasz pracy policjanta medyka zapraszamy na ts
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
