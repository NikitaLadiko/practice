Перем СчастливоеЧисло;

Процедура Приветствие()
	Сообщить ("Привет,мир!");
	Сообщить ("Hello, world!");	
КонецПроцедуры

Процедура УсловныеОператоры()	
	Если СчастливоеЧисло = 777 Тогда
		Сообщить("Все правильно");
	ИначеЕсли   СчастливоеЧисло = 888 Тогда
		Сообщить("Восьмерки");
	Иначе
		Сообщить ("Ошибка ");
	КонецЕсли
КонецПроцедуры

Процедура ЦиклическиеОператоры()
	 ИскомаяСумма = КвадратыЧисел(10,15);
	 Сообщить(ИскомаяСумма);
	 ИскомоеЧисло =1;
	 Пока ИскомоеЧисло*ИскомоеЧисло <30000 Цикл
		//Продолжить;
		//Прервать;
		ИскомоеЧисло = ИскомоеЧисло+1;
	КонецЦикла ;
	Сообщить (ИскомоеЧисло-1);
	
КонецПроцедуры

//Процедура КвадратыЧисел(НачальноеЗначение,КонечноеЗначение)
	//Для Счетчик = НачальноеЗначение По КонечноеЗначение Цикл
	//	Сообщить (Счетчик);
	//	Сообщить (Счетчик*Счетчик);
	//КонецЦикла ;	
//КонецПроцедуры
функция КвадратыЧисел(НачальноеЗначение,КонечноеЗначение)
	СуммаКвадратов=0;
	Для Счетчик = НачальноеЗначение По КонечноеЗначение Цикл
		Сообщить (Счетчик);
		Сообщить (Счетчик*Счетчик);
		СуммаКвадратов=СуммаКвадратов+Счетчик*Счетчик;
	КонецЦикла ;
	Возврат  СуммаКвадратов;
КонецФункции

Процедура УсловныеОператорыДень7()
	Если СчастливоеЧисло>=800 И СчастливоеЧисло <=1000 Тогда
		Сообщить ("СчастливоеЧисло входит в диапазон от 800 до 1000");
	КонецЕсли;

	Если СчастливоеЧисло <800 ИЛИ СчастливоеЧисло >1000 Тогда
		Сообщить ("СчастливоеЧисло не входит в диапазон от 800 до 1000");
	КонецЕсли;

	Если НЕ (СчастливоеЧисло >1000)  Тогда
		Сообщить ("СчастливоеЧисло вменьше или равно 1000");
	КонецЕсли;
КонецПроцедуры	
Процедура РаботаСПримитивнымиТипамиДанных();
	Строка1="       Привет";
	Строка2="мир!";
	ИтоговаяСтрока = Строка1+", "+Строка2+"     ";
	Сообщить(ИтоговаяСтрока);
	Сообщить(СокрЛП(ИтоговаяСтрока));
	СтрокаБезПробелов = СокрЛП(ИтоговаяСтрока);
	Сообщить(СтрДлина(СтрокаБезПробелов));
	Сообщить(СтрЗаменить(ИтоговаяСтрока,"!", "!!!"));

	Сообщить(СчастливоеЧисло%3);

	Сообщить(ТекущаяДата()+24*3600);

	ЗаданоСчастливоеЧисло = Ложь;
	Сообщить(ЗаданоСчастливоеЧисло);
	ЗаданоСчастливоеЧисло = НЕ ЗаданоСчастливоеЧисло;
	Сообщить(ЗаданоСчастливоеЧисло);
	Результат = СчастливоеЧисло/39 ;
	Сообщить(Результат);
	Сообщить(Цел(Результат));
	Сообщить(Окр(Результат));

	Сообщить(КонецМесяца(ТекущаяДата()));
	Сообщить(ДобавитьМесяц(ТекущаяДата(), 3));
КонецПроцедуры	

Процедура ПередНачаломРаботыСистемы(Отказ)
		 //Отказ=Истина;
		 
КонецПроцедуры

Процедура ПередЗавершениемРаботыСистемы(Отказ, ТекстПредупреждения)
	//ТекущаяДата1800 = КонецДня(ТекущаяДата())-6*3600+1;
	//Если ТекущаяДата()< ТекущаяДата1800 Тогда
	//	   Сообщить("Солнце еще высоко");
	//	   ОТказ=Истина;
	//КонецЕсли;
КонецПроцедуры
СчастливоеЧисло = 777;
//СчастливоеЧисло = 888;
//Приветствие();
//УсловныеОператоры();
//ЦиклическиеОператоры();
//УСловныеОператорыДень7();
//РаботаСПримитивнымиТипамиДанных();
