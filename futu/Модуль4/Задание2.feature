﻿#language: ru

@tree

Функционал: отображение возвратов в отчете D2001 Продажи


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка отображение возвратов в отчете D2001 Продажи
И я закрываю все окна клиентского приложения
И Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"

*Настройка вывода регистратора в отчете
	Когда открылось окно "D2001 Продажи"
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно "Вариант \"Default\" отчета \"D2001 Продажи\""
	И в таблице 'SettingsComposerSettings' я перехожу к строке:
		| "Использование" | "Структура отчета"   |
		| "Нет"           | "<Детальные записи>" |
	И я перехожу к закладке с именем 'GroupFieldsSettings'
	И я перехожу к закладке с именем 'SelectedFieldsSettingsOff'
	И я перехожу к закладке с именем 'FilterSettingsOff'
	И я перехожу к закладке с именем 'OrderSettingsOff'
	И я перехожу к закладке с именем 'ConditionalAppearanceSettingsOff'
	И я перехожу к закладке с именем 'OutputParametersSettingsOff'
	И в таблице 'SettingsComposerSettings' я изменяю флаг с именем 'SettingsComposerSettingsUse'
	И в таблице 'SettingsComposerSettings' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно "D2001 Продажи"
	И я нажимаю на кнопку с именем 'FormGenerate'
*Проверка на возврат 
	Когда открылось окно "D2001 Продажи"
	И в табличном документе "Result" я перехожу к ячейке содержащей текст "Возврат товаров от покупателя 1 от 17.12.2024 14:46:30"
	

