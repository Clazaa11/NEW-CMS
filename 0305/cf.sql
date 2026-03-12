--
-- Database: `article-guide`
-- article Guide Website Database
-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `summary`, `content`, `created`, `category_id`, `member_id`, `image_id`, `published`) VALUES

-- CHEST (category_id = 1)
(1, 'Bench Press', 'Classic compound chest exercise', 'The bench press is one of the most effective compound exercises for building overall chest mass and strength. Lie flat on a bench, grip the barbell slightly wider than shoulder-width, lower it to your chest, and press it back up. Focus on keeping your shoulder blades retracted and feet flat on the floor throughout the movement.', '2024-01-05 08:00:00', 1, 1, 1, 1),
(2, 'Push-Up Variations', 'Bodyweight chest builder for all levels', 'Push-ups are a versatile bodyweight exercise that can be modified for any fitness level. Standard push-ups target the chest, shoulders, and triceps. Variations such as wide-grip, diamond, and decline push-ups allow you to target different portions of the chest and increase or decrease difficulty based on your training goals.', '2024-01-06 09:00:00', 1, 2, 2, 1),
(3, 'Dumbbell Flyes', 'Isolation movement for chest definition', 'Dumbbell flyes are an excellent isolation exercise that stretches and contracts the chest muscles through a wide arc of motion. Lie on a flat bench, hold dumbbells above your chest with a slight bend in the elbows, and slowly lower them out to the sides before bringing them back together at the top. This movement is ideal for improving chest width and definition.', '2024-01-08 10:00:00', 1, 3, 3, 1),
(4, 'Incline Dumbbell Press', 'Upper chest focused pressing movement', 'The incline dumbbell press specifically targets the upper portion of the pectoral muscles. Set the bench to a 30 to 45 degree angle, press the dumbbells from shoulder level upward, and squeeze the chest at the top. This exercise is essential for developing a full and well-rounded chest, particularly the clavicular head of the pectorals.', '2024-01-10 11:00:00', 1, 1, 4, 1),
(5, 'Cable Crossover', 'Cable exercise for chest squeeze and pump', 'Cable crossovers provide constant tension throughout the range of motion, making them ideal for achieving a deep muscle pump and finishing off the chest after heavy pressing movements. Stand between two cable stations, grab the handles, and bring your hands together in a hugging motion in front of your body. Focus on the squeeze at the peak contraction.', '2024-01-12 08:30:00', 1, 2, 5, 1),
(6, 'Chest Dips', 'Bodyweight dip for lower chest mass', 'Chest dips are a compound bodyweight movement that heavily targets the lower chest. Using parallel bars, lean slightly forward as you lower your body, keeping your elbows flared slightly outward. Push yourself back up by contracting the chest muscles. Adding weight with a dip belt makes this exercise even more effective for building lower chest thickness and strength.', '2024-01-14 09:30:00', 1, 3, 6, 1),

-- BACK (category_id = 2)
(7, 'Pull-Ups', 'Upper body pulling staple for back width', 'Pull-ups are arguably the best exercise for developing back width and upper body pulling strength. Hang from a bar with an overhand grip wider than shoulder-width and pull your chest up toward the bar. Focus on driving your elbows down and back to maximize lat engagement. Beginners can use a resistance band for assistance while advanced lifters can add weight.', '2024-01-15 08:00:00', 2, 1, 7, 1),
(8, 'Barbell Row', 'Heavy compound rowing for back thickness', 'The barbell row is a fundamental compound exercise for building overall back thickness and strength. Hinge at the hips with the barbell over your mid-foot, grip the bar just outside shoulder-width, and pull it to your lower chest while keeping your back flat. This movement recruits the lats, rhomboids, traps, and rear deltoids simultaneously.', '2024-01-16 09:00:00', 2, 2, 8, 1),
(9, 'Lat Pulldown', 'Machine exercise for lat development', 'The lat pulldown is a cable machine exercise that mimics the pull-up movement and is excellent for isolating the latissimus dorsi muscles. Sit at the machine, grip the bar wider than shoulder-width, and pull it down to your upper chest while leaning back slightly. This exercise is great for beginners who cannot yet perform pull-ups and for adding volume to back training.', '2024-01-18 10:00:00', 2, 3, 9, 1),
(10, 'Seated Cable Row', 'Mid-back rowing for thickness and posture', 'The seated cable row is an effective exercise for targeting the middle back, improving posture, and building overall back thickness. Sit at the cable station with feet on the footpad, grip the handle, and row it toward your lower abdomen while keeping your torso upright. Squeeze your shoulder blades together at the peak contraction for maximum muscle activation.', '2024-01-20 11:00:00', 2, 1, 10, 1),
(11, 'Deadlift', 'King of all back and full body exercises', 'The deadlift is widely regarded as the most effective compound exercise for building total body strength and muscle mass. Stand with the barbell over your mid-foot, hinge at the hips, grip the bar, and drive through the floor as you stand up straight. Proper form is critical to prevent injury. The deadlift targets the entire posterior chain including the erectors, glutes, hamstrings, and traps.', '2024-01-22 08:00:00', 2, 2, 11, 1),
(12, 'Face Pulls', 'Rear delt and rotator cuff health exercise', 'Face pulls are a corrective and muscle-building exercise that targets the rear deltoids, rhomboids, and external rotators of the shoulder. Attach a rope to a cable machine at head height, pull the rope toward your face while flaring your elbows outward, and externally rotate at the end of the movement. This exercise is essential for shoulder health and balanced upper body development.', '2024-01-24 09:00:00', 2, 3, 12, 1),

