﻿#language: ru

@tree

Функционал: прописать условие по заполнению поля Организация в заказе покупателя
 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: прописать условие по заполнению поля Организация в заказе покупателя
*открываем форму списка документов 
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
*Заполняем шапку
	Когда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
* условие по заполнению поля Организация	
	Если поле с именем 'Company' не заполнено Тогда
		И я нажимаю кнопку выбора у поля с именем 'Company'
		Тогда открылось окно "Организации"
		И в таблице 'List' я перехожу к строке:
			| "Код" | "Наименование"           |
			| "2"   | "Собственная компания 2" |
		И в таблице 'List' я активизирую поле с именем 'Description'
		И я нажимаю на кнопку с именем 'FormChoose'

	