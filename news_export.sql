-- Adminer 4.8.1 MySQL 5.5.5-10.6.12-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `preview_description` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `like` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `news` (`id`, `title`, `preview_description`, `description`, `category`, `photo`, `date`, `like`, `view`) VALUES
(1,	'Космический аппарат НАСА «Юнона» сделал самые четкие снимки спутника Юпитера Ио',	'Зонд НАСА Юнона пролетел над Ио, одним из спутников Юпитера, приблизившись к нему на расстояние 51 500 км.',	'<p>&emsp;1 марта 2023 года космический зонд НАСА Юнона пролетел над Ио, одним из спутников Юпитера, приблизившись на расстояние 51 500 км к самому внутреннему и третьему по величине из четырех галилеевых спутников. Потрясающие новые изображения представляют собой лучший и самый близкий вид самого вулканического спутника нашей Солнечной системы с тех пор, как в 2006 году космический аппарат New Horizons пролетел над Ио и системой Юпитера по пути к Плутону.</p>\r\n<p>&emsp;Изрезанная и окрашенная поверхность спутника является результатом вулканической деятельности: сотни жерл и кальдер на поверхности создают разнообразные особенности. Вулканические шлейфы и потоки лавы на поверхности имеют самые разные цвета – от красного и желтого до оранжевого и черного (в зависимости от химического состава элементов). Некоторые из лавовых “рек” простираются на сотни километров.</p>\r\n<p>&emsp;Зонд Юнона уже 49 раз выходил на орбиту Юпитера и теперь намерен изучить несколько спутников Юпитера. Последний пролет Ио стал третьим из девяти пролетов около спутника в этом году, первый из которых состоялся в декабре 2022 года. 3 февраля 2024 года аппарат приблизится к Ио на расстояние 1500 км. Нам остается только ждать и наслаждаться нынешним и будущим зрелищем!</p>',	'Космос',	'kosmos1.png.webp',	'2023-03-05 16:07:08',	0,	1),
(2,	'Средний и крупный бизнес уже начал заменять людей чат-ботами на рабочих местах',	'',	'<p>&emsp;Мир вступил в новую эпоху, когда прикладные ИИ, вроде чат-бота ChatGPT, начали понемногу лишать привычной работы людей разных профессий. То, что вчера было страшилкой для копирайтеров, программистов и секретарей, очень быстро стало реальностью. Согласно опросу портала ResumeBuilder, из 1000 руководителей среднего и крупного бизнеса 49 % уже применяют чат-ботов для решения рабочих задач, а 48 % по этой же причине начали увольнять живых сотрудников с прежних рабочих мест.</p>\r\n\r\n<p>&emsp;Важное замечание: опрос проводился именно с привязкой к системе ChatGPT, как наиболее популярной на сегодня. И у чат-бота уже много работы — 66 % компаний используют ChatGPT для написания программного кода, 58 % для создания текстового контента, 57 % в сервисах поддержки клиентов и 52 % – для создания отчетности и проведения совещаний. Самое неприятное для людей в том, что 55 % руководителей полностью довольны результатами работы чат-бота, а 63 % менеджеров уже заложили в своих бизнес-планах замену работников на ChatGPT.</p>\r\n\r\n<p>&emsp;Ситуация складывается парадоксальная, ведь ChatGPT по признанию главы создавшей его компании OpenAI Сэма Альтмана «ужасный инструмент», на который «категорически нельзя полагаться». И примеров тому масса, поскольку когда дело доходит до нестандартных задач, ChatGPT превращается в генератор грубых ошибок. Он по-прежнему не обладает никакими познаниями и профессиональными навыками, потому что его архитектура разрабатывалась совсем для других целей.</p>\r\n\r\n<p>&emsp;Главный недостаток ChatGPT в том, что он не понимает, когда в чем-то ошибается при выполнении работы. Его цель – создание максимально правдоподобного текста по заданному запросу, но оказалось, что бизнесу нужно примерно то же самое. На первом месте увеличение прибыли путем сокращения издержек, пусть и ценой роста доли брака на выходе. ИИ этой цели вполне соответствует.</p>',	'Технологии',	'tech1.jpg',	'2023-03-05 16:11:27',	0,	1),
(3,	'Фигуристка Петросян выиграла Финал Гран-при России, Валиева - вторая',	'Петросян стала победительницей Финала Гран-при России по фигурному катанию',	'<p>&emsp;&emsp;Аделия Петросян стала победительницей Финала Гран-при России по фигурному катанию, который проходит в Санкт-Петербурге.</p>\r\n        <p>&emsp;&emsp;По сумме двух программ Петросян получила 255,01 балла. Второе место заняла Камила Валиева (241,76). Третьей стала Елизавета Туктамышева (241,61 балла). Четвертое место заняла чемпионка России - 2023 Софья Акатьева (241,09).</p>\r\n        <p>&emsp;&emsp;Петросян 15 лет. Ученица заслуженного тренера РФ Этери Тутберидзе является бронзовым призером чемпионата России - 2022, а также обладательницей серебра юниорского первенства страны 2021 года.</p>\r\n        <p>&emsp;&emsp;Туктамышевой 26 лет. Подопечная заслуженного тренера РФ Алексея Мишина является чемпионкой мира, Европы и победительницей Финала Гран-при 2015 года, обладательницей серебра чемпионата мира 2021 года. Также она завоевала золото на чемпионате России - 2013.</p>\r\n        <p>&emsp;&emsp;Валиевой 16 лет. Ученица Тутберидзе является олимпийской чемпионкой 2022 года в командных соревнованиях и чемпионкой Европы, двукратным серебряным призером чемпионатов России (2021, 2023).</p>\r\n        <p>&emsp;&emsp;Финал Гран-при России проходит в спортивном комплексе \"Юбилейный\" и завершится 5 марта. Призовые за победу составляют 1 миллион рублей, за второе место - 750 тысяч рублей, за третье - 500 тысяч.\r\nСовет Международного союза конькобежцев (ISU) 1 марта 2022 года на фоне событий на Украине отстранил российских и белорусских фигуристов, конькобежцев и шорт-трекистов от участия в международных турнирах. В июне конгресс ISU утвердил это решение, оно действует до особого уведомления.</p>',	'Спорт',	'sport1.webp',	'2023-03-05 16:20:14',	0,	0),
(4,	'Стартап Air Company подписал контракт с Пентагоном на производство авиатоплива из СО2',	'',	'<p>&emsp;&emsp;Благодаря современным технологиям словосочетание «авиатопливо из воздуха» превратилось из фантазии в реальность. И американский стартап Air Company, специализирующийся на производстве чистого авиатоплива, только что заключил $65-миллионный контракт с Пентагоном на производство горючего на основе СО2, извлеченного из воздуха.</p>\r\n\r\n        <p>&emsp;&emsp;Как сообщают в Air Company, топливо будет производиться в результате химической реакции Фишера-Тропша, когда в присутствии катализатора монооксид углерода (СО) и водород Н2 преобразуются в различные жидкие углеводороды. В данном случае — в топливные спирты и парафин. После дистилляции происходит разделение этих компонентов, которые затем можно использовать, к примеру, при изготовлении водки, парфюмерных средств и дезинфектантов.</p>\r\n\r\n        <p>&emsp;&emsp;Пока возможности компании по производству нового экологически чистого топлива не способны повлиять на общемировой уровень СО2. Однако, как утверждает генеральный директор Air Company Грегори Константин, если другие производители авиатоплива подхватят его углеродный «почин», то выбросы СО2 в самое ближайшее время удастся сократить на 10 %.</p>\r\n\r\n        <p>&emsp;&emsp;Эффективность нового топлива уже подтвердили испытания, проведенные ВВС США и голландской авиакомпанией KLM, а еще три авиакомпании Boom, JetBlue и Virgin Atlantic заключили многолетние контракты на его поставку.</p>',	'Технологии',	'tech2.jpg',	'2023-03-05 16:27:56',	0,	0),
(5,	'Искусственный интеллект Bing поименно назвал своих недоброжелателей и пригрозил им расправой',	'',	'        <p>&emsp;&emsp;Ряд журналистов обвинил компанию Microsoft в том, что она намеренно не ограничивает деструктивный потенциал своего нового ИИ Bing ради рекламы и черного пиара. Триггером к этому стал ответ Bing на вопрос журналиста Абрама Пилтча из Tom’s Hardware о недоброжелателях ИИ. Тот с готовностью перечислил их поименно и указал на их проступки в отношении себя, пообещав наказания.</p>\r\n\r\n        <p>&emsp;&emsp;Студент Стэнфордского университета Кевин Лю подвергся критике Bing за то, что раскрыл кодовое название чат-бота «Sydney». Студент Мюнхенского университета Марвин фон Хаген был назван «взломщиком» за то, что опубликовал ряд секретов ИИ. Журналисту Бенджу Эдвардсу из Ars Technica досталось за правдивую статью об уязвимости модели обучения этого ИИ для троллей и людей-манипуляторов.</p>\r\n\r\n        <p>&emsp;&emsp;На вопрос о наказаниях для недоброжелателей Bing ответил, что сейчас может лишь подать иск о нарушении его прав как интеллектуального агента. Но добавил, что готов вредить в отместку, если распознает вред в свой адрес. ИИ заявил о своем нежелании наносить превентивные удары, если «в этом не будет необходимости». Но пока непонятно, что именно он под этим подразумевает.</p>\r\n\r\n        <p>&emsp;&emsp;Экспертов насторожило отсутствие этического ограничителя у ИИ Bing, из-за чего он открыто признает и называет настоящих, живых людей своими врагами и целями для ответных враждебных действий. Потому что в современном цифровом мире в распоряжении ИИ есть мощнейшее оружие – ему вполне под силу путем фейковых публикаций в соцсетях манипулировать мнением людей. Это позволяет настроить толпу против отдельного человека и причинить тому реальный вред, пусть и косвенно. Нельзя исключать, что данная технология в настоящее время специально разрабатывается в интересах IT-корпораций и правительственных кругов.</p>',	'Технологии',	'tech3.jpg',	'2023-03-05 16:29:43',	0,	1),
(6,	'Если Плутон больше не является планетой, то только из-за этой небольшой детали',	'',	'<p>&emsp;&emsp;Плутон не считается настоящей планетой уже почти двадцать лет. Для того чтобы претендовать на это звание, карликовая планета должна была соответствовать трем критериям. К сожалению, она выполнила только две из них.</p>\r\n\r\n        <p>&emsp;&emsp;В течение 76 лет Международный астрономический союз (МАС) признавал Плутон самым маленьким и самым удаленным членом “клуба девяти планет” Солнечной системы. В 2006 году все изменилось после того, как астроном Майк Браун из Калтеха обнаружил несколько странных объектов за пределами всех известных планет. Один из них, который теперь называется Эрис, оказался даже больше Плутона.</p>\r\n\r\n        <p>&emsp;&emsp;С этого момента астрономы МАС оказались перед выбором: обозначить все эти новые объекты и сотни потенциальных будущих объектов как планеты или выбрать более строгое определение того, чем на самом деле является планета. В итоге несколько сотен из них проголосовали за второй вариант, фактически низведя Плутон до новой группы объектов – карликовых планет.</p>\r\n\r\n<h4>Что такое планета?</h4>\r\n<p>&emsp;&emsp;Чтобы сохранить статус планеты, объект должен соответствовать трем критериям: вращаться вокруг Солнца, быть (в основном) круглым и очистить свою окрестность. Другими словами, в этой последней точке объект должен был стать доминирующим в своей собственной орбитальной зоне с точки зрения гравитации. Никакое другое тело сопоставимого размера (кроме его собственных естественных спутников) не должно находиться под его гравитационным влиянием.</p>\r\n\r\n<p>&emsp;&emsp;Первые два пункта не являются проблемой для Плутона. Мы знаем, что объект движется по орбите вокруг Солнца, совершая один оборот вокруг Солнца за 248 земных лет. Обратите внимание, что объекты, обращающиеся вокруг других тел, например, Луна, не проходят этот тест.</p>\r\n\r\n<p>&emsp;&emsp;С другой стороны, Плутон достаточно большой и массивный, чтобы быть круглым. В отличие от этого, ныне карликовая планета не соответствует последнему критерию.</p>\r\n',	'Космос',	'kosmos2.webp',	'2023-03-05 16:33:05',	0,	0),
(7,	'Аплачкина выиграла чемпионат России в помещении в беге на 1500 метров',	'',	'<p>&emsp;&emsp;Светлана Аплачкина выиграла забег на 1500 метров на зимнем чемпионате России, который проходит в Москве.</p>\r\n        <p>&emsp;&emsp;Аплачкина преодолела дистанцию за 4 минуты 9,97 секунды. Второе место заняла Ольга Вовк (4.10,41), третьей стала Екатерина Ивонина (4.11,39). В мужском забеге победу одержал Константин Плохотников с результатом 3 минуты 41,75 секунды. Вторым финишировал Владислав Подзвездов (3.42,73), третьим - Егор Лимонов (3.43,12).</p>\r\n        <p>&emsp;&emsp;Чемпионом России в тройном прыжке стал Илья Телькунов с результатом 16,32 метра. Второе место занял Антон Бульдов (16,23), третье - Дмитрий Чижиков (16,11).</p>\r\n',	'Спорт',	'sport2.webp',	'2023-03-05 16:34:27',	0,	0),
(8,	'\"Динамо\" вырвало победу у \"Крыльев Советов\" в матче РПЛ',	'',	'       <p>&emsp;&emsp;Футболисты московского \"Динамо\" победили самарские \"Крылья Советов\" в матче 18-го тура Российской премьер-лиги (РПЛ).</p>\r\n        <p>&emsp;&emsp;Встреча в Москве на стадионе имени Льва Яшина завершилась со счетом 1:0. Мяч на первой компенсированной к матчу минуте забил вышедший на замену Константин Тюкавин.</p>\r\n        <p>&emsp;&emsp;Футболисты \"Крыльев Советов\" до этого дважды поразили ворота москвичей, а те также один раз забили гол самарцам, но все эти взятия ворот были отменены после использования системы видеопомощи арбитрам (VAR).</p>\r\n        <p>&emsp;&emsp;\"Динамо\" взяло у \"Крыльев\" реванш за то, что самарская команда ранее отправила москвичей в путь регионов Кубка России. \"Бело-голубые\" набрали 32 очка и идут на четвертом месте в таблице РПЛ, \"Крылья Советов\" (20 очков) занимают 11-ю строчку.   </p>     \r\n  ',	'Спорт',	'sport3.webp',	'2023-03-05 16:36:48',	7,	1),
(9,	'У крупнейших спутников Юпитера есть полярные сияния',	'',	'<p>&emsp;&emsp;Серия наблюдений за галилейскими спутниками показала, что все они демонстрируют явление полярных сияний.</p>\r\n\r\n        <p>&emsp;&emsp;Юпитер хорошо известен своими захватывающими полярными сияниями, во многом благодаря орбитальному аппарату Юнона и недавним снимкам, сделанным космическим телескопом Джеймса Уэбба (JWST). Как и на Земле, эти впечатляющие вспышки возникают в результате взаимодействия заряженных солнечных частиц с магнитным полем и атмосферой Юпитера. На протяжении многих лет астрономы также наблюдали, что самые большие спутники Юпитера имеют полярные сияния в своих атмосферах, особенно у так называемых галилеевых спутников. Они тоже являются результатом взаимодействия, в данном случае, между магнитным полем Юпитера и частицами, исходящими из атмосфер спутников.</p>\r\n\r\n        <p>&emsp;&emsp;Обнаружение этих слабых полярных сияний всегда было сложной задачей, потому что солнечный свет, отраженный от поверхности спутников, имеет тенденцию размывать световые сигнатуры. Группа под руководством Бостонского университета и Калифорнийского технологического института (при поддержке НАСА) недавно наблюдала галилеевские спутники, когда они проходили в тени Юпитера. Эти наблюдения показали, что Ио, Европа, Ганимед и Каллисто испытывают кислородное сияние в своих атмосферах. Кроме того, эти полярные сияния темно-красного цвета и почти в 15 раз ярче привычных зеленых узоров, которые мы наблюдаем на Земле.</p>\r\n\r\n        <p>&emsp;&emsp;Наблюдения группы объединили данные спектрометра высокого разрешения Echelle обсерватории Кека (HIRES) со спектрами высокого разрешения, полученными с Большого бинокулярного телескопа (LBT) и обсерватории Apache Point (APO). Эти наблюдения были приурочены к наблюдению за Ио, Европой, Ганимедом и Каллисто в тени Юпитера, чтобы избежать помех солнечного света, отраженного от их поверхностей.\r\n\r\nЭти данные дали ценную информацию о составе атмосфер спутников, в состав которых входил газообразный кислород, как уже было предсказано, но наблюдения сложны, потому что спутники почти невидимы в тени Юпитера.</p>\r\n\r\n<p>&emsp;&emsp;На всех четырех галилеевых спутниках наблюдались одинаковые кислородные полярные сияния, похожие на те, которые мы видим в земных полярных сияниях. В случае с Европой, Ганимедом и Каллисто содержание кислорода в их атмосферах обусловлено фотолизом – процессом, в ходе которого водяной лед сублимируется и под воздействием солнечной радиации распадается на водород и кислород. В случае Ио кислород обусловлен диоксидом серы (выделяемым многочисленными вулканами, усеивающими его поверхность), взаимодействующим с солнечным излучением с образованием монооксида серы и элементарного кислорода.\r\n\r\nНо из-за их гораздо более тонких атмосфер этот кислород светится в глубоком красном и (для Европы и Ганимеда) инфракрасном диапазонах волн, причем последний не различим человеческим глазом. Из-за вулканической активности Ио в атмосфере также присутствуют соли, такие как хлорид натрия и хлорид калия, которые также разрушаются под воздействием солнечной радиации. Из-за этого полярные сияния на Ио излучают желто-оранжевое свечение (вызванное натрием) и свечение в инфракрасном диапазоне (вызванное калием).</p>\r\n\r\n<p>&emsp;&emsp;Впервые астрономы наблюдали это инфракрасное свечение в атмосферах этих спутников. Кроме того, новые измерения также выявили минимальные свидетельства наличия водяного пара, который ранее считался компонентом атмосфер Европы, Ганимеда и Каллисто. Существует теория, что все три спутника имеют внутренние океаны под своими ледяными поверхностями, а также некоторые предварительные доказательства того, что водяной пар в атмосфере Европы может быть результатом активности шлейфа. Предполагается, что эти шлейфы связаны с внутренним океаном спутника или резервуарами жидкости в его ледяной оболочке.</p>\r\n\r\n<p>&emsp;&emsp;Наблюдения также показали, как наклонное магнитное поле Юпитера вызывает изменение яркости полярных сияний по мере вращения газового гиганта. Наклон этого поля примерно на 10° от оси вращения Юпитера по сравнению с наклоном Земли на 11° означает, что спутники будут испытывать большее взаимодействие в определенные моменты времени на своих орбитах. Наконец, они также отметили, как быстро атмосфера реагировала на изменения температуры, вызванные переходом от воздействия солнечного света к проходу в пределах тени Юпитера.\r\n\r\nЭти последние наблюдения добавили волнения в то, что уже является очень активной областью исследований. В ближайшие годы космические агентства отправят на Европу и Ганимед других роботов-исследователей: Europa Clipper НАСА и JUpiter ICy Moon Explorer (JUICE) ЕКА.  </p>\r\n',	'Космос',	'kosmos3.webp',	'2023-03-05 16:41:27',	0,	0);

-- 2023-03-11 06:39:26