-- LEGS (category_id = 3)
(13, 'Barbell Squat', 'Foundational lower body strength exercise', 'The barbell squat is the cornerstone of any leg training program and one of the most effective exercises for building lower body mass and strength. Place the bar across your upper traps, stand with feet shoulder-width apart, and descend until your thighs are parallel to the floor before driving back up. Squats engage the quads, glutes, hamstrings, and core simultaneously.', '2024-01-26 08:00:00', 3, 1, 13, 1),
(14, 'Leg Press', 'Machine compound exercise for quad size', 'The leg press is a machine-based compound exercise that allows you to move heavy loads safely while targeting the quads, glutes, and hamstrings. Sit in the machine, place your feet shoulder-width apart on the platform, lower the weight until your knees form a 90-degree angle, and press back up. Foot placement can be adjusted to shift emphasis between muscle groups.', '2024-01-28 09:00:00', 3, 2, 14, 1),
(15, 'Romanian Deadlift', 'Hamstring and glute focused hinge movement', 'The Romanian deadlift is a hip hinge exercise that primarily targets the hamstrings and glutes. Hold a barbell at hip height, push your hips back as you lower the bar along your legs, and feel a deep stretch in your hamstrings before driving your hips forward to return to standing. Maintaining a flat back throughout is essential for both safety and effectiveness.', '2024-01-30 10:00:00', 3, 3, 15, 1),
(16, 'Walking Lunges', 'Dynamic leg movement for balance and tone', 'Walking lunges are a dynamic unilateral exercise that targets the quads, glutes, and hamstrings while also improving balance and coordination. Step forward into a lunge, lower your back knee toward the floor, and then bring your rear foot forward to step into the next lunge. This exercise can be performed with bodyweight, dumbbells, or a barbell across the back for added resistance.', '2024-02-01 08:00:00', 3, 1, 16, 1),
(17, 'Leg Curl', 'Isolation exercise for hamstring development', 'The lying or seated leg curl is an isolation exercise that specifically targets the hamstring muscles. Set the machine so the pad rests just above your heels, curl your legs upward toward your glutes, squeeze at the top, and lower the weight with control. Including leg curls in your training program ensures balanced development between the quads and hamstrings and reduces injury risk.', '2024-02-03 09:00:00', 3, 2, 17, 1),
(18, 'Calf Raises', 'Lower leg isolation for size and strength', 'Calf raises are a targeted isolation exercise for the gastrocnemius and soleus muscles of the lower leg. Stand on a raised platform with your heels hanging off the edge, rise up onto the balls of your feet as high as possible, pause at the top, and lower slowly for a full stretch. Calves respond well to high repetition training and should be trained with both straight-leg and bent-leg variations.', '2024-02-05 10:00:00', 3, 3, 18, 1),

