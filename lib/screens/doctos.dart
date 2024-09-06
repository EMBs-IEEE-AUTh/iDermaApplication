import 'package:flutter/material.dart';
import 'package:iderma/screens/doctor_profile_screen.dart';

class ProfileListScreen extends StatelessWidget {
  const ProfileListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dermatologist in Thessaloniki'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 32),
        child: SingleChildScrollView(
          child: Column(
            children:
                List.generate(5, (index) => _buildProfileRow(context, index)),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileRow(BuildContext context, int index) {
    final profiles = [
      {
        'imageUrl':
            'https://www.wakehealth.edu/-/media/wakeforest/global/system/person-images/s/sarah-lynn-taylor.jpg?mw=1200&hash=6727C197DE451F3A8AB65A62F2D96770',
        'name': 'Ελένη Κωνσταντίνου',
        'address': 'Πατρ. Ιωακείμ 2, Θεσσαλονίκη',
        'phone': '2315890942',
        'rating': 5,
        'bio':
            'Η Δρ. Ελένη Κωνσταντίνου είναι μια εξειδικευμένη δερματολόγος με πολυάριθμες διακρίσεις στον τομέα της δερματολογίας. Ειδικεύεται στη θεραπεία του ακμής και των δερματικών παθήσεων με την τελευταία λέξη της τεχνολογίας.'
      },
      {
        'imageUrl':
            'https://mdxvitals-res.cloudinary.com/private_images/q_auto/professionals/1525368/photo.jpg',
        'name': 'Νικόλαος Μιχαηλίδης',
        'address': 'Λεωφόρος Βασιλέως Γεωργίου 8 , Θεσσαλονίκη',
        'phone': '2310669636',
        'rating': 3,
        'bio':
            'Ο Δρ. Νικόλαος Μιχαηλίδης είναι δερματολόγος με εμπειρία στη θεραπεία του έκζεμα και της ψωρίασης. Εξειδικεύεται στις σύγχρονες μεθόδους διάγνωσης και θεραπείας.'
      },
      {
        'imageUrl':
            'https://mdxvitals-res.cloudinary.com/private_images/q_auto/professionals/1735007/photo.jpg',
        'name': 'Γεώργιος Παπαδόπουλος',
        'address': 'Αγίας Σοφίας 42, Θεσσαλονίκη',
        'phone': '2313330270',
        'rating': 4,
        'bio':
            'Ο Δρ. Γεώργιος Παπαδόπουλος είναι γνωστός για την εξειδίκευσή του στη θεραπεία της ακμής και των δερματικών λοιμώξεων. Προσφέρει εξατομικευμένη φροντίδα για κάθε ασθενή.'
      },
      {
        'imageUrl':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7a-ubeltaw3nTa0y85XHuKwf9q0mRqox1pBoj0ceUpQe2XJVXmaKWiaJEZqIYnfONSZk&usqp=CAU',
        'name': 'Μαρία Σαμαρά',
        'address': 'Τσιμισκή 11, Θεσσαλονίκη',
        'phone': '2310004343',
        'rating': 4,
        'bio':
            'Η Δρ. Μαρία Σαμαρά ειδικεύεται στη δερματολογία με έμφαση στις αισθητικές παρεμβάσεις. Έχει μεγάλη εμπειρία σε θεραπείες αντιγήρανσης και αποκατάστασης δέρματος.'
      },
      {
        'imageUrl':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSycurtY0T1NCLO47a9nFo-ye0XgYzVlmwKT261YpZW_AfV2tpv9CMTtxxT1E8hr8lILis&usqp=CAU',
        'name': 'Αθηνά Στρατηγού',
        'address': 'Τσιμισκή 90, Θεσσαλονίκη',
        'phone': '2315564343',
        'rating': 5,
        'bio':
            'Η Δρ. Αθηνά Στρατηγού είναι αναγνωρίσιμη για την εξαιρετική της δουλειά στη δερματολογία. Εξειδικεύεται σε θεραπευτικές μεθόδους για χρόνιες δερματικές παθήσεις.'
      },
      {
        'imageUrl':
            'https://www.wakehealth.edu/-/media/wakeforest/global/system/person-images/a/amy-jo-mcmichael.jpg?mw=1200&hash=8652DBC13117C92CD85B79E91313126E',
        'name': 'Σοφία Μαυρίδου',
        'address': 'Εγνατίας 62, Θεσσαλονίκη',
        'phone': '2310286994',
        'rating': 4,
        'bio':
            'Η Δρ. Σοφία Μαυρίδου είναι μια εξειδικευμένη δερματολόγος με εστίαση στην έρευνα νέων θεραπειών δερματικών παθήσεων και στη χρήση προηγμένων τεχνολογιών.'
      },
      {
        'imageUrl':
            'https://files.blountmemorial.org/main_photos/doctors/609_Vines_David.jpg',
        'name': 'Κωνσταντίνος Παπαδημητρίου',
        'address': 'I. Τσιμισκή 136, Θεσσαλονίκη',
        'phone': '2313114450',
        'rating': 2,
        'bio':
            'Ο Δρ. Κωνσταντίνος Παπαδημητρίου έχει ειδίκευση στη διαχείριση δερματικών λοιμώξεων και προληπτική φροντίδα δέρματος. Ακολουθεί τις τελευταίες εξελίξεις στον τομέα.'
      },
      {
        'imageUrl':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2VS_1glMBqrk-83fAgHOuI9xSFc8Z_EF_Krt1sWxWBUs6Eu7wSDtZcDisKIR7uLpH2Wo&usqp=CAU',
        'name': 'Αλέξανδρος Κούτρας',
        'address': 'Τσιμισκή 72, Θεσσαλονίκη',
        'phone': '2310222390',
        'rating': 3,
        'bio':
            'Ο Δρ. Αλέξανδρος Κούτρας είναι δερματολόγος με ενδιαφέρον στις θεραπευτικές μεθόδους για δερματικές παθήσεις. Παρέχει ολοκληρωμένη φροντίδα με έμφαση στη συμβουλευτική.'
      },
      {
        'imageUrl':
            'https://www.stlukesonline.org/~/media/stlukes/provider%20images/turner-ryan-hs.jpg',
        'name': 'Στέφανος Αλεξίου',
        'address': 'Χρυσ. Σμύρνης 19, Θεσσαλονίκη',
        'phone': '2310755295',
        'rating': 2,
        'bio':
            'Ο Δρ. Στέφανος Αλεξίου ειδικεύεται στην πρόληψη και την θεραπεία δερματικών ασθενειών. Διαθέτει μεγάλη εμπειρία στην αποκατάσταση δερματικών προβλημάτων.'
      },
      {
        'imageUrl':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6qaqeM3M9K644SbMTimE-j8XcrxSd1Pk7Q86mpzogPqbSPGVoIyrKTp_8WJDq3mFSCVk&usqp=CAU',
        'name': 'Δήμητρα Λαμπίρη',
        'address': 'Αγγελάκη 25, Θεσσαλονίκη',
        'phone': '6907929395',
        'rating': 5,
        'bio':
            'Η Δρ. Δήμητρα Λαμπίρη είναι γνωστή για την εξαιρετική της εργασία στη δερματολογία με εξειδίκευση στις αισθητικές επεμβάσεις και την προληπτική φροντίδα.'
      },
      {
        'imageUrl':
            'https://doximity-res.cloudinary.com/images/f_auto,q_auto,t_public_profile_photo_320x320/712f8943-18d5-4049-ab6e-349ed2516cbe/ryan-turner-md-new-york-ny.jpg',
        'name': 'Θεόδωρος Χατζηγεωργίου',
        'address': 'Τσιμισκή 42, Θεσσαλονίκη',
        'phone': '2310222452',
        'rating': 3,
        'bio':
            'Ο Δρ. Θεόδωρος Χατζηγεωργίου έχει μεγάλη εμπειρία στη διάγνωση και θεραπεία δερματικών παθήσεων. Ειδικεύεται στην καλλυντική δερματολογία και την αποκατάσταση.'
      },
      {
        'imageUrl':
            'https://doximity-res.cloudinary.com/images/f_auto,q_auto,t_public_profile_photo_320x320/sy6o5tkbekdhexfdfsnl/mary-morrill-chuba-md-soquel-ca.jpg',
        'name': 'Ελένη Γεωργιάδου',
        'address': 'Τσιμισκή 30, Θεσσαλονίκη',
        'phone': '2310268929',
        'rating': 4,
        'bio':
            'Η Δρ. Ελένη Γεωργιάδου είναι δερματολόγος με ιδιαίτερη εξειδίκευση στη διαχείριση χρόνιων δερματικών καταστάσεων και τη χρήση προηγμένων τεχνολογιών.'
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildProfileColumn(context, profiles[index * 2 % profiles.length]),
          SizedBox(width: 16), // Add spacing between columns
          _buildProfileColumn(
              context, profiles[(index * 2 + 1) % profiles.length]),
        ],
      ),
    );
  }

  Widget _buildProfileColumn(
      BuildContext context, Map<String, dynamic> profile) {
    final int rating = profile['rating'] ?? 0;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorProfileScreen(doctor: profile),
            ),
          );
        },
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(profile['imageUrl']),
            ),
            SizedBox(height: 8),
            Text(profile['name'],
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            // Display the rating using star icons
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                );
              }),
            ),
            SizedBox(height: 4),
            Text(profile['address'], style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 4),
            Text(profile['phone'], style: TextStyle(color: Colors.blue)),
            SizedBox(height: 8),
            // Add biography
          ],
        ),
      ),
    );
  }
}
