-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 07 2024 г., 16:56
-- Версия сервера: 8.2.0
-- Версия PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop_book_practic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_ID` int NOT NULL AUTO_INCREMENT,
  `bookName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `page_count` int NOT NULL,
  `category` enum('Научная фантастика','Детектив','Научная литература','Приключения','Роман','Фэнтези','Комедия','Поэзия','Детская литература') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `book_picture` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `book_file` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`book_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`book_ID`, `bookName`, `author`, `page_count`, `category`, `description`, `book_picture`, `book_file`) VALUES
(1, 'Чаша небес', 'Грегори Бенфорд, Ларри Нивен', 544, 'Научная фантастика', 'Экспедиция, летящая от Земли к другой звездной системе, встречает в космосе нечто невероятное: чашеобразную конструкцию размером с Солнечную систему, внутри которой, подобно двигателю, горит звезда. Довольно быстро выясняется, что Чаша обитаема. Но куда она направляется? И кто ее создал? На объект посылают команду исследователей, но Первый Контакт идет совершенно не по плану. Теперь людям предстоит выяснить цели исполинского артефакта, узнать, кто его населяет, и благодаря этому изменить взгляды даже на свое место во Вселенной.', 'chaha_nebes.jpeg', 'nauchna_fantastika.pdf'),
(2, 'Счастливая земля', 'Лукаш Орбитовский', 512, 'Научная фантастика', 'Четверо друзей собираются вместе в последний день лета, чтобы попрощаться с детством необычным образом — загадав желания в демоническом замке городка Рыкусмыку. Вот только готовы ли они к цене, которую им придется заплатить за исполнения мечты? Спустя годы друзья юности снова собираются в родном городе. Связанные общей тайной, все это время они искали способ избавиться от жутких событий прошлого, последствия которых не оставляют их ни на минуту.', 'schastlivaya_zemlya.jpeg', 'nauchna_fantastika.pdf'),
(3, 'Внутри убийцы', 'Майк Омер', 416, 'Детектив', '«Сериал “Внутри убийцы” – первая киноадаптация романа, и я рад, что ее сняли в России, где живет много моих читателей. Это невероятно удивительно – видеть, как родившиеся в моей голове истории и персонажи материализуются на экране. Эти персонажи органично живут и в Чикаго, как это было в книге, и в Петербурге, как в сериале». – Майк Омер Чтобы поймать убийцу, нужно смотреть глазами убийцы. Профайлер… Криминальный психолог, буквально по паре незначительных деталей способный воссоздать облик и образ действий самого хитроумного преступника. Эти люди выглядят со стороны как волшебники, как супергерои. Тем более если профайлер — женщина… Разум убийцы — это ее территория. Она вычисляет серийных убийц. Он вычисляет жертв. Рано или поздно они встретятся… На мосту в Чикаго, облокотившись на перила, стоит молодая красивая женщина. Очень бледная и очень грустная. Она неподвижно смотрит на темную воду, прикрывая ладонью плачущие глаза. И никому не приходит в голову, что… ОНА МЕРТВА. На мосту стоит тело задушенной женщины, забальзамированное особым составом, который позволяет придать трупу любую позу. Поистине дьявольская фантазия. Но еще хуже, что таких тел, горюющих о собственной смерти, найдено уже три. В городе появился… СЕРИЙНЫЙ УБИЙЦА. Расследование ведет полиция Чикаго, но ФБР не доверяет местному профайлеру, считая его некомпетентным. Для такого сложного дела у Бюро есть свой специалист — Зои Бентли. Она — лучшая из лучших. Во-многом потому, что когда-то, много лет назад, лично столкнулась с серийным убийцей — И ОСТАЛАСЬ ЖИВА… Первый роман из серии книг о Зои Бентли.', 'vnutri_ubijtsy.jpeg', 'detektiv.pdf'),
(4, 'Sapiens. Краткая история человечества ', 'Юваль Ной Харари', 218, 'Научная литература', 'Сто тысяч лет назад был одним из как минимум шести видов человека, живших на этой планете, – ничем не примечательным животным, которое играло в экосистеме роль не большую, чем гориллы, светлячки или медузы. Но около семидесяти тысяч лет назад загадочное изменение когнитивных способностей превратило его в хозяина планеты и кошмар экосистемы. Как человек разумный сумел покорить мир? Что стало с другими видами человека? Когда и почему появились деньги, государства и религия? Как возникали и рушились империи? Почему почти все общества ставили женщин ниже мужчин? Как наука и капитализм стали господствующими вероучениями современной эры? Становились ли люди с течением времени счастливее? Какое будущее нас ожидает?\r\n\r\nЮваль Харари показывает, как ход истории формировал человеческое общество и действительность вокруг него. Его книга прослеживает связь между событиями прошлого и проблемами современности и заставляет читателя пересмотреть все устоявшиеся представления об окружающем мире.', 'sapiens.jpg', 'nauchna_literatura.pdf'),
(5, 'Меч и ятаган ', 'Дэвид Болл', 800, 'Приключения', 'Мальта, XVI век. Мальчика Нико похищают работорговцы и увозят в Северную Африку. У его сестры Марии две мечты. Во-первых, сбежать с острова, где никто и пальцем не шевельнул, чтобы спасти ее брата. Однако вторую ее мечту, кажется, осуществить еще сложнее: в обществе, где в школы допускаются только дворянские сыновья, девочка из простой семьи хочет научиться читать. А в Париже растет граф Кристиан де Врис. С рождения он принят в орден госпитальеров, но сердце мальчика отдано медицине… Через несколько лет всем троим предстоит сыграть свою роль в Великой осаде Мальты, когда на крошечном острове столкнутся цивилизации и решится судьба Европы. От невольничьих рынков Алжира и султанского сераля в Стамбуле до шумных набережных Парижа и рыцарского форта на Мальте: «Меч и ятаган» — одна из лучших авантюрно-приключенческих саг, роман о вечной борьбе религий и культур Востока и Запада.', 'mech_i_yatagan.jpeg', 'prikluchenia.pdf'),
(6, 'Когда тает лёд ', 'Ханна Грейс', 480, 'Роман', 'Анастасия Аллен всю жизнь шла к заветной цели — попасть в сборную США. Кажется, что всё идёт по плану, когда она получает стипендию в Калифорнийском университете в Мейпл-Хиллз и место в команде по фигурному катанию. Но на её пути встаёт капитан хоккейной команды Нейт Хокинс, с которым она вынуждена делить не только время для тренировок, но ещё и лёд. Нейт как капитан сосредоточен на успехе своей команды. Что становится особенно сложно, когда из-за сбоя они вынуждены тренироваться с командой по фигурному катанию — включая Анастасию, которая явно терпеть не может хоккеистов. Волей случая Нейт и Анастасия оказываются рядом. Всё, что их объединяет, — это лёд и цель, к которой оба готовы идти, несмотря ни на что. Или же между фигуристкой и хоккеистом больше общего, чем все думают?..', 'Kogda_taet_ljod.jpeg', 'roman.pdf'),
(7, 'Демон из Пустоши', 'Виктор Дашкевич', 672, 'Фэнтези', 'После битвы с Императорским дивом Кузя, пожертвовав собой, попадает в Пустошь - ледяную пустыню, где обитают дивы. Граф Аверин не знает, жив ли он, но намерен открыть коридор в мир дивов и любой ценой попытаться спасти своего друга. Считается, что человек, попав туда, погибает сразу же. Но так ли это? Исследования Пустоши были засекречены, и все же это единственная надежда графа Аверина. При помощи друзей и будущей императрицы княжны Софьи он решается на рискованный шаг. Но даже если их план сработает, кто знает, какие еще демоны смогут выбраться оттуда - и чем это будет грозить миру.', 'Demon_iz_Pustoshi.jpeg', 'fentezi.pdf'),
(8, 'Оскорбление третьей степени ', 'Райк Виланд', 448, 'Комедия', 'Когда психиатр Оскар Б. Марков приходит в участок на Александерплац подать заявление на того, кто вызвал его на дуэль, полицейские расценивают это как плохую шутку. Ведь в современном Берлине подобную «культурную практику» разрешения споров давно сменили более цивилизованные методы. Где-то между тихим монастырем, оперным театром и раскисшей от дождя поляной с головокружительной скоростью разворачивается невероятная и очень современная история дуэли, сочетающая в себе гротеск и достоверность, иронию и актуальность.', 'Oskorblenie_tretej_stepeni.jpeg', 'komedia.pdf'),
(9, 'Евгений Онегин ', 'Александр Пушкин', 352, 'Поэзия', '\"Евгений Онегин\" написан без малого два века назад. Но за это время он не устарел и совсем не состарился. \"Энциклопедией русской жизни\" назвал роман Пушкина Виссарион Белинский. Критик был совершенно прав. Этот текст замечательным образом заключает в себе подробности частного существования людей ушедшего времени. Более того — книга до сих пор не утратила своего литературного очарования. Сегодняшний читатель может и должен прочитать \"Евгения Онегина\" как \"роман воспитания\". Давайте забудем о школьных уроках литературы и внимательно разберем рассказ о молодых людях, которые только-только вступают в жизнь. Пушкину удалось создать персонажей, которые сделались архетипами поведения многих и многих, явившихся на свет значительно позже. Онегин, Татьяна, Ленский, Ольга — стали именами нарицательными. А их истории — основами многочисленных оперных либретто, пьес и киносценариев. Роман в стихах \"Евгений Онегин\" — величайшее произведение, закрепившее славу А. С. Пушкина как \"гения русской словесности\" и оказавшее влияние на всю русскую литературу. Настоящее издание подготовлено к 225-летию со дня рождения великого поэта и снабжено иллюстрациями и познавательными комментариями, составленными литератором Владимиром Соболем.', 'Evgenij_Onegin.jpeg', 'poezia.pdf'),
(10, 'Щелкунчик и мышиный король', ' Эрнст Теодор Амадей Гофман', 104, 'Детская литература', 'На страницах этой книги разворачивается новогодняя история о девочке Мари, её брате Фрице, загадочном крёстном Дроссельмейере и Щелкунчике, который каждую ночь оживает вместе с другими игрушками - как только все в доме отправляются спать. Красочные иллюстрации и подвижные элементы заставляют поверить, что чудеса происходят на самом деле: перед читателем вырастают игрушечный дворец с башенками и роскошный Марципановый замок, заколдованная принцесса Пирлипат снова превращается в красавицу, Мари помогает Щелкунчику сражаться с мышиным войском, а потом они вместе отправляются в путешествие по Кукольному царству. Читатели даже могут подержать в руках чудесный орех Кракатук, ведь всем волшебством в книге управляют они сами. Кому понравится: всем, кто мечтает о новогоднем волшебстве, с нетерпением ждёт праздника и любит читать красочные интерактивные книги.', 'Schelkunchik_i_myshinyj_korol.jpeg', 'detska_literatura.pdf'),
(11, 'Темный лес Цысинь Лю ', 'Цысинь Лю', 624, 'Научная фантастика', 'Трисолярианский кризис продолжается. У землян есть 400 лет, чтобы предотвратить инопланетное вторжение. Но угроза полного уничтожения, вопреки ожиданиям, не объединяет человечество. Сверхдержавы отстаивают свои интересы, космические флоты, становясь независимой политической силой, вовсе теряют связь с Землей. Тотальный контроль над научно-техническими разработками со стороны чужой цивилизации, во много раз превосходящей нашу в развитии, не оставляет людям шанса на победу. Исход войны решат проекты \"Отвернувшихся\" — лучших мыслителей планеты.', 'Temnyj_les.jpeg', 'nauchna_fantastika.pdf'),
(12, 'Принцесса Дюны', 'Брайан Герберт, Кевин Андерсон', 512, 'Научная фантастика', 'Власть дома Коррино под угрозой: в армии бунт, спровоцированный неосторожными действиями Шаддама IV. Справляться с ситуацией приходится его дочерям, в первую очередь – наследной принцессе Ирулан, которой предстоит трудная задача: не только сохранить Империю и соблюсти ее интересы, но и не потерять собственный голос среди интриг Бинэ Гессерит, Космической лиги и даже собственных сестер. В это время Чани, дочь имперского планетолога, вместе со сводным братом и группой деятельной молодежи отчаянно борется за сохранение независимости фрименов и кроме того пытается воплотить мечту своего отца о зеленом Арракисе. Кто же из этих двоих настоящая принцесса Дюны?', 'Printsessa_Dyuny.jpeg', 'nauchna_fantastika.pdf'),
(13, 'Черное облако Фред Хойл', 'Фред Хойл', 320, 'Научная фантастика', 'Фред Хойл (1915 – 2001) – известный британский астроном и писатель. Работал над теорией эволюции звезд и \"красных гигантов\". Разрабатывал базовую модель вспышки сверхновой и стационарную модель Вселенной. По некоторым данным, именно он ввел в науку понятие \"Большого взрыва\". Автор философских, приключенческих, детских романов и научно-популярных книг. Январь 1964 года. В процессе стандартного сканирования неба на горе Паломар в Калифорнии астроном замечает странное черное пятно, закрывающее звезды. Дальнейшее наблюдение за неопознанным объектом приносит неутешительные новости: газообразное скопление неизвестного состава с огромной скоростью движется к Солнцу. Информацию тщательно скрывают от населения, но на уровне руководства международного сообщества идет напряженная работа. Группа ученых из разных стран собирается в английском местечке Нортонстоу, чтобы оценить риски и разработать план спасения планеты от космической угрозы.\r\nПодробнее на livelib.ru:\r\nhttps://www.livelib.ru/book/1009743286-chernoe-oblako-fred-hojl', 'Chernoe_oblako.jpeg', 'nauchna_fantastika.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE IF NOT EXISTS `download` (
  `download_ID` int NOT NULL AUTO_INCREMENT,
  `user_ID` int NOT NULL,
  `book_ID` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`download_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `download`
