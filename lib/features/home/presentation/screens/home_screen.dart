import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(22, 28, 22, 120),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const _Header(),
                    const SizedBox(height: 34),
                    const Text(
                      'من رفوف المعرفة',
                      style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontSize: 14,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const ArticleCard(
                      title: 'لماذا نكتب ما لا نستطيع قوله؟',
                      author: 'ليان السامرائي',
                      category: 'فلسفة',
                      readingTime: '7 دقائق',
                      icon: Icons.edit,
                    ),
                    const SizedBox(height: 16),
                    const ArticleCard(
                      title: 'عن الذاكرة، الكتب والأشياء التي تبقى',
                      author: 'يوسف نوري',
                      category: 'أدب',
                      readingTime: '11 دقيقة',
                      icon: Icons.auto_stories,
                    ),
                    const SizedBox(height: 16),
                    const ArticleCard(
                      title: 'هل يمكن للفكرة أن تغيّر صاحبها؟',
                      author: 'نور الهدى',
                      category: 'فكر',
                      readingTime: '5 دقائق',
                      icon: Icons.auto_awesome,
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Text(
                        '✦  نهاية الرف  ✦',
                        style: TextStyle(
                          color: const Color(0xFFD4AF37).withOpacity(.45),
                          fontSize: 12,
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

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'مساء الخير،',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.55),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'أهلاً بكِ في الملاذ',
                    style: TextStyle(
                      color: Color(0xFFE8DCC8),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF171310),
                border: Border.all(
                  color: const Color(0xFFD4AF37).withOpacity(.35),
                ),
              ),
              child: const Icon(
                Icons.notifications_none,
                color: Color(0xFFD4AF37),
                size: 22,
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Text(
          'اكتشفي فكرة جديدة، واتركي فكرة أخرى خلفك.',
          style: TextStyle(
            color: const Color(0xFFC9C0B3).withOpacity(.65),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class ArticleCard extends StatelessWidget {
  final String title;
  final String author;
  final String category;
  final String readingTime;
  final IconData icon;

  const ArticleCard({
    super.key,
    required this.title,
    required this.author,
    required this.category,
    required this.readingTime,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    const gold = Color(0xFFD4AF37);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF18130F),
        border: Border.all(
          color: gold.withOpacity(.13),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.30),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned(
              right: -30,
              top: -30,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF73538F).withOpacity(.07),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: gold.withOpacity(.08),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: gold.withOpacity(.22),
                          ),
                        ),
                        child: Icon(
                          icon,
                          size: 18,
                          color: gold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0E0C0A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                            color: gold.withOpacity(.8),
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFFE8DCC8),
                      fontSize: 20,
                      height: 1.45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Divider(
                    color: gold.withOpacity(.10),
                    height: 1,
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline,
                        size: 16,
                        color: Color(0xFF8E877E),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          author,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color(0xFFB0A79B),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.schedule_outlined,
                        size: 15,
                        color: Color(0xFF8E877E),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        readingTime,
                        style: const TextStyle(
                          color: Color(0xFF8E877E),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
