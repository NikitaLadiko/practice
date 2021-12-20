
Процедура ОбработкаПроведения(Отказ, Режим)
	Движения.Взаиморасчеты.Записывать = Истина; 
	Движения.РегистрБухУчет.Записывать = Истина;
	Для Каждого ТекСтрокаПриходДенежныхСредств Из ПриходДенежныхСредств Цикл
		// регистр Взаиморасчеты Расход
		Движение = Движения.Взаиморасчеты.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = Дата;
		Движение.Контрагент = ТекСтрокаПриходДенежныхСредств.Контрагент;
		Движение.Сумма = ТекСтрокаПриходДенежныхСредств.Сумма; 
		// регистр РегистрБухУчет
		Движение = Движения.РегистрБухУчет.Добавить();
		Движение.СчетДт = ПланыСчетов.БухгалтерскийУчет.РасчетныйСчет;
		Движение.СчетКт = ПланыСчетов.БухгалтерскийУчет.Покупатели;
		Движение.Период = Дата;
		Движение.Сумма = ТекСтрокаПриходДенежныхСредств.Сумма;
		
	КонецЦикла;

	Для Каждого ТекСтрокаРасходДенежныхСредств Из РасходДенежныхСредств Цикл
		// регистр Взаиморасчеты Приход
		Движение = Движения.Взаиморасчеты.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Контрагент = ТекСтрокаРасходДенежныхСредств.Контрагент;
		Движение.Сумма = ТекСтрокаРасходДенежныхСредств.Сумма;
		// регистр РегистрБухУчет 
		Движение = Движения.РегистрБухУчет.Добавить();
		Движение.СчетДт = ПланыСчетов.БухгалтерскийУчет.Поставщик;
		Движение.СчетКт = ПланыСчетов.БухгалтерскийУчет.РасчетныйСчет;
		Движение.Период = Дата;
		Движение.Сумма = ТекСтрокаРасходДенежныхСредств.Сумма;
		
	КонецЦикла;
	
КонецПроцедуры