--

INSERT INTO `download` (`download_ID`, `user_ID`, `book_ID`, `date`) VALUES
(13, 13, 12, '2024-04-16'),
(14, 14, 12, '2024-04-16'),
(15, 14, 2, '2024-04-16'),
(16, 15, 12, '2024-04-16'),
(17, 15, 33, '2024-04-22'),
(18, 15, 31, '2024-04-22'),
(19, 15, 35, '2024-04-22'),
(20, 15, 36, '2024-04-22'),
(21, 15, 37, '2024-04-22'),
(22, 15, 38, '2024-04-22'),
(23, 15, 39, '2024-04-22'),
(24, 15, 41, '2024-04-22'),
(25, 15, 42, '2024-04-22'),
(26, 15, 7, '2024-04-29'),
(27, 15, 11, '2024-04-29'),
(28, 28, 2, '2024-05-07'),
(29, 30, 11, '2024-05-07');

-- --------------------------------------------------------

--
-- Структура таблицы `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_ID` int NOT NULL AUTO_INCREMENT,
  `user_ID` int NOT NULL,
  `credit_card_num` int NOT NULL,
  `date` date NOT NULL,
  `subscription_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cost` int NOT NULL,
  PRIMARY KEY (`payment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `payment`
--

INSERT INTO `payment` (`payment_ID`, `user_ID`, `credit_card_num`, `date`, `subscription_type`, `cost`) VALUES
(15, 13, 34234, '2024-04-16', 'day', 10),
(16, 14, 111111, '2024-04-16', 'day', 10),
(17, 15, 11111, '2024-04-16', 'day', 10),
(18, 15, 11111, '2024-04-22', 'day', 10),
(19, 25, 0, '2024-05-02', 'day', 10),
(20, 26, 0, '2024-05-02', 'week', 50),
(21, 27, 0, '2024-05-02', 'day', 10),
(22, 28, 4545545, '2024-05-07', 'day', 10),
(23, 30, 344334, '2024-05-07', 'day', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_ID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phoneNumber` int NOT NULL,
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `confirmCode` int NOT NULL,
  `activation` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subscription` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subscription_end` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile_pic` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nationalCard_pic` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_ID`, `firstName`, `lastName`, `email`, `phoneNumber`, `password`, `confirmCode`, `activation`, `subscription`, `subscription_end`, `profile_pic`, `nationalCard_pic`) VALUES
(13, 'Anna', 'test', 'test@gmail.com', 2147483647, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', '2024/04/17', 'horse.png', 'pochta.png'),
(14, 'Artyom', 'test', 'test1@gmail.com', 2147483647, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', '2024/04/17', 'molocovoz.png', 'logo.png'),
(15, 'Ann', 'Ann', 'test2@gmail.com', 3243534, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', '2024/04/23', 'nabor_tehnica.png', 'horse.png'),
(16, 'a', 'a', '1@gmail.com', 1111, 'b59c67bf196a4758191e42f76670ceba', 0, 'yes', 'no', 'no subscription', 'horse.png', 'logo.png'),
(17, 'Анна', 'ввввв', 'test34@gmail.com', 2147483647, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', 'no subscription', 'main_banner.png', 'x'),
(18, 'Анна', 'Ввввв', 'test38@gmail.com', 2147483647, '32a16c22a08b5360601d155c4803b7f2', 0, 'yes', 'no', 'no subscription', 'logo.png', 'x'),
(19, 'Анна', 'Ввввв', 'tes122@gmail.com', 2147483647, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', 'no subscription', 'logo.png', 'x'),
(20, 'Анна', 'Анна', 'fnnf@gmail.com', 3543545, '81dc9bdb52d04dc20036dbd8313ed055', 0, 'yes', 'no', 'no subscription', 'horse.png', 'x'),
(21, 'К', 'К', 'test8@gmail.com', 2, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', 'no subscription', 'kater.png', 'x'),
(22, 'и', 'и', 'tes6@gmail.com', 56, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', 'no subscription', 'kater.png', 'x'),
(23, 'п', 'о', 'test66@gmail.com', 23, '098f6bcd4621d373cade4e832627b4f6', 0, 'yes', 'no', 'no subscription', 'logo.png', 'x'),
(25, 'Карина', 'Белова', 'kar@gmail.com', 1111111, 'b59c67bf196a4758191e42f76670ceba', 0, 'yes', 'yes', '2024/05/03', 'Kuvshinnikov.png', 'x'),
(26, 'Катя', 'Гришанина', 'kat@gmail.com', 231432421, 'b59c67bf196a4758191e42f76670ceba', 0, 'yes', 'yes', '2024/05/09', 'mastercard.png', 'x'),
(27, 'Артём', 'sdsdsds', 'tem@gmail.com', 2434, 'b59c67bf196a4758191e42f76670ceba', 0, 'yes', 'yes', '2024/05/03', 'about_write2.png', 'x'),
(28, 'TEST', 'TEST', 'testtest@gmail.com', 24324324, 'b59c67bf196a4758191e42f76670ceba', 0, 'yes', 'yes', '2024/05/08', 'icon_tree.png', 'x'),
(29, '111', '111', '111@gmail.com', 111, 'b59c67bf196a4758191e42f76670ceba', 0, 'yes', 'no', 'no subscription', 'boxberry.png', 'x'),
(30, 'Зухра', 'Турсунова', 'zyh@gmail.com', 2146742, '81dc9bdb52d04dc20036dbd8313ed055', 0, 'yes', 'yes', '2024/05/08', 'product_catalog5.png', 'x');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;