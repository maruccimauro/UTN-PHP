-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-08-2023 a las 18:17:10
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `marucci_mauro`;
use `marucci_mauro`;
--
-- Base de datos: `marucci_mauro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int NOT NULL,
  `email` varchar(70) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `birthday` date NOT NULL,
  `work_experience` text NOT NULL,
  `hobbies` text NOT NULL,
  `photo` text NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `email`, `name`, `lastname`, `position`, `birthday`, `work_experience`, `hobbies`, `photo`, `update_at`, `create_at`) VALUES
(1, 'juan.perez@ejemplo.com', 'Juan', 'Pérez', 'Barista', '1990-03-25', 'Juan tiene experiencia como barista en varias cafeterías de la ciudad. Es conocido por su habilidad para crear latte art impresionante. También ha trabajado como encargado de turno y tiene un excelente trato con los clientes.', 'A Juan le encanta el senderismo, la fotografía y tocar la guitarra en su tiempo libre. También disfruta de probar cafés de diferentes partes del mundo.', 'employee_1.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(2, 'laura.martinez@ejemplo.com', 'Laura', 'Martínez', 'Camarera', '1993-12-10', 'Laura tiene experiencia como camarera en cafés y bares de la zona. Ha trabajado en la preparación de bebidas y en el servicio al cliente. También tiene conocimientos de coctelería.', 'En su tiempo libre, Laura disfruta de la danza, la pintura y la jardinería. Le apasiona la música pop y asiste a conciertos siempre que puede.', 'employee_2.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(3, 'carlos.rodriguez@ejemplo.com', 'Carlos', 'Rodríguez', 'Gerente', '1988-07-02', 'Carlos tiene una amplia experiencia en la industria de la hospitalidad. Ha trabajado como gerente de cafeterías y restaurantes. Es experto en la gestión de personal y en brindar una experiencia excepcional al cliente.', 'Carlos disfruta de la fotografía de naturaleza, la natación y la gastronomía. Le encanta explorar nuevos lugares y probar platos tradicionales de diferentes culturas.', 'employee_3.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(4, 'ana.lopez@ejemplo.com', 'Ana', 'López', 'Barista', '1998-05-18', 'Ana ha trabajado como barista en cafeterías independientes y en cadenas reconocidas. Es apasionada por el café de especialidad y le gusta compartir su conocimiento con los clientes.', 'En su tiempo libre, Ana disfruta de la jardinería urbana, la meditación y el yoga. También es aficionada a la música indie y a los eventos artísticos.', 'employee_4.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(5, 'maria.sanchez@ejemplo.com', 'María', 'Sánchez', 'Camarera', '1995-09-12', 'María tiene experiencia como camarera en cafeterías concurridas. Se destaca por su rapidez y atención al detalle en el servicio. También ha trabajado en la organización de eventos especiales en el café.', 'En su tiempo libre, María disfruta del senderismo, la cocina internacional y la práctica de pilates. Le gusta explorar ferias de alimentos locales.', 'employee_5.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(6, 'daniel.fernandez@ejemplo.com', 'Daniel', 'Fernández', 'Barista', '1991-11-05', 'Daniel ha trabajado en cafeterías boutique donde se especializa en la preparación de espresso y métodos alternativos de extracción. Ha participado en competencias de barismo a nivel local.', 'En su tiempo libre, Daniel disfruta del ciclismo de montaña, la lectura de novelas de ciencia ficción y la fotografía urbana. También es amante del cine clásico.', 'employee_6.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(7, 'ana.gomez@ejemplo.com', 'Ana', 'Gómez', 'Camarera', '1994-02-28', 'Ana ha trabajado en cafeterías de estilo retro y temáticas vintage. Tiene habilidades en la preparación de postres y bebidas frías. Además, ha organizado eventos de tarde de té.', 'En su tiempo libre, Ana disfruta del baile folclórico, la costura creativa y la pintura al óleo. Le gusta asistir a ferias de antigüedades.', 'employee_7.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(8, 'luis.martinez@ejemplo.com', 'Luis', 'Martínez', 'Gerente', '1985-06-15', 'Luis tiene una amplia experiencia en la administración de cafeterías y restaurantes. Ha implementado estrategias de marketing y mejoras en la calidad del servicio. Es experto en la gestión de equipos.', 'Luis disfruta de la jardinería, el ciclismo en carretera y la música clásica. También es aficionado a la enología y la degustación de vinos.', 'employee_8.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(9, 'laura.rodriguez@ejemplo.com', 'Laura', 'Rodríguez', 'Gerente', '1988-03-20', 'Laura cuenta con una amplia trayectoria como gerente en la industria de cafeterías...', 'En su tiempo libre, Laura disfruta de la lectura, el cine y practicar yoga...', 'employee_9.jpg', '2023-08-31 18:16:46', '2023-08-31 18:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `name`, `description`, `price`, `update_at`, `create_at`) VALUES
(1, 'Café Latte', 'Disfruta de un delicioso café latte recién preparado, con una combinación perfecta de espresso suave y leche cremosa que te brindará la energía que necesitas para empezar tu día. Nuestros baristas expertos se aseguran de crear cada taza con esmero, cuidando cada detalle para ofrecerte una experiencia única de sabor y textura.', 3.99, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(2, 'Capuchino', 'Sumérgete en la experiencia de nuestro clásico capuchino, una obra maestra de espresso y leche vaporizada que resulta en un equilibrio excepcional entre el intenso sabor del café y la suavidad de la espuma. Cada sorbo te transportará a las cafeterías tradicionales de Italia, donde esta delicia se convirtió en un ícono. ¡Pruébalo y déjate cautivar!', 4.49, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(3, 'Espresso Doble', 'Si eres amante del café fuerte y aromático, nuestro espresso doble es la elección perfecta. Dos shots de espresso cuidadosamente extraídos se combinan para crear una explosión de sabores y notas cautivadoras que despertarán tus sentidos. Cada sorbo es una invitación a explorar la profundidad y complejidad de los granos de café de alta calidad.', 2.99, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(4, 'Mocha Frappé', 'Refréscate y déjate tentar por nuestro mocha frappé, una fusión irresistible de chocolate y café en una bebida helada y cremosa. Cada sorbo es como un placer indulgente que combina la intensidad del café con la dulzura del chocolate, todo coronado con una generosa porción de crema batida. Una delicia que te conquistará en cualquier época del año.', 5.99, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(5, 'Té de Hierbas', 'Relájate y renueva tus sentidos con nuestra infusión de té de hierbas. Hemos seleccionado cuidadosamente las mejores hierbas naturales para brindarte una bebida que calmará tu alma y te ayudará a desconectar del ajetreo diario. Cada sorbo es una pausa tranquila en medio del día, una oportunidad para cuidarte y nutrirte desde adentro.', 2.49, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(6, 'Croissant de Almendra', 'Descubre la perfección en forma de croissant con nuestra versión de almendra recién horneada. Cada mordisco revela capas delicadas y hojaldradas, cuidadosamente preparadas para ofrecerte una textura crujiente por fuera y suave por dentro. El toque de almendras tostadas en la parte superior completa esta experiencia de sabor excepcional.', 2.99, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(7, 'Bagel de Salmón', 'Deleita tu paladar con nuestro bagel de salmón, una combinación sofisticada y deliciosa que une la frescura del salmón ahumado con la cremosidad de la crema de queso. Cada bocado es una sinfonía de sabores, donde la suavidad del bagel se une al sabor intenso del salmón en una experiencia gastronómica que te transportará a lugares especiales.', 6.49, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(8, 'Pastel de Zanahoria', 'Sumérgete en la nostalgia con nuestro pastel casero de zanahoria con crema de queso. Cada porción es una celebración de sabores reconfortantes, donde la dulzura natural de las zanahorias se combina con la suavidad y el ligero toque ácido de la crema de queso. Cada mordisco es como un abrazo cálido de la abuela en forma de postre.', 3.99, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(9, 'Donut de Vainilla', 'Dale rienda suelta a tus antojos con nuestro donut esponjoso, una delicia que te conquistará desde el primer vistazo. El glaseado de vainilla que cubre cada centímetro del donut es como una obra de arte comestible, una explosión de dulzura que se combina con la textura suave y esponjosa del interior. ¡Un placer irresistible en cada bocado!', 1.49, '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(10, 'Smoothie de Frutas', 'Eleva tus sentidos con nuestro smoothie de frutas, una explosión refrescante de sabores naturales en cada sorbo. Hemos mezclado cuidadosamente una variedad de frutas frescas para ofrecerte una bebida vibrante y llena de energía. Cada trago es como un paseo por un huerto lleno de colores y aromas, una invitación a cuidarte de la manera más deliciosa.', 4.99, '2023-08-31 18:16:46', '2023-08-31 18:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_visit` date NOT NULL,
  `comment` text,
  `product_score` smallint NOT NULL,
  `attention_score` smallint NOT NULL,
  `cleanliness_score` smallint NOT NULL,
  `time_score` smallint NOT NULL,
  `email` varchar(70) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `review`
