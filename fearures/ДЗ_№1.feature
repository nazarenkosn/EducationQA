﻿#language: ru

@tree

Функционал: ДЗ №1

Как Ученик я хочу
1. Написать сценарный тест на проверку расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены. Выгрузить созданный тест в репозиторий на GitHub. В качестве отчета пришлите ссылку на созданный feature файл в репозитории.
2. Написать сценарный тест на то, что при добавлении Услуги в документ Заказ (подсистема Продажи) в поле Количество можно ввести значение (может быть падение). В качестве отчета пришлите ссылку на созданный feature файл в репозитории.
 
чтобы Получить сертификат 

Сценарий: выполнение ДЗ №1 (тест5)
Дано Я открыл новый сеанс TestClient или подключил уже существующий
* 1: Заполнение документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Колбаса'
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '400,00'
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
* Проверка пункта 1
	Тогда таблица формы с именем "Товары" стала равной:
	| 'Цена'   | 'Количество' | 'Сумма'    |
	| '400,00' | '3'          | '1 200,00' |
* Проверка пункта 2
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Доставка'
	Когда Проверяю шаги на Исключение:
		|'И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"'|
	И я закрываю все окна клиентского приложения	
	И я закрываю главное окно TestClient