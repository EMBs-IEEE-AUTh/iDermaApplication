import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  final Map<String, dynamic> doctor;

  const DoctorProfileScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    // Extract rating value from the profile data
    final int rating = doctor['rating'] ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(doctor['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(doctor['imageUrl']),
            ),
            const SizedBox(height: 16),
            Text(
              doctor['name'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Display the rating using star icons
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                );
              }),
            ),
            const SizedBox(height: 8),
            Text(
              'Address: ${doctor['address']}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Phone: ${doctor['phone']}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            const Text(
              'Biography:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              _getBiography(doctor['name']),
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to get biography based on the doctor's name
  String _getBiography(String name) {
    switch (name) {
      case 'Ελένη Κωνσταντίνου':
        return 'Η Δρ. Ελένη Κωνσταντίνου είναι εξειδικευμένη δερματολόγος με πολυάριθμες δημοσιεύσεις στον τομέα της. Έχει σημαντική εμπειρία στην κλινική και επεμβατική δερματολογία.';
      case 'Νικόλαος Μιχαηλίδης':
        return 'Ο Δρ. Νικόλαος Μιχαηλίδης διαθέτει μακροχρόνια εμπειρία στη διάγνωση και θεραπεία δερματολογικών παθήσεων, με έμφαση στη χειρουργική δερματολογία.';
      case 'Γεώργιος Παπαδόπουλος':
        return 'Ο Δρ. Γεώργιος Παπαδόπουλος είναι έμπειρος δερματολόγος με εξειδίκευση στη θεραπεία των δερματικών όγκων και στις αισθητικές παρεμβάσεις.';
      case 'Μαρία Σαμαρά':
        return 'Η Δρ. Μαρία Σαμαρά είναι γνωστή για την εξειδίκευσή της στη θεραπεία της ακμής και της ροδόχρου ακμής, με μια προσέγγιση που συνδυάζει την ιατρική και την αισθητική.';
      case 'Αθηνά Στρατηγού':
        return 'Η Δρ. Αθηνά Στρατηγού εξειδικεύεται στη δερματολογία για τοπικές δερματικές παθήσεις και τη θεραπεία της υπερμελάγχρωσης.';
      case 'Σοφία Μαυρίδου':
        return 'Η Δρ. Σοφία Μαυρίδου είναι αναγνωρισμένη για τη δουλειά της με τις αλλεργίες του δέρματος και τις δερματολογικές παθήσεις που σχετίζονται με την υγεία.';
      case 'Κωνσταντίνος Παπαδημητρίου':
        return 'Ο Δρ. Κωνσταντίνος Παπαδημητρίου είναι δερματολόγος με έμφαση στη διαχείριση του εκζέματος και της ψωρίασης.';
      case 'Αλέξανδρος Κούτρας':
        return 'Ο Δρ. Αλέξανδρος Κούτρας εξειδικεύεται στη δερματολογία και τη χειρουργική δερματολογία, με μεγάλη εμπειρία στην αφαίρεση δερματικών όγκων.';
      case 'Δήμητρα Λαμπίρη':
        return 'Η Δρ. Δήμητρα Λαμπίρη είναι δερματολόγος με ειδίκευση στις θεραπευτικές μεθόδους για την καταπολέμηση των δερματικών λοιμώξεων.';
      case 'Θεόδωρος Χατζηγεωργίου':
        return 'Ο Δρ. Θεόδωρος Χατζηγεωργίου διαθέτει εκτενή εμπειρία στην κλινική δερματολογία και την αισθητική δερματολογία.';
      case 'Ελένη Γεωργιάδου':
        return 'Η Δρ. Ελένη Γεωργιάδου είναι γνωστή για την ειδίκευσή της στην επεμβατική δερματολογία και την ενίσχυση της δερματικής υγείας.';
      default:
        return 'No biography available.';
    }
  }
}
