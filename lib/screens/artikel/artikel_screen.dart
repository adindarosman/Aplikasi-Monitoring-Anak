import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;
import 'package:html/dom.dart' as htmlDom;
import 'package:webview_flutter/webview_flutter.dart';

class ArticleScreen extends StatefulWidget {
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  List<Map<String, String>> articleData = [
    //a
    {
      'url':
          'https://www.halodoc.com/artikel/anak-cacingan-waspadai-berbagai-komplikasinya',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/anak-demam-kompres-air-hangat-atau-dingin',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    //b
    {
      'url':
          'https://www.halodoc.com/artikel/bahaya-obesitas-pada-balita-yang-perlu-diwaspadai',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/balita-bicara-gagap-orangtua-harus-bagaimana',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/balita-susah-makan-ini-cara-mengatasinya',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/balita-terlalu-kurus-awas-malabsorpsi-kronis',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/bayi-lahir-prematur-berisiko-mengidap-atresia-bilier',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/bayi-lebih-baik-tidur-di-kamar-yang-gelap-atau-terang',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },

    {
      'url':
          'https://www.halodoc.com/artikel/begini-perkembangan-bayi-usia-24-bulan',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },

    //i
    {
      'url':
          'https://www.halodoc.com/artikel/ibu-ini-5-tanda-bayi-mengalami-gangguan-pendengaran',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/ibu-harus-tahu-inilah-ciri-autisme-pada-balita-0-3-tahun',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/inilah-tahapan-pertumbuhan-gigi-balita',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/kenali-perkembangan-kognitif-dan-bahasa-pada-anak-balita',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    {
      'url':
          'https://www.halodoc.com/artikel/kenali-tanda-growth-spurt-pada-bayi-agar-tidak-panik',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
    //s
    {
      'url':
          'https://www.halodoc.com/artikel/seberapa-penting-balita-minum-susu',
      'titleSelector': '.section-header__content-text-title',
      'contentSelector': '.article-page__content',
    },
  ];

  List<Article> articles = [];
  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    List<Article> fetchedArticles = [];

    for (var data in articleData) {
      final response = await http.get(
        Uri.parse(data['url']!),
        headers: {
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
        },
      );

      if (response.statusCode == 200) {
        final document = htmlParser.parse(response.body);
        final titleElement = document.querySelector(data['titleSelector']!);

        if (titleElement != null) {
          fetchedArticles.add(Article(
            title: titleElement.text,
            content: '',
            contentSelector:
                data['contentSelector']!, // Konten awal diatur ke string kosong
          ));
        }
      } else {
        throw Exception('Failed to load articles');
      }
    }

    setState(() {
      articles = fetchedArticles;
    });
  }

  Future<void> fetchArticleContent(int index) async {
    final response = await http.get(Uri.parse(articleData[index]['url']!));

    if (response.statusCode == 200) {
      final document = htmlParser.parse(response.body);
      final contentElement =
          document.querySelector(articles[index].contentSelector);

      if (contentElement != null) {
        setState(() {
          articles[index].content = contentElement.outerHtml;
        });
      }
    } else {
      throw Exception('Failed to load article content');
    }
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artikel'),
        backgroundColor: Color(0xFFE29910),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: selectedIndex == -1
          ? (articles.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            articles[index].title,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                              isLoading = true;
                            });
                            if (articles[index].content.isEmpty) {
                              // Hanya ambil konten jika belum diambil sebelumnya
                              fetchArticleContent(index);
                            }
                          },
                        ),
                        Divider(
                          height: 2,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ],
                    );
                  },
                ))
          : Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      WebView(
                        initialUrl: 'about:blank',
                        javascriptMode: JavascriptMode.unrestricted,
                        onPageStarted: (String url) {
                          // Tambahkan delay buatan untuk menguji loading indicator
                          Future.delayed(Duration(milliseconds: 500), () {
                            setState(() {
                              isLoading = true;
                            });
                          });
                        },
                        onPageFinished: (String url) {
                          setState(() {
                            isLoading = false;
                          });
                        },
                        onWebViewCreated:
                            (WebViewController webViewController) {
                          // Load HTML content into WebView
                          webViewController.loadUrl(Uri.dataFromString(
                                  _wrapHtml(articles[selectedIndex].content),
                                  mimeType: 'text/html',
                                  encoding: Encoding.getByName('utf-8'))
                              .toString());
                        },
                      ),
                      if (isLoading)
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      Positioned(
                        bottom: 16.0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = -1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 127, 76,
                                  0), // Set the background color to orange
                            ),
                            child: Text('Kembali Ke Artikel List'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  String _wrapHtml(String content) {
    // Wrap the HTML content with a responsive meta tag
    return '''
      <html>
        <head>
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <style>
          img {
            max-width: 95%; /* Ensure images do not exceed the width of their container */
            max-height: 20%; /* Maintain the aspect ratio of the images */
            display: block; /* Remove any extra spacing around the images */
            margin: -10 px;
            
              vertical-align: middle; /* Adjust the vertical alignment of the images */
          }
          body {
            
            line-height: 1; /* Set line-height to remove extra spacing between lines */
          }
          
        </style>
        </head>
        <body>
        
          $content
        </body>
      </html>
    ''';
  }
}

class Article {
  final String title;
  String content;
  final String contentSelector;

  Article(
      {required this.title,
      required this.content,
      required this.contentSelector});
}
