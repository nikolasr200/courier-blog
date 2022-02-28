-- --------------------------------------------------------
-- Διακομιστής:                  127.0.0.1
-- Έκδοση διακομιστή:            5.7.31 - MySQL Community Server (GPL)
-- Λειτ. σύστημα διακομιστή:     Linux
-- HeidiSQL Έκδοση:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table courier-db.category: ~3 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`) VALUES
	(1, 'Γενικά'),
	(2, 'Νέα'),
	(3, 'Αθλητικά'),
	(4, 'Πολιτισμός'),
	(5, 'Τεχνολογία'),
	(6, 'Μόδα');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping data for table courier-db.doctrine_migration_versions: ~0 rows (approximately)
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20220226172430', '2022-02-26 17:25:21', 1417);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;

-- Dumping data for table courier-db.messenger_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;

-- Dumping data for table courier-db.post: ~2 rows (approximately)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`id`, `category_id`, `date_time`, `title`, `text`, `author`) VALUES
	(1, 1, '2022-02-26 21:20:00', 'Πόλεμος στην Ουκρανία', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Νίκος'),
	(2, 1, '2022-02-26 21:22:00', 'Κορωνοϊός', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 'Guest'),
	(3, 3, '2022-02-28 16:54:00', 'Αθλητικά νέα', 'Οι παίκτες της Ζενίτ είναι ελεύθεροι ν\' αποφασίσουν για το αν θέλουν να παραμείνουν στη Ρωσία ή ν\' αποχωρήσουν άμεσα για λόγους ασφαλείας.\r\n\r\nΟι άνθρωποι της ρωσικής ομάδας, κατανοώντας το περίπλοκο της κατάστασης που έχει προκύψει μετά την εν εξελίξει στρατιωτική επέμβαση στην Ουκρανία, ενημέρωσαν ότι άπαντες, συμπεριλαμβανομένου των μελών του τεχνικού τιμ και των στελεχών του οργανογράμματος, μπορούν να φύγουν από την Αγία Πετρούπολη χωρίς επιπτώσεις ή συνέπειες που προβλέπονται από τα συμβόλαιά τους.', 'Νίκος'),
	(4, 3, '2022-02-28 17:00:00', 'Η ΔΟΕ αφαίρεσε από τον Πούτιν την τιμητική διάκριση που του είχε κάνει', 'Σε μία κίνηση με σημαντικό συμβολισμό προχώρησε το εκτελεστικό συμβούλιο της Διεθνούς Ολυμπιακής Επιτροπής τη Δευτέρα (28/02).\r\n\r\nΗ ΔΟΕ ανακοίνωσε ότι στο πλαίσιο των μέτρων κατά της Ρωσίας και της Λευκορωσίας αφαιρεί τις τιμητικές διακρίσεις που είχε κάνει στο παρελθόν σε τρεις αξιωματούχους λόγω της εμπλοκής τους στην εισβολή στην Ουκρανία.\r\n\r\nΑνάμεσα σε αυτούς τους τρεις βρίσκεται και το όνομα του Βλάντιμιρ Πούτιν ο οποίος το 2001 είχε τιμηθεί για την προσφορά του στο Ολυμπιακό κίνημα.', 'Guest'),
	(5, 6, '2022-01-13 15:09:00', 'Τι να φορέσεις σε χιονοδρομικό κέντρο', 'Τα χιόνια των τελευταίων εβδομάδων μας έχουν δώσει ένα επιπρόσθετο κίνητρο να κάνουμε μια εξόρμηση στο κοντινότερο χιονοδρομικό κέντρο. Είτε επιδιδόμαστε στα χειμερινά σπορ είτε θέλουμε απλώς να απολαύσουμε το ωραίο χιονισμένο τοπίο, μπορούμε να εκμεταλλευτούμε ένα σαββατοκύριακο και να χαρούμε το χιόνι σαν παιδιά. Φυσικά μία τέτοια εκδρομή πρέπει να συνοδεύεται και από το κατάλληλο ντύσιμο. Σαφώς και οι χαμηλές θερμοκρασίες απαιτούν ζεστά ρούχα. Ωστόσο, δε χρειάζεται να θυσιάσεις το στιλ σου, αλλά μπορείς κάλλιστα να βρεις πολύ ωραία και μοντέρνα ρούχα για να φορέσεις σε χιονοδρομικό κέντρο.', 'Νίκος'),
	(6, 5, '2021-08-17 00:00:00', 'Εφαρμογή του HTC Vive Flow VR μετατρέπει το αυτοκίνητο σε θεματικό πάρκο', 'Μια νέα εφαρμογή ετοιμάζει η HTC μαζί με τη Holoride, η οποία θα επιτρέπει στους κατόχους του Vive Flow VR να μετατρέπουν το αυτοκίνητό τους σε ένα εικονικό θεματικό πάρκο, περιορίζοντας την επιρροή ναυτίας. Η βασική ιδέα είναι όπως είδαμε στο MWC 2022, πως όταν ο χρήστης φορέσει το headset, θα φαίνεται πως βρίσκεται σε ένα τρενάκι λούνα παρκ, με την κίνηση να ταιριάζει τέλεια με τις κινήσεις του αυτοκινήτου.\r\n\r\nΗ Holoride δέχεται χρηματοδότηση από την Audi, με στόχο "να δημιουργήσει μια ολοκαίνουργια κατηγορία ψυχαγωγίας για συνεπιβάτες, συνδέοντας Extended Reality (XR) περιεχόμενο με δεδομένα από το αυτοκίνητο σε πραγματικό χρόνο". Αυτό που καθιστά το Vive Flow κατάλληλο, είναι το μικρό βάρος (189 γραμμάρια), το οποίο εξαρχής προωθήθηκε για ψυχαγωγία και ευεξία.\r\n\r\nΗ πρόσβαση δε θα περιορίζεται σε θεματικά πάρκα πρόσθεσε η Holoride, αλλά και σε εικονικούς κόσμους μαζί με 2D περιεχόμενο σε μια συγχρονισμένη κινηματογραφική οθόνη. Αφήνοντας έτσι να εννοηθεί πως οι συνεπιβάτες θα μπορούν να παρακολουθούν ταινίες και άλλο υλικό.', 'Νίκος');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
