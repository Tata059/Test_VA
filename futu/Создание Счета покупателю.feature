﻿#language: ru

@tree

Функционал: Создание счета на оплату

Как Администратор я хочу
Создание счета на оплату 
чтобы Создание счета на оплату   

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий
	

Сценарий: Создание счета на оплату
//закрытие всех окон
И я закрываю все окна клиентского приложения
* Открытие документа Счет на оплату
	И В командном интерфейсе я выбираю "Продажи" "Счета покупателям"
	Тогда открылось окно "Счета покупателям"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение шапки документа	
	Тогда открылось окно "Счет покупателю (создание)"
	И из выпадающего списка с именем 'Контрагент' я выбираю точное значение "Василек ООО"


* Заполнение ТЧ документа	

	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' из выпадающего списка с именем 'ТоварыНоменклатура' я выбираю точное значение "Вводный курс"
	И я перехожу к следующему реквизиту
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "1,000"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка заполнения ТЧ
	Тогда таблица 'Товары' содержит строки:
		| 'Номенклатура' | 'Содержание услуги' | 'НДС' | 'Количество' | 'Единица' | 'Цена'     | 'Сумма'    | '% скидки' | 'Скидка' | '% НДС'   | 'Всего' | 'Расходы на единицу' | 'Отступ' |
		| 'Вводный курс' | 'Вводный курс'      | ''    | '1,000'      | 'шт'      | '3 000,00' | '3 000,00' | ''         | ''       | 'Без НДС' | '3 000' | '<...>'              | ''       |
	
		
* Запись документа
	и я нажимаю на кнопку "Записать"	
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
* Проведение документа	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Счет покупателю (создание) *" в течение 20 секунд
* Проверка создание документа
И таблица "Список" содержит строки:
	| 'Номер' | 
	| '$Номер$' | 

