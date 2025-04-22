import 'package:flutter/material.dart';
import 'package:untitled/model.dart';

class CourseDetailPage extends StatelessWidget {
  final Course course;

  const CourseDetailPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: course.bgcolor,
        title: Text(course.title),
        centerTitle: true,
      ),
      body: Container(
        color: course.bgcolor,
        child: Column(
          children: [
            // الصورة الأساسية
            Container(
              height: 200,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.asset(course.image),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Text(
                      course.title,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      course.subtitle,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),

                    // ✅ صورة إضافية صغيرة
                    if (course.extraImage != null)
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            course.extraImage!,
                            height: 180, // ✅ تم تقليله
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            // ✅ أيقونة الكاميرا بأسفل الصفحة
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    // ممكن تضيف وظيفة هنا مثلاً لفتح الكاميرا
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
