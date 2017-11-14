﻿&НаКлиенте
Перем СчетчикОжиданияФоновогоФормированияОтчета;
&НаКлиенте
Перем ТаймаутОжиданияФоновогоФормированияОтчета;
&НаКлиенте
Перем ИмяТабличногоДокумента;
&НаКлиенте
Перем АдресТабличногоДокумента;
&НаКлиенте
Перем ТаймаутОжиданияОжиданияТекстаОбласти;

//начало текста модуля
//Спасибо @naa4sb и Ивану Корниенко за данный модуль.

#Область Служебные_функции_и_процедуры

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02)","ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом","Дано Открылось окно предупреждения с заголовком ""Заголовок"" и текстом ""Текст""","Шаг проверяет, что сейчас на экране появилось окно предупреждения.","UI.Всплывающие окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(Парам01,Парам02)","ТабличныйДокументФормыСИменемСталРавенМакетуСИменем","Дано Табличный документ формы с именем ""РеквизитТабличныйДокумент"" стал равен макету с именем ""ИмяМакета""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументСталРавенМакету(Парам01,Парам02)","ТабличныйДокументСталРавенМакету","Дано Табличный документ ""РеквизитТабличныйДокумент"" стал равен макету ""ИмяМакета""","Шаг позволяет проверить, что табличный документ соответствует эталону. Макет ищется сначала в обработке фича файла, затем в каталоге проекта. Чтобы получить mxl файл из TestClient, в тонком клиенте будет сделана попытка сохранить табличный документ в файл. В Web клиенте он всегда будет считываться по ячейкам. Детали в справке, в разделе, посвященному сравнению табличного документа с эталоном.","UI.Табличный документ.Проверка значения табличного документа.Макет эталон");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПоследнемСообщенииTestClientЕстьСтрока(Парам01)","ВПоследнемСообщенииTestClientЕстьСтрока","Дано В последнем сообщении TestClient есть строка ""НужнаяСтрока""","Шаг позволяет проверить содержание самого нового сообщения пользователю.","UI.Сообщения пользователю");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01)","ВАктивномОкнеОткрыласьФормаСЗаголовком","Дано В активном окне открылась форма с заголовком ""Заголовок формы""","Шаг проверяет, что в активном окне есть нужная форма.","UI.Окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01)","ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд","Дано Ожидаем завершения фонового формирования отчета в течение ""10"" секунд","Шаг ждёт указанное время, что завершились активные фоновые задания.","UI.Отчеты");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(Парам01,Парам02,Парам03)","ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд","И     я жду когда в табличном документе ""РеквизитТабличныйДокумент"" заполнится ячейка ""r4c2"" в течение 120 секунд","По таймеру проверяет, что указанная ячейка табличного документа не пустая.","UI.Табличный документ.Ожидание значения");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Парам01,Парам02)","ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд","Затем я жду, что в сообщениях пользователю будет подстрока ""Нужное мне значение"" в течении 30 секунд");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Парам01,Парам02)","ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд","Затем я жду, что в сообщениях пользователю будет подстрока ""Нужное мне значение"" в течение 30 секунд","Ждет появления в сообщениях пользователю подстроки в течение нужного времени","UI.Сообщения пользователю");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции

#КонецОбласти



