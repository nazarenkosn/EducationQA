#language: ru

@tree

Функционал: создание номенклатуры в цикле

Как Ученик я хочу
создать номенклатуры 
чтобы изучить циклы 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание номенклатуры в цикле
	И Я запоминаю значение выражения '1' в переменную "НомерИтерации"
	И я делаю 10 раз
		И Я запоминаю значение выражения '"Товар " + $НомерИтерации$' в переменную "Наименование"
		И Я запоминаю значение выражения '0100 + $НомерИтерации$' в переменную "Код"
		И Я запоминаю значение выражения '$НомерИтерации$+1' в переменную "НомерИтерации"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                                                             | 'DeletionMark' | 'Code'  | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
			| '{"e1cib/data/Catalog.Items?ref="+StrReplace(New UUID, "-", "")}' | 'False'        | '$Код$' | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58792'  | ''            | '$Наименование$' | ''                 | '$Наименование$' | ''               |          |          |          |          |         |
	