--

INSERT INTO `review` (`id`, `name`, `date_visit`, `comment`, `product_score`, `attention_score`, `cleanliness_score`, `time_score`, `email`, `update_at`, `create_at`) VALUES
(1, 'Ana García', '2023-08-15', 'Mi visita a esta cafetería fue una experiencia deliciosa. El café tenía un sabor intenso y su aroma llenaba el lugar. El personal fue muy atento y servicial, lo cual hizo que mi tiempo aquí fuera muy placentero. La limpieza del lugar también merece reconocimiento. Los pasteles eran tan deliciosos como se veían. Sin duda, regresaré pronto a este rincón acogedor.', 5, 5, 5, 5, 'ana@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(2, 'Luis Martínez', '2023-09-10', 'El café italiano es mi lugar favorito para tomar un café por la mañana. Los croissants recién horneados son irresistibles. El personal siempre es amable y eficiente. La limpieza es impecable y te hace sentir cómodo y seguro. La atención es rápida y no tienes que esperar mucho para disfrutar de tu orden. Cada vez que vengo aquí, la experiencia es excepcional.', 4, 5, 5, 5, 'luis@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(3, 'Elena López', '2023-09-20', 'La cafetería italiana ofrece una amplia variedad de opciones. Mi latte estaba perfectamente preparado y los bocadillos eran deliciosos. El personal es muy atento y amable. El lugar estaba limpio y bien cuidado. Si buscas un lugar para relajarte y disfrutar de un buen café, este es el lugar ideal. La espera fue mínima y la atención fue excelente.', 5, 5, 5, 4, 'elena@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(4, 'Carlos Ramírez', '2023-08-25', 'El café italiano es sin duda el mejor lugar para disfrutar de un buen café. El espresso tiene un sabor auténtico y rico. La atención al cliente es inigualable, y siempre se esfuerzan por hacer que tu experiencia sea memorable. El local es muy limpio y cómodo. La rapidez en el servicio también es algo que aprecio. Una experiencia excepcional en todos los aspectos.', 5, 5, 5, 5, 'carlos@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(5, 'Laura Morales', '2023-09-08', 'Esta cafetería es mi refugio favorito. El café es simplemente delicioso, y los pasteles son una delicia. La atención es siempre amable y atenta. El local es muy limpio y acogedor. Siempre encuentro un lugar cómodo para sentarme. La calidad de la comida y el servicio es consistentemente alta.', 5, 5, 5, 4, 'laura@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(6, 'Diego Fernández', '2023-08-12', 'Cada visita a esta cafetería es una experiencia increíble. El espresso es fuerte y sabroso, exactamente como me gusta. El personal es atento y servicial. El lugar es muy limpio y organizado. La espera es mínima, lo que es una gran ventaja. Me siento como en casa cada vez que vengo.', 5, 5, 5, 5, 'diego@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(7, 'Isabella Díaz', '2023-09-18', 'Un lugar encantador para disfrutar de café de alta calidad. El latte tenía un sabor suave y cremoso. La atención al cliente es excepcional, y el personal siempre está dispuesto a ayudar. El lugar es impecable y muy cómodo. Aunque hubo una breve espera, valió la pena por la calidad y la atención que recibí.', 4, 5, 5, 5, 'isabella@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46'),
(8, 'Miguel Sánchez', '2023-08-28', 'La experiencia en esta cafetería fue excepcional en todos los aspectos. El café tiene un sabor auténtico y delicioso. El personal es amable y atento, y el lugar siempre está limpio y ordenado. La espera fue mínima y el servicio fue rápido. Definitivamente, volveré a disfrutar de más momentos aquí.', 5, 5, 5, 5, 'miguel@ejemplo.com', '2023-08-31 18:16:46', '2023-08-31 18:16:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
