import 'package:flutter/material.dart';
import 'ChartsDemo/Page/ChildListViewPage.dart';

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  static const Color _primaryColor = Color(0xFF1E90FF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AACharts Flutter',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: _primaryColor,
          secondary: const Color(0xFF04D69F),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: _primaryColor,
          foregroundColor: Colors.white,
          elevation: 0.5,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 2,
          shadowColor: Colors.black.withValues(alpha: 0.08),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        dividerColor: Colors.grey.withValues(alpha: 0.15),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: _primaryColor,
          secondary: const Color(0xFF04D69F),
          surface: const Color(0xFF1E1E2E),
        ),
        scaffoldBackgroundColor: const Color(0xFF121218),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF1A1A2E),
          foregroundColor: Colors.white,
          elevation: 0.5,
          surfaceTintColor: Colors.transparent,
        ),
        cardTheme: CardThemeData(
          color: const Color(0xFF1E1E2E),
          elevation: 4,
          shadowColor: Colors.black.withValues(alpha: 0.3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        dividerColor: Colors.white.withValues(alpha: 0.08),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        ),
      ),
      home: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  static const List<_SectionItem> _sections = [
    _SectionItem('Basic Type Chart', '基础类型图表', Icons.bar_chart_rounded),
    _SectionItem('Special Type Chart', '特殊类型图表', Icons.auto_awesome),
    _SectionItem('Custom Style Chart', '自定义风格样式图表', Icons.palette_rounded),
    _SectionItem('Mixed Chart', '混合图形', Icons.stacked_line_chart_rounded),
    _SectionItem('AAChartEvents', 'JSFunction 自定义事件', Icons.touch_app_rounded),
    _SectionItem('AAOptions', '通过 Options 绘图', Icons.tune_rounded),
    _SectionItem('AATooltip', 'JSFunction 自定义 Tooltip',
        Icons.chat_bubble_outline_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('AACharts Flutter'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        itemCount: _sections.length,
        itemBuilder: (context, index) {
          final section = _sections[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Card(
              child: InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChildListViewPage(selectedIndex: index),
                      ));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: isDark
                              ? Application._primaryColor
                                  .withValues(alpha: 0.15)
                              : Application._primaryColor
                                  .withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          section.icon,
                          color: Application._primaryColor,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              section.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              section.subtitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: isDark
                                        ? Colors.white54
                                        : Colors.grey[500],
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: isDark ? Colors.white30 : Colors.grey[400],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SectionItem {
  final String title;
  final String subtitle;
  final IconData icon;
  const _SectionItem(this.title, this.subtitle, this.icon);
}
