﻿#language: ru

@tree

Функционал: тест на проверку расчета поля Количество (итог) документа Заказ. 


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: тест на проверку расчета поля Количество (итог) документа Заказ. 
*Запуск экспортного сценария
И Заполнение шапки документа Заказ
*Проверка расчета поля количества
*заполнение Тач части
	Когда открылось окно "Заказ (создание) *"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Тапочки"
	И я перехожу к следующему реквизиту
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "3"
	И в таблице 'Товары' я завершаю редактирование строки
*проверка расчета поля количества Итог	
	И элемент формы с именем 'ТоварыИтогКоличество' стал равен "3"
	
	
