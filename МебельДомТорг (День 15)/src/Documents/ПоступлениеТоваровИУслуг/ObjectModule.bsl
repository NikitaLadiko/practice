
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр ТоварыНаСкладах Приход
	

	
	Движения.Взаиморасчеты.Записывать = Истина;
	Для Каждого ТекСтрокаТовраы Из Товраы Цикл
		Движение = Движения.Взаиморасчеты.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = Дата;
		Движение.Контрагент = Поставщик;
		Движение.Сумма = ТекСтрокаТовраы.Сумма;
	КонецЦикла;
	
	Движения.ТоварыНаСкладах.Записывать = Истина; 
	Движения.СебестоимостьТоваров.Записывать = Истина;
	Для Каждого ТекСтрокаТовраы Из Товраы Цикл
		// регистр Взаиморасчеты Расход
		Движение = Движения.ТоварыНаСкладах.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовраы.Товар;
		Движение.Склад = Склад;
		Движение.Количество = ТекСтрокаТовраы.Количество;
		// регистр СебестоимостьТоваров Приход	
		Движение = Движения.СебестоимостьТоваров.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовраы.Товар;
		Движение.Сумма = ТекСтрокаТовраы.Сумма;
		Движение.Количество = ТекСтрокаТовраы.Количество;
	КонецЦикла;

	// регистр РегистрБухУчет 
	Движения.РегистрБухУчет.Записывать = Истина;
	Движение = Движения.РегистрБухУчет.Добавить();
	Движение.СчетДт = ПланыСчетов.БухгалтерскийУчет.Товары;
	Движение.СчетКт = ПланыСчетов.БухгалтерскийУчет.Поставщик;
	Движение.Период = Дата;
	Движение.Сумма = СуммаДокумента;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	
	СуммаДокумента = Товраы.Итог("Сумма");
	
	
КонецПроцедуры
