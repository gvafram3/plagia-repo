import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';

import 'package:plag_app/widgets/build_icon_option.dart';
import 'package:plag_app/widgets/build_pinned_document.dart';

import '../widgets/build_modified_document_list.dart';
import '../data/list_of_documents.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/ellipses_white_screen.png'),
                fit: BoxFit.cover,
              ),
            )),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.3),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Welcome, John Doe! 😊',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('assets/images/img1.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 8.0,
                          ),
                          filled: true,
                          fillColor: Colors.grey[300],
                          suffixIcon: const Icon(
                            LineIcons.search,
                          ),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildIconOption(
                            'assets/images/add_file.png', 'Upload\nDocument'),
                        buildIconOption('assets/images/ocr.png', 'OCR\n '),
                        buildIconOption(
                            'assets/images/edit_text_file.png', 'Paraphrase\n'),
                        buildIconOption('assets/images/speech_bubble.png',
                            'Voice to \nText'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Pinned 📌",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildPinnedDocument(
                              'assets/images/pdf.png', 'Doc_1.pdf'),
                          buildPinnedDocument(
                              'assets/images/pdf.png', 'Doc_1.pdf'),
                          buildPinnedDocument(
                              'assets/images/pdf.png', 'Doc_1.pdf'),
                          buildPinnedDocument(
                              'assets/images/pdf.png', 'Doc_1.pdf'),
                          buildPinnedDocument(
                              'assets/images/pdf.png', 'Doc_1.pdf'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Last Modified',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'show more',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 270,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            buildModifiedDocumentList(),
                            buildModifiedDocumentList(),
                            buildModifiedDocumentList(),
                            buildModifiedDocumentList(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