-- ARMS (category_id = 4)
(19, 'Barbell Curl', 'Classic bicep mass builder', 'The barbell curl is the most popular and effective exercise for building overall bicep size and strength. Stand with feet shoulder-width apart, grip the barbell with an underhand grip, and curl the weight up toward your shoulders while keeping your elbows stationary at your sides. Lower the bar slowly to maximize the time under tension and stimulate greater muscle growth.', '2024-02-07 08:00:00', 4, 1, 19, 1),
(20, 'Tricep Pushdown', 'Cable isolation for tricep definition', 'The tricep pushdown is a cable isolation exercise that targets all three heads of the triceps. Attach a rope or straight bar to a high pulley, grip the attachment, and push it down by extending your elbows until your arms are fully straightened. Keep your elbows tucked at your sides throughout the movement to ensure the triceps do all the work.', '2024-02-09 09:00:00', 4, 2, 20, 1),
(21, 'Hammer Curl', 'Neutral grip curl for bicep and brachialis', 'Hammer curls are performed with a neutral grip and target both the biceps brachii and the brachialis, the muscle beneath the bicep that adds width and thickness to the upper arm. Hold dumbbells with palms facing inward and curl them upward without rotating the wrist. This exercise is excellent for developing the peak and overall size of the upper arm.', '2024-02-11 10:00:00', 4, 3, 21, 1),
(22, 'Skull Crushers', 'Lying tricep extension for mass and strength', 'Skull crushers, also known as lying tricep extensions, are a highly effective compound isolation exercise for building tricep mass. Lie on a bench, hold an EZ bar or dumbbells above your chest with arms extended, and lower the weight toward your forehead by bending only at the elbows. Press back to the starting position by contracting the triceps. This exercise builds long head tricep thickness.', '2024-02-13 08:00:00', 4, 1, 22, 1),
(23, 'Concentration Curl', 'Peak contraction bicep isolation exercise', 'The concentration curl is an isolation exercise designed to maximize the peak contraction of the biceps. Sit on a bench, rest your elbow against your inner thigh, and curl a dumbbell up toward your shoulder. By bracing the elbow against the leg, all swinging momentum is eliminated and the bicep is forced to do all the work. This exercise is ideal for developing bicep peak and symmetry.', '2024-02-15 09:00:00', 4, 2, 23, 1),
(24, 'Diamond Push-Ups', 'Bodyweight tricep finisher exercise', 'Diamond push-ups are a bodyweight exercise that places the hands close together in a diamond shape beneath your chest, shifting the emphasis from the chest to the triceps. Lower your chest toward your hands while keeping your elbows close to your body, then press back up by extending the triceps. This is an excellent finisher for arm day or a convenient at-home tricep exercise with no equipment needed.', '2024-02-17 10:00:00', 4, 3, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `navigation`) VALUES
(1, 'Chest', 'Build a stronger and wider chest', 1),
(2, 'Back', 'Develop a powerful and thick back', 1),
(3, 'Legs', 'Strengthen your lower body foundation', 1),
(4, 'Arms', 'Grow bigger biceps and triceps', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `file` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `file`, `alt`) VALUES
(1, 'bench-press.jpg', 'Athlete performing barbell bench press'),
(2, 'push-up.jpg', 'Person doing push-up variations'),
(3, 'dumbbell-flyes.jpg', 'Dumbbell flyes on a flat bench'),
(4, 'incline-press.jpg', 'Incline dumbbell press on angled bench'),
(5, 'cable-crossover.jpg', 'Cable crossover chest exercise'),
(6, 'chest-dips.jpg', 'Athlete performing weighted chest dips'),
(7, 'pull-ups.jpg', 'Person doing pull-ups on a bar'),
(8, 'barbell-row.jpg', 'Barbell bent-over row exercise'),
(9, 'lat-pulldown.jpg', 'Lat pulldown on cable machine'),
(10, 'seated-row.jpg', 'Seated cable row for mid back'),
(11, 'deadlift.jpg', 'Athlete performing heavy barbell deadlift'),
(12, 'face-pulls.jpg', 'Face pull exercise with rope attachment'),
(13, 'barbell-squat.jpg', 'Barbell back squat in squat rack'),
(14, 'leg-press.jpg', 'Leg press machine exercise'),
(15, 'romanian-deadlift.jpg', 'Romanian deadlift for hamstrings'),
(16, 'walking-lunges.jpg', 'Dumbbell walking lunges exercise'),
(17, 'leg-curl.jpg', 'Lying leg curl machine exercise'),
(18, 'calf-raises.jpg', 'Standing calf raises on platform'),
(19, 'barbell-curl.jpg', 'Barbell bicep curl exercise'),
(20, 'tricep-pushdown.jpg', 'Cable tricep pushdown with rope'),
(21, 'hammer-curl.jpg', 'Dumbbell hammer curl exercise'),
(22, 'skull-crushers.jpg', 'Skull crushers on flat bench'),
(23, 'concentration-curl.jpg', 'Concentration curl seated on bench'),
(24, 'diamond-pushup.jpg', 'Diamond push-up tricep exercise');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `forename` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `forename`, `surname`, `email`, `password`, `joined`, `picture`) VALUES
(1, 'Ivy', 'Stone', 'ivy@eg.link', 'c63j-82ve-2sv9-qlb38', '2021-01-26 12:04:23', 'ivy.jpg'),
(2, 'Luke', 'Wood', 'luke@eg.link', 'saq8-2f2k-3nv7-fa4k', '2021-01-26 12:15:18', NULL),
(3, 'Emiko', 'Ito', 'emi@eg.link', 'sk3r-vd92-3vn1-exm2', '2021-02-12 10:53:47', 'emi.jpg');

-- --------------------------------------------------------
--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`member_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `category_exists` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `image_exists` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `member_exists` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);