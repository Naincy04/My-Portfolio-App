import 'package:flutter/material.dart';
import 'package:flutter_portfolio/about_me/contact_icons.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void _submitForm() async {
    String name = nameController.text;
    String userMessage =
        messageController.text; // Rename 'message' to 'userMessage'

    // For now, print the values
    print('Name: $name');
    print('Message: $userMessage');

    // Email Configuration
    String username = 'naincy2102@gmail.com';
    String password = 'Naincy0512@';

    final smtpServer = gmail(username, password);

    // Create the email message.
    final emailMessage = Message() // Rename 'message' to 'emailMessage'
      ..from = Address(username, 'Naincy Kumari')
      ..recipients.add('naincy2102@gmail.com')
      ..subject = 'New Contact Form Submission'
      ..text = 'Name: $name\n\nMessage: $userMessage';

    try {
      // Send the email.
      final sendReport = await send(emailMessage, smtpServer);

      // Print the result.
      print('Message sent: ' + sendReport.toString());
    } catch (e) {
      // Print any errors that occur.
      print('Error sending email: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (Responsive.isLargeMobile(context))
              const SizedBox(height: defaultPadding),
            const TitleText(prefix: '', title: 'Leave a message'),
            const SizedBox(height: defaultPadding * 8),
            Padding(
              padding: Responsive.isDesktop(context)
                  ? const EdgeInsets.symmetric(horizontal: defaultPadding * 25)
                  : const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: 'Your Name',
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: Responsive.isDesktop(context)
                  ? const EdgeInsets.symmetric(horizontal: defaultPadding * 25)
                  : const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
              child: TextField(
                controller: messageController,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: 'Your Message',
                ),
              ),
            ),
            const SizedBox(height: defaultPadding * 4),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultPadding),
                  gradient: LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue.shade900,
                  ]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(0, -1),
                        blurRadius: defaultPadding / 4),
                    BoxShadow(
                        color: Colors.red,
                        offset: Offset(0, 1),
                        blurRadius: defaultPadding / 4),
                  ]),
              child: GestureDetector(
                onTap: _submitForm, // Call your submit function here
                child: const Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white, // Text color
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            Responsive.isDesktop(context)
                ? const SizedBox(height: defaultPadding * 4)
                : const SizedBox(height: defaultPadding * 2),
            ContactIcon(),
          ],
        ),
      ),
    );
  }
}
