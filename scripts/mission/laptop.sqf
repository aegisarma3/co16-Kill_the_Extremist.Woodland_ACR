		
		createDialog "OPSAT_dialog";

		sleep 0.5;
		ctrlSetText [ 8001, "Estabelecendo OPSAT UPLINK. Aguarde." ];
		sleep 2;
		ctrlSetText [ 8001, "OPSAT UPLINK CONECTADO." ];
		sleep 1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Iniciando localização via satélite. Aguarde." ];
		sleep 2;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 00%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 02%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 05%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 06%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 10%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 12%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 16%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 17%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 20%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 25%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 32%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 41%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 44%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 52%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 60%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 62%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 68%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 74%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 79%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 84%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 88%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 96%" ];
		sleep 0.1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Enviando coordenadas: 100%" ];
		sleep 1;
		ctrlSetText [ 8001, "OPSAT UPLINK: Sucesso." ];
		sleep 1;




	['kill' , 'Eliminar Vladimir Katkić.','A informação deixada por Alexey foi confirmada pelo comando. Encontre e elimine Vladimir Katkić. Análise via satélite indica forte presença do inimigo. Prossiga com cautela.', blufor , [['kill_vladimir_task', getmarkerpos 'kill_vladimir' , 'mil_unknown' , 'ColorRed', ' Eliminar extremista']]] call SHK_Taskmaster_Add; 

	removeAllActions intel_dropbox;