#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Дано Открылось окно предупреждения с заголовком "Заголовок" и текстом "Текст"
//@ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02)
Процедура ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02) Экспорт
	АктивноеОкно = КонтекстСохраняемый.ТестовоеПриложение.НайтиОбъект(Тип("ТестируемоеОкноКлиентскогоПриложения"), Парам01, , 5);
	Если АктивноеОкно = Неопределено Тогда
		ВызватьИсключение "Окно с заголовком " + Парам01 + " не найдено!";
	КонецЕсли;
	Контекст.Вставить("АктивноеОкно",АктивноеОкно);
	ФормаОкна = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяФорма"), Парам01,,5);
	Если ФормаОкна = Неопределено Тогда
		ВызватьИсключение "Форма окна с заголовком " + Парам01 + " не найдена!";
	КонецЕсли;
	ПолеПредупреждения = ФормаОкна.НайтиОбъект(Тип("ТестируемоеПолеФормы"), Парам02,,5);
	Если ПолеПредупреждения = Неопределено Тогда
		ВызватьИсключение "Предупреждение с текстом """ + Парам02 + """ не найдено!";
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Функция ПолучитьАктивноеОкноИзТестовоеПриложение()
	Возврат КонтекстСохраняемый.ТестовоеПриложение.ПолучитьАктивноеОкно();
КонецФункции	

&НаКлиенте
Функция НайтиФормыТекущегоОкна()
	ОкноПриложения         = ПолучитьАктивноеОкноИзТестовоеПриложение();
	МассивФорм             = ОкноПриложения.НайтиОбъекты(Тип("ТестируемаяФорма"));
	Возврат МассивФорм;
КонецФункции	

&НаКлиенте
//Дано Табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен макету с именем "ИмяМакета"
//@ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(Парам01,Парам02)
Процедура ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета) Экспорт
	ТабДокБыло  = Ванесса.ПолучитьМакетОбработки(ИмяМакета);
	
	Если ТабДокБыло = Неопределено Тогда
		//будем искать макет в каталоге проекта
		ТабДокБыло = Ванесса.НайтиМакетВКаталогеПроекта(ИмяМакета);
	КонецЕсли;	 
	
	ЭлементТД   = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяРеквизита,Истина);
	ТабДокСтало = Ванесса.ПолучитьТабличныйДокументTestClient(ЭлементТД);
	Ванесса.ПроверитьРавенствоТабличныхДокументовТолькоПоЗначениям(ТабДокБыло, ТабДокСтало);
КонецПроцедуры

&НаКлиенте
//Дано Табличный документ "РеквизитТабличныйДокумент" стал равен "ИмяМакета"
//@ТабличныйДокументСталРавенМакету(Парам01,Парам02)
Процедура ТабличныйДокументСталРавенМакету(ИмяРеквизита, ИмяМакета) Экспорт
	ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета);
КонецПроцедуры

&НаКлиенте
//Дано В последнем сообщении TestClient есть строка "Стр"
//@ВПоследнемСообщенииTestClientЕстьСтрока( Стр )
Процедура ВПоследнемСообщенииTestClientЕстьСтрока( Стр ) Экспорт
	МассивСообщений = КонтекстСохраняемый.ТестовоеПриложение.ПолучитьАктивноеОкно().ПолучитьТекстыСообщенийПользователю();
	Если МассивСообщений.Количество() = 0 Тогда
		ВызватьИсключение "Не найдено ни одного сообщения пользователю!";
	КонецЕсли;	 
	Если Найти( НРег( МассивСообщений[ МассивСообщений.Количество() - 1 ]), НРег( Стр )) = 0 Тогда
		ВызватьИсключение "Строка <" + Стр + "> не найдена в последнем сообщении пользователю. Найдено: " + МассивСообщений[ МассивСообщений.Количество()- 1];
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Дано В активном окне открылась форма с заголовком "Заголовок формы"
//@ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01)
Процедура ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01) Экспорт
	АктивноеОкно = ПолучитьАктивноеОкноИзТестовоеПриложение();
	ОткрытаяФорма = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяФорма"), Парам01, , 15);
	Если ОткрытаяФорма = Неопределено Тогда
		ВызватьИсключение "Форма с заголовком " + Парам01 + " не найдена!";
	КонецЕсли;	 
КонецПроцедуры

&НаСервере
Функция ПроверитьЗавершениеФоновогоЗаданияНаСервере()
	СтруктураОтбора = Новый Структура();
	СтруктураОтбора.Вставить("Состояние",			СостояниеФоновогоЗадания.Активно);
	//СтруктураОтбора.Вставить("Начало",				ТекущаяДата() - 60);
	СтруктураОтбора.Вставить("РегламентноеЗадание",	Неопределено);
	МассивФоновыхЗаданий = ФоновыеЗадания.ПолучитьФоновыеЗадания(СтруктураОтбора);
	Для каждого ФоновоеЗадание Из МассивФоновыхЗаданий Цикл
		Сообщить(ФоновоеЗадание.Ключ);
		Сообщить(ФоновоеЗадание.Наименование);
		Сообщить(ФоновоеЗадание.Начало);
	КонецЦикла;
	Возврат МассивФоновыхЗаданий.Количество() = 0;
КонецФункции

&НаКлиенте
Процедура ПроверитьЗавершениеФоновогоЗадания()
	Если ПроверитьЗавершениеФоновогоЗаданияНаСервере() Тогда
		Ванесса.ПродолжитьВыполнениеШагов(Ложь);
		// Добавляем паузу в 1 секунду для отрисовки отчета в табличном документе после завершения фонового
		Ванесса.Sleep(1);
	Иначе
		СчетчикОжиданияФоновогоФормированияОтчета = СчетчикОжиданияФоновогоФормированияОтчета + 1;
		Если СчетчикОжиданияФоновогоФормированияОтчета > ТаймаутОжиданияФоновогоФормированияОтчета Тогда
			Ванесса.ПродолжитьВыполнениеШагов(Истина,"Превышение таймаутуа ожидания завершения фонового задания.");
		Иначе
			ПодключитьОбработчикОжидания("ПроверитьЗавершениеФоновогоЗадания", 1, Истина);
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры
	
&НаКлиенте
//Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
//@ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01)
Процедура ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01) Экспорт
	ТаймаутОжиданияФоновогоФормированияОтчета = Число(Парам01);
	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ПроверитьЗавершениеФоновогоЗадания", 1, Истина);
КонецПроцедуры



&НаКлиенте
Процедура ПроверитьЗначениеЯчейкиТабличногоДокумента()
	Попытка
		ЭлементФормы = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяТабличногоДокумента,Истина);
	Исключение
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	ТекстОбласти = ЭлементФормы.ПолучитьТекстОбласти(АдресТабличногоДокумента);
	
	Если ЗначениеЗаполнено(ТекстОбласти) Тогда
		Ванесса.ПродолжитьВыполнениеШагов(Ложь);
	Иначе	
		Если ТаймаутОжиданияОжиданияТекстаОбласти < ТекущаяДата() Тогда
			Ванесса.ПродолжитьВыполнениеШагов(Истина,"Ожидали, что ячейка <" + АдресТабличногоДокумента + "> будет заполнена.");
		Иначе
			ПодключитьОбработчикОжидания("ПроверитьЗначениеЯчейкиТабличногоДокумента", 1, Истина);
		КонецЕсли;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И я жду когда в табличном документе "РеквизитТабличныйДокумент" заполнится ячейка "r4c2" в течение 120 секунд
//@ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(Парам01,Парам02,Парам03)
Процедура ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(ИмяТабДок,АдресЯчейки,КолСекунд) Экспорт
	ТаймаутОжиданияОжиданияТекстаОбласти      = ТекущаяДата() + Число(КолСекунд);
	ИмяТабличногоДокумента                    = ИмяТабДок;
	АдресТабличногоДокумента                  = АдресЯчейки;
	
	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ПроверитьЗначениеЯчейкиТабличногоДокумента", 1, Истина);
КонецПроцедуры




&НаКлиенте
Процедура ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд()
	ИмяОбработчикаОжидания = "ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд";
	
	Попытка
		МассивСообщений = КонтекстСохраняемый.ТестовоеПриложение.ПолучитьАктивноеОкно().ПолучитьТекстыСообщенийПользователю();
	Исключение
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	Для Каждого СообщениеПользователю Из МассивСообщений Цикл
		Если Найти(НРег(СообщениеПользователю),НРег(НужнаяПодстрокаВСообщениях)) > 0 Тогда
			ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
			Ванесса.ПродолжитьВыполнениеШагов();
			Возврат;
		КонецЕсли;	 
	КонецЦикла;	
	
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,"Ожидали, что в сообщениях пользователю будет подстрока <" + НужнаяПодстрокаВСообщениях + ">");
		Возврат;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
//Затем я жду, что в сообщениях пользователю будет подстрока "Нужное мне значение" в течении 30 секунд
//@ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КолСекунд)
Процедура ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КоличествоСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	КоличествоСекундОбработкаОжидания = КоличествоСекунд;
	НужнаяПодстрокаВСообщениях        = Стр;
	ПодключитьОбработчикОжидания("ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд",1);
КонецПроцедуры

&НаКлиенте
//Затем я жду, что в сообщениях пользователю будет подстрока "Нужное мне значение" в течение 30 секунд
//@ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Стр,КолСекунд)
Процедура ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Стр,КоличествоСекунд) Экспорт
	ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КоличествоСекунд);
КонецПроцедуры


СчетчикОжиданияФоновогоФормированияОтчета = 0;
ТаймаутОжиданияФоновогоФормированияОтчета = 0;