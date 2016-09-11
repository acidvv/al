
_s_d={

	a_a set[1,[true,_e addaction["Drag",{

		_e=_this select 0;

		_e removeaction(_this select 2);

		a_a set[1,[false,-1,_e,objnull]];

		if(a_a select 2 select 0)then{a_a select 0 removeaction(a_a select 2 select 1);a_a set[2,[false]]};

		_u=_this select 1;

		if alive _e then{

			_e attachto[_u,[0,1,0]];

			a_a set[1,[false,_u,_u addaction["Drop",{

				_this select 0 removeaction(_this select 2);

				a_a set[1,[true,-1]];

				detach(_this select 3);

			},_e,10,false,true],_e]];

			waitUntil{if(!alive _u or !alive _e)then{

				_a=a_a select 1;

				_a select 1 removeAction(_a select 2);

				detach(_a select 3);

				true

			}else{false}or(a_a select 1 select 0)};

		}else{

			_u playAction"grabDrag";

			_u forceWalk true;

			["d_a","onEachFrame",{

				_e=_this select 0;

				_u=_this select 1;

				_e setPos(_u modelToWorld[0,1,0]);

				_e setdir(getDir _u+180);

				_e switchMove "AinjPpneMrunSnonWnonDb";

			},[_e,_u]]call BIS_fnc_addStackedEventHandler;

			a_a set[1,[false,_u,_u addAction["Drop",{

				_this select 0 removeaction(_this select 2);

				a_a set[1,[true,-1]];

				["d_a","onEachFrame"]call BIS_fnc_removeStackedEventHandler;

				_this select 3 switchMove"AinjPpneMstpSnonWrflDb_release";

				_this select 0 forceWalk false;

				_this select 0 playMove"amovpknlmstpsraswrfldnon";

			},_e,10],_e]];

			waitUntil{!alive _u or(if(animationState _u=="acinpknlmstpsraswrfldnon_acinpercmrunsraswrfldnon")then{

					["d_a","onEachFrame"]call BIS_fnc_removeStackedEventHandler;

					["d_a","onEachFrame",{

						_e=_this select 0;

						_u=_this select 1;

						_e setPos(_u modelToWorld[-0.18,0.15,0]);

						_e setdir(getDir _u+180);

						_e switchMove"AinjPfalMstpSnonWrflDf_carried_dead";

					},[_e,_u]]call BIS_fnc_addStackedEventHandler;

					waitUntil{!alive _u or(a_a select 1 select 0)};

					true

				}else{false})or(a_a select 1 select 0)

			};

			if !alive _u then{

				_a=a_a select 1;

				a_a set[1,[true,-1]];

				_a select 1 removeAction(_a select 2);

				["d_a","onEachFrame"] call BIS_fnc_removeStackedEventHandler;

				_a select 3 switchMove"AinjPpneMstpSnonWrflDb_release";

				_a select 1 forceWalk false

				//z_a select 1 playMove"amovpknlmstpsraswrfldnon";

			}

		}

	},[],0,false,true,"","_this distance _target<2.1"]]]
};


