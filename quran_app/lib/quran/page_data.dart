import '../core/app_extension.dart';

class Page {
  final int surah;
  int hizbQuarter;
  int get hizb => (hizbQuarter / 4).fixedRound;
  int get juz => (hizbQuarter / 8).fixedRound;

  Page({
    required this.surah,
    required this.hizbQuarter,
  });
}

List<Page> quranPages = [
  Page(surah: 1, hizbQuarter: 1),
  Page(surah: 2, hizbQuarter: 1),
  Page(surah: 2, hizbQuarter: 1),
  Page(surah: 2, hizbQuarter: 1),
  Page(surah: 2, hizbQuarter: 2),
  Page(surah: 2, hizbQuarter: 2),
  Page(surah: 2, hizbQuarter: 3),
  Page(surah: 2, hizbQuarter: 3),
  Page(surah: 2, hizbQuarter: 4),
  Page(surah: 2, hizbQuarter: 4),
  Page(surah: 2, hizbQuarter: 5),
  Page(surah: 2, hizbQuarter: 5),
  Page(surah: 2, hizbQuarter: 5),
  Page(surah: 2, hizbQuarter: 6),
  Page(surah: 2, hizbQuarter: 6),
  Page(surah: 2, hizbQuarter: 6),
  Page(surah: 2, hizbQuarter: 7),
  Page(surah: 2, hizbQuarter: 7),
  Page(surah: 2, hizbQuarter: 8),
  Page(surah: 2, hizbQuarter: 8),
  Page(surah: 2, hizbQuarter: 8),
  Page(surah: 2, hizbQuarter: 9),
  Page(surah: 2, hizbQuarter: 9),
  Page(surah: 2, hizbQuarter: 10),
  Page(surah: 2, hizbQuarter: 10),
  Page(surah: 2, hizbQuarter: 10),
  Page(surah: 2, hizbQuarter: 11),
  Page(surah: 2, hizbQuarter: 11),
  Page(surah: 2, hizbQuarter: 12),
  Page(surah: 2, hizbQuarter: 12),
  Page(surah: 2, hizbQuarter: 12),
  Page(surah: 2, hizbQuarter: 13),
  Page(surah: 2, hizbQuarter: 13),
  Page(surah: 2, hizbQuarter: 14),
  Page(surah: 2, hizbQuarter: 14),
  Page(surah: 2, hizbQuarter: 14),
  Page(surah: 2, hizbQuarter: 15),
  Page(surah: 2, hizbQuarter: 15),
  Page(surah: 2, hizbQuarter: 16),
  Page(surah: 2, hizbQuarter: 16),
  Page(surah: 2, hizbQuarter: 16),
  Page(surah: 2, hizbQuarter: 17),
  Page(surah: 2, hizbQuarter: 17),
  Page(surah: 2, hizbQuarter: 18),
  Page(surah: 2, hizbQuarter: 18),
  Page(surah: 2, hizbQuarter: 19),
  Page(surah: 2, hizbQuarter: 19),
  Page(surah: 2, hizbQuarter: 19),
  Page(surah: 2, hizbQuarter: 20),
  Page(surah: 3, hizbQuarter: 20),
  Page(surah: 3, hizbQuarter: 21),
  Page(surah: 3, hizbQuarter: 21),
  Page(surah: 3, hizbQuarter: 21),
  Page(surah: 3, hizbQuarter: 22),
  Page(surah: 3, hizbQuarter: 22),
  Page(surah: 3, hizbQuarter: 23),
  Page(surah: 3, hizbQuarter: 23),
  Page(surah: 3, hizbQuarter: 23),
  Page(surah: 3, hizbQuarter: 24),
  Page(surah: 3, hizbQuarter: 24),
  Page(surah: 3, hizbQuarter: 24),
  Page(surah: 3, hizbQuarter: 25),
  Page(surah: 3, hizbQuarter: 25),
  Page(surah: 3, hizbQuarter: 26),
  Page(surah: 3, hizbQuarter: 26),
  Page(surah: 3, hizbQuarter: 26),
  Page(surah: 3, hizbQuarter: 27),
  Page(surah: 3, hizbQuarter: 27),
  Page(surah: 3, hizbQuarter: 28),
  Page(surah: 3, hizbQuarter: 28),
  Page(surah: 3, hizbQuarter: 28),
  Page(surah: 3, hizbQuarter: 29),
  Page(surah: 3, hizbQuarter: 29),
  Page(surah: 3, hizbQuarter: 30),
  Page(surah: 3, hizbQuarter: 30),
  Page(surah: 3, hizbQuarter: 30),
  Page(surah: 4, hizbQuarter: 31),
  Page(surah: 4, hizbQuarter: 31),
  Page(surah: 4, hizbQuarter: 32),
  Page(surah: 4, hizbQuarter: 32),
  Page(surah: 4, hizbQuarter: 32),
  Page(surah: 4, hizbQuarter: 33),
  Page(surah: 4, hizbQuarter: 33),
  Page(surah: 4, hizbQuarter: 34),
  Page(surah: 4, hizbQuarter: 34),
  Page(surah: 4, hizbQuarter: 34),
  Page(surah: 4, hizbQuarter: 35),
  Page(surah: 4, hizbQuarter: 35),
  Page(surah: 4, hizbQuarter: 36),
  Page(surah: 4, hizbQuarter: 36),
  Page(surah: 4, hizbQuarter: 36),
  Page(surah: 4, hizbQuarter: 37),
  Page(surah: 4, hizbQuarter: 37),
  Page(surah: 4, hizbQuarter: 38),
  Page(surah: 4, hizbQuarter: 38),
  Page(surah: 4, hizbQuarter: 38),
  Page(surah: 4, hizbQuarter: 39),
  Page(surah: 4, hizbQuarter: 39),
  Page(surah: 4, hizbQuarter: 39),
  Page(surah: 4, hizbQuarter: 40),
  Page(surah: 4, hizbQuarter: 40),
  Page(surah: 4, hizbQuarter: 41),
  Page(surah: 4, hizbQuarter: 41),
  Page(surah: 4, hizbQuarter: 42),
  Page(surah: 4, hizbQuarter: 42),
  Page(surah: 4, hizbQuarter: 43),
  Page(surah: 5, hizbQuarter: 43),
  Page(surah: 5, hizbQuarter: 43),
  Page(surah: 5, hizbQuarter: 44),
  Page(surah: 5, hizbQuarter: 44),
  Page(surah: 5, hizbQuarter: 44),
  Page(surah: 5, hizbQuarter: 45),
  Page(surah: 5, hizbQuarter: 45),
  Page(surah: 5, hizbQuarter: 46),
  Page(surah: 5, hizbQuarter: 46),
  Page(surah: 5, hizbQuarter: 46),
  Page(surah: 5, hizbQuarter: 47),
  Page(surah: 5, hizbQuarter: 47),
  Page(surah: 5, hizbQuarter: 48),
  Page(surah: 5, hizbQuarter: 48),
  Page(surah: 5, hizbQuarter: 49),
  Page(surah: 5, hizbQuarter: 49),
  Page(surah: 5, hizbQuarter: 49),
  Page(surah: 5, hizbQuarter: 50),
  Page(surah: 5, hizbQuarter: 50),
  Page(surah: 5, hizbQuarter: 51),
  Page(surah: 5, hizbQuarter: 51),
  Page(surah: 6, hizbQuarter: 51),
  Page(surah: 6, hizbQuarter: 52),
  Page(surah: 6, hizbQuarter: 52),
  Page(surah: 6, hizbQuarter: 52),
  Page(surah: 6, hizbQuarter: 53),
  Page(surah: 6, hizbQuarter: 53),
  Page(surah: 6, hizbQuarter: 54),
  Page(surah: 6, hizbQuarter: 54),
  Page(surah: 6, hizbQuarter: 54),
  Page(surah: 6, hizbQuarter: 55),
  Page(surah: 6, hizbQuarter: 55),
  Page(surah: 6, hizbQuarter: 55),
  Page(surah: 6, hizbQuarter: 56),
  Page(surah: 6, hizbQuarter: 56),
  Page(surah: 6, hizbQuarter: 57),
  Page(surah: 6, hizbQuarter: 57),
  Page(surah: 6, hizbQuarter: 58),
  Page(surah: 6, hizbQuarter: 58),
  Page(surah: 6, hizbQuarter: 59),
  Page(surah: 6, hizbQuarter: 59),
  Page(surah: 6, hizbQuarter: 60),
  Page(surah: 6, hizbQuarter: 60),
  Page(surah: 6, hizbQuarter: 60),
  Page(surah: 7, hizbQuarter: 61),
  Page(surah: 7, hizbQuarter: 61),
  Page(surah: 7, hizbQuarter: 61),
  Page(surah: 7, hizbQuarter: 62),
  Page(surah: 7, hizbQuarter: 62),
  Page(surah: 7, hizbQuarter: 63),
  Page(surah: 7, hizbQuarter: 63),
  Page(surah: 7, hizbQuarter: 64),
  Page(surah: 7, hizbQuarter: 64),
  Page(surah: 7, hizbQuarter: 64),
  Page(surah: 7, hizbQuarter: 64),
  Page(surah: 7, hizbQuarter: 65),
  Page(surah: 7, hizbQuarter: 65),
  Page(surah: 7, hizbQuarter: 66),
  Page(surah: 7, hizbQuarter: 66),
  Page(surah: 7, hizbQuarter: 66),
  Page(surah: 7, hizbQuarter: 67),
  Page(surah: 7, hizbQuarter: 67),
  Page(surah: 7, hizbQuarter: 67),
  Page(surah: 7, hizbQuarter: 68),
  Page(surah: 7, hizbQuarter: 68),
  Page(surah: 7, hizbQuarter: 68),
  Page(surah: 7, hizbQuarter: 69),
  Page(surah: 7, hizbQuarter: 69),
  Page(surah: 7, hizbQuarter: 70),
  Page(surah: 7, hizbQuarter: 70),
  Page(surah: 8, hizbQuarter: 71),
  Page(surah: 8, hizbQuarter: 71),
  Page(surah: 8, hizbQuarter: 72),
  Page(surah: 8, hizbQuarter: 72),
  Page(surah: 8, hizbQuarter: 72),
  Page(surah: 8, hizbQuarter: 73),
  Page(surah: 8, hizbQuarter: 73),
  Page(surah: 8, hizbQuarter: 74),
  Page(surah: 8, hizbQuarter: 74),
  Page(surah: 8, hizbQuarter: 74),
  Page(surah: 9, hizbQuarter: 75),
  Page(surah: 9, hizbQuarter: 75),
  Page(surah: 9, hizbQuarter: 76),
  Page(surah: 9, hizbQuarter: 76),
  Page(surah: 9, hizbQuarter: 76),
  Page(surah: 9, hizbQuarter: 77),
  Page(surah: 9, hizbQuarter: 77),
  Page(surah: 9, hizbQuarter: 78),
  Page(surah: 9, hizbQuarter: 78),
  Page(surah: 9, hizbQuarter: 79),
  Page(surah: 9, hizbQuarter: 79),
  Page(surah: 9, hizbQuarter: 79),
  Page(surah: 9, hizbQuarter: 80),
  Page(surah: 9, hizbQuarter: 80),
  Page(surah: 9, hizbQuarter: 81),
  Page(surah: 9, hizbQuarter: 81),
  Page(surah: 9, hizbQuarter: 81),
  Page(surah: 9, hizbQuarter: 82),
  Page(surah: 9, hizbQuarter: 82),
  Page(surah: 9, hizbQuarter: 83),
  Page(surah: 9, hizbQuarter: 83),
  Page(surah: 10, hizbQuarter: 83),
  Page(surah: 10, hizbQuarter: 84),
  Page(surah: 10, hizbQuarter: 84),
  Page(surah: 10, hizbQuarter: 84),
  Page(surah: 10, hizbQuarter: 85),
  Page(surah: 10, hizbQuarter: 85),
  Page(surah: 10, hizbQuarter: 86),
  Page(surah: 10, hizbQuarter: 86),
  Page(surah: 10, hizbQuarter: 86),
  Page(surah: 10, hizbQuarter: 87),
  Page(surah: 10, hizbQuarter: 87),
  Page(surah: 10, hizbQuarter: 88),
  Page(surah: 10, hizbQuarter: 88),
  Page(surah: 10, hizbQuarter: 88),
  Page(surah: 11, hizbQuarter: 89),
  Page(surah: 11, hizbQuarter: 89),
  Page(surah: 11, hizbQuarter: 90),
  Page(surah: 11, hizbQuarter: 90),
  Page(surah: 11, hizbQuarter: 91),
  Page(surah: 11, hizbQuarter: 91),
  Page(surah: 11, hizbQuarter: 92),
  Page(surah: 11, hizbQuarter: 92),
  Page(surah: 11, hizbQuarter: 92),
  Page(surah: 11, hizbQuarter: 93),
  Page(surah: 11, hizbQuarter: 93),
  Page(surah: 11, hizbQuarter: 94),
  Page(surah: 11, hizbQuarter: 94),
  Page(surah: 11, hizbQuarter: 94),
  Page(surah: 12, hizbQuarter: 95),
  Page(surah: 12, hizbQuarter: 95),
  Page(surah: 12, hizbQuarter: 96),
  Page(surah: 12, hizbQuarter: 96),
  Page(surah: 12, hizbQuarter: 96),
  Page(surah: 12, hizbQuarter: 96),
  Page(surah: 12, hizbQuarter: 97),
  Page(surah: 12, hizbQuarter: 97),
  Page(surah: 12, hizbQuarter: 98),
  Page(surah: 12, hizbQuarter: 98),
  Page(surah: 12, hizbQuarter: 98),
  Page(surah: 12, hizbQuarter: 99),
  Page(surah: 12, hizbQuarter: 99),
  Page(surah: 13, hizbQuarter: 100),
  Page(surah: 13, hizbQuarter: 100),
  Page(surah: 13, hizbQuarter: 100),
  Page(surah: 13, hizbQuarter: 101),
  Page(surah: 13, hizbQuarter: 101),
  Page(surah: 13, hizbQuarter: 102),
  Page(surah: 13, hizbQuarter: 102),
  Page(surah: 14, hizbQuarter: 103),
  Page(surah: 14, hizbQuarter: 103),
  Page(surah: 14, hizbQuarter: 103),
  Page(surah: 14, hizbQuarter: 104),
  Page(surah: 14, hizbQuarter: 104),
  Page(surah: 14, hizbQuarter: 104),
  Page(surah: 15, hizbQuarter: 105),
  Page(surah: 15, hizbQuarter: 105),
  Page(surah: 15, hizbQuarter: 106),
  Page(surah: 15, hizbQuarter: 106),
  Page(surah: 15, hizbQuarter: 106),
  Page(surah: 15, hizbQuarter: 107),
  Page(surah: 16, hizbQuarter: 107),
  Page(surah: 16, hizbQuarter: 107),
  Page(surah: 16, hizbQuarter: 108),
  Page(surah: 16, hizbQuarter: 108),
  Page(surah: 16, hizbQuarter: 109),
  Page(surah: 16, hizbQuarter: 109),
  Page(surah: 16, hizbQuarter: 109),
  Page(surah: 16, hizbQuarter: 110),
  Page(surah: 16, hizbQuarter: 110),
  Page(surah: 16, hizbQuarter: 111),
  Page(surah: 16, hizbQuarter: 111),
  Page(surah: 16, hizbQuarter: 111),
  Page(surah: 16, hizbQuarter: 112),
  Page(surah: 16, hizbQuarter: 112),
  Page(surah: 17, hizbQuarter: 113),
  Page(surah: 17, hizbQuarter: 113),
  Page(surah: 17, hizbQuarter: 114),
  Page(surah: 17, hizbQuarter: 114),
  Page(surah: 17, hizbQuarter: 114),
  Page(surah: 17, hizbQuarter: 115),
  Page(surah: 17, hizbQuarter: 115),
  Page(surah: 17, hizbQuarter: 116),
  Page(surah: 17, hizbQuarter: 116),
  Page(surah: 17, hizbQuarter: 116),
  Page(surah: 17, hizbQuarter: 117),
  Page(surah: 17, hizbQuarter: 117),
  Page(surah: 18, hizbQuarter: 117),
  Page(surah: 18, hizbQuarter: 118),
  Page(surah: 18, hizbQuarter: 118),
  Page(surah: 18, hizbQuarter: 119),
  Page(surah: 18, hizbQuarter: 119),
  Page(surah: 18, hizbQuarter: 120),
  Page(surah: 18, hizbQuarter: 120),
  Page(surah: 18, hizbQuarter: 120),
  Page(surah: 18, hizbQuarter: 121),
  Page(surah: 18, hizbQuarter: 121),
  Page(surah: 18, hizbQuarter: 122),
  Page(surah: 19, hizbQuarter: 122),
  Page(surah: 19, hizbQuarter: 123),
  Page(surah: 19, hizbQuarter: 123),
  Page(surah: 19, hizbQuarter: 123),
  Page(surah: 19, hizbQuarter: 124),
  Page(surah: 19, hizbQuarter: 124),
  Page(surah: 19, hizbQuarter: 124),
  Page(surah: 19, hizbQuarter: 125),
  Page(surah: 20, hizbQuarter: 125),
  Page(surah: 20, hizbQuarter: 125),
  Page(surah: 20, hizbQuarter: 126),
  Page(surah: 20, hizbQuarter: 126),
  Page(surah: 20, hizbQuarter: 127),
  Page(surah: 20, hizbQuarter: 127),
  Page(surah: 20, hizbQuarter: 128),
  Page(surah: 20, hizbQuarter: 128),
  Page(surah: 20, hizbQuarter: 128),
  Page(surah: 21, hizbQuarter: 129),
  Page(surah: 21, hizbQuarter: 129),
  Page(surah: 21, hizbQuarter: 130),
  Page(surah: 21, hizbQuarter: 130),
  Page(surah: 21, hizbQuarter: 131),
  Page(surah: 21, hizbQuarter: 131),
  Page(surah: 21, hizbQuarter: 131),
  Page(surah: 21, hizbQuarter: 132),
  Page(surah: 21, hizbQuarter: 132),
  Page(surah: 21, hizbQuarter: 132),
  Page(surah: 22, hizbQuarter: 133),
  Page(surah: 22, hizbQuarter: 133),
  Page(surah: 22, hizbQuarter: 134),
  Page(surah: 22, hizbQuarter: 134),
  Page(surah: 22, hizbQuarter: 135),
  Page(surah: 22, hizbQuarter: 135),
  Page(surah: 22, hizbQuarter: 135),
  Page(surah: 22, hizbQuarter: 136),
  Page(surah: 22, hizbQuarter: 136),
  Page(surah: 22, hizbQuarter: 136),
  Page(surah: 23, hizbQuarter: 137),
  Page(surah: 23, hizbQuarter: 137),
  Page(surah: 23, hizbQuarter: 138),
  Page(surah: 23, hizbQuarter: 138),
  Page(surah: 23, hizbQuarter: 138),
  Page(surah: 23, hizbQuarter: 139),
  Page(surah: 23, hizbQuarter: 139),
  Page(surah: 23, hizbQuarter: 139),
  Page(surah: 24, hizbQuarter: 140),
  Page(surah: 24, hizbQuarter: 140),
  Page(surah: 24, hizbQuarter: 141),
  Page(surah: 24, hizbQuarter: 141),
  Page(surah: 24, hizbQuarter: 142),
  Page(surah: 24, hizbQuarter: 142),
  Page(surah: 24, hizbQuarter: 143),
  Page(surah: 24, hizbQuarter: 143),
  Page(surah: 24, hizbQuarter: 143),
  Page(surah: 24, hizbQuarter: 144),
  Page(surah: 25, hizbQuarter: 144),
  Page(surah: 25, hizbQuarter: 144),
  Page(surah: 25, hizbQuarter: 145),
  Page(surah: 25, hizbQuarter: 145),
  Page(surah: 25, hizbQuarter: 146),
  Page(surah: 25, hizbQuarter: 146),
  Page(surah: 25, hizbQuarter: 146),
  Page(surah: 26, hizbQuarter: 147),
  Page(surah: 26, hizbQuarter: 147),
  Page(surah: 26, hizbQuarter: 148),
  Page(surah: 26, hizbQuarter: 148),
  Page(surah: 26, hizbQuarter: 149),
  Page(surah: 26, hizbQuarter: 149),
  Page(surah: 26, hizbQuarter: 149),
  Page(surah: 26, hizbQuarter: 150),
  Page(surah: 26, hizbQuarter: 150),
  Page(surah: 26, hizbQuarter: 150),
  Page(surah: 27, hizbQuarter: 151),
  Page(surah: 27, hizbQuarter: 151),
  Page(surah: 27, hizbQuarter: 152),
  Page(surah: 27, hizbQuarter: 152),
  Page(surah: 27, hizbQuarter: 152),
  Page(surah: 27, hizbQuarter: 153),
  Page(surah: 27, hizbQuarter: 153),
  Page(surah: 27, hizbQuarter: 154),
  Page(surah: 27, hizbQuarter: 154),
  Page(surah: 28, hizbQuarter: 155),
  Page(surah: 28, hizbQuarter: 155),
  Page(surah: 28, hizbQuarter: 155),
  Page(surah: 28, hizbQuarter: 156),
  Page(surah: 28, hizbQuarter: 156),
  Page(surah: 28, hizbQuarter: 156),
  Page(surah: 28, hizbQuarter: 157),
  Page(surah: 28, hizbQuarter: 157),
  Page(surah: 28, hizbQuarter: 158),
  Page(surah: 28, hizbQuarter: 158),
  Page(surah: 28, hizbQuarter: 159),
  Page(surah: 29, hizbQuarter: 159),
  Page(surah: 29, hizbQuarter: 159),
  Page(surah: 29, hizbQuarter: 160),
  Page(surah: 29, hizbQuarter: 160),
  Page(surah: 29, hizbQuarter: 160),
  Page(surah: 29, hizbQuarter: 161),
  Page(surah: 29, hizbQuarter: 161),
  Page(surah: 29, hizbQuarter: 162),
  Page(surah: 30, hizbQuarter: 162),
  Page(surah: 30, hizbQuarter: 162),
  Page(surah: 30, hizbQuarter: 163),
  Page(surah: 30, hizbQuarter: 163),
  Page(surah: 30, hizbQuarter: 163),
  Page(surah: 30, hizbQuarter: 164),
  Page(surah: 31, hizbQuarter: 164),
  Page(surah: 31, hizbQuarter: 164),
  Page(surah: 31, hizbQuarter: 165),
  Page(surah: 31, hizbQuarter: 165),
  Page(surah: 32, hizbQuarter: 166),
  Page(surah: 32, hizbQuarter: 166),
  Page(surah: 32, hizbQuarter: 166),
  Page(surah: 33, hizbQuarter: 167),
  Page(surah: 33, hizbQuarter: 167),
  Page(surah: 33, hizbQuarter: 168),
  Page(surah: 33, hizbQuarter: 168),
  Page(surah: 33, hizbQuarter: 169),
  Page(surah: 33, hizbQuarter: 169),
  Page(surah: 33, hizbQuarter: 169),
  Page(surah: 33, hizbQuarter: 170),
  Page(surah: 33, hizbQuarter: 171),
  Page(surah: 33, hizbQuarter: 171),
  Page(surah: 34, hizbQuarter: 171),
  Page(surah: 34, hizbQuarter: 172),
  Page(surah: 34, hizbQuarter: 172),
  Page(surah: 34, hizbQuarter: 173),
  Page(surah: 34, hizbQuarter: 173),
  Page(surah: 34, hizbQuarter: 174),
  Page(surah: 34, hizbQuarter: 174),
  Page(surah: 35, hizbQuarter: 174),
  Page(surah: 35, hizbQuarter: 175),
  Page(surah: 35, hizbQuarter: 175),
  Page(surah: 35, hizbQuarter: 175),
  Page(surah: 35, hizbQuarter: 176),
  Page(surah: 35, hizbQuarter: 176),
  Page(surah: 36, hizbQuarter: 176),
  Page(surah: 36, hizbQuarter: 177),
  Page(surah: 36, hizbQuarter: 177),
  Page(surah: 36, hizbQuarter: 178),
  Page(surah: 36, hizbQuarter: 178),
  Page(surah: 37, hizbQuarter: 179),
  Page(surah: 37, hizbQuarter: 179),
  Page(surah: 37, hizbQuarter: 179),
  Page(surah: 37, hizbQuarter: 180),
  Page(surah: 37, hizbQuarter: 180),
  Page(surah: 37, hizbQuarter: 181),
  Page(surah: 37, hizbQuarter: 181),
  Page(surah: 38, hizbQuarter: 181),
  Page(surah: 38, hizbQuarter: 182),
  Page(surah: 38, hizbQuarter: 182),
  Page(surah: 38, hizbQuarter: 183),
  Page(surah: 38, hizbQuarter: 183),
  Page(surah: 38, hizbQuarter: 183),
  Page(surah: 39, hizbQuarter: 184),
  Page(surah: 39, hizbQuarter: 184),
  Page(surah: 39, hizbQuarter: 184),
  Page(surah: 39, hizbQuarter: 185),
  Page(surah: 39, hizbQuarter: 185),
  Page(surah: 39, hizbQuarter: 186),
  Page(surah: 39, hizbQuarter: 186),
  Page(surah: 39, hizbQuarter: 186),
  Page(surah: 39, hizbQuarter: 187),
  Page(surah: 40, hizbQuarter: 187),
  Page(surah: 40, hizbQuarter: 188),
  Page(surah: 40, hizbQuarter: 188),
  Page(surah: 40, hizbQuarter: 188),
  Page(surah: 40, hizbQuarter: 189),
  Page(surah: 40, hizbQuarter: 189),
  Page(surah: 40, hizbQuarter: 190),
  Page(surah: 40, hizbQuarter: 190),
  Page(surah: 40, hizbQuarter: 190),
  Page(surah: 41, hizbQuarter: 191),
  Page(surah: 41, hizbQuarter: 191),
  Page(surah: 41, hizbQuarter: 192),
  Page(surah: 41, hizbQuarter: 192),
  Page(surah: 41, hizbQuarter: 192),
  Page(surah: 41, hizbQuarter: 193),
  Page(surah: 42, hizbQuarter: 193),
  Page(surah: 42, hizbQuarter: 194),
  Page(surah: 42, hizbQuarter: 194),
  Page(surah: 42, hizbQuarter: 195),
  Page(surah: 42, hizbQuarter: 195),
  Page(surah: 42, hizbQuarter: 196),
  Page(surah: 42, hizbQuarter: 196),
  Page(surah: 43, hizbQuarter: 196),
  Page(surah: 43, hizbQuarter: 197),
  Page(surah: 43, hizbQuarter: 197),
  Page(surah: 43, hizbQuarter: 198),
  Page(surah: 43, hizbQuarter: 198),
  Page(surah: 43, hizbQuarter: 198),
  Page(surah: 44, hizbQuarter: 199),
  Page(surah: 44, hizbQuarter: 199),
  Page(surah: 44, hizbQuarter: 199),
  Page(surah: 45, hizbQuarter: 200),
  Page(surah: 45, hizbQuarter: 200),
  Page(surah: 45, hizbQuarter: 200),
  Page(surah: 45, hizbQuarter: 201),
  Page(surah: 46, hizbQuarter: 201),
  Page(surah: 46, hizbQuarter: 201),
  Page(surah: 46, hizbQuarter: 202),
  Page(surah: 46, hizbQuarter: 202),
  Page(surah: 47, hizbQuarter: 203),
  Page(surah: 47, hizbQuarter: 203),
  Page(surah: 47, hizbQuarter: 203),
  Page(surah: 47, hizbQuarter: 204),
  Page(surah: 48, hizbQuarter: 204),
  Page(surah: 48, hizbQuarter: 204),
  Page(surah: 48, hizbQuarter: 205),
  Page(surah: 48, hizbQuarter: 205),
  Page(surah: 48, hizbQuarter: 206),
  Page(surah: 49, hizbQuarter: 206),
  Page(surah: 49, hizbQuarter: 207),
  Page(surah: 50, hizbQuarter: 207),
  Page(surah: 50, hizbQuarter: 208),
  Page(surah: 50, hizbQuarter: 208),
  Page(surah: 51, hizbQuarter: 208),
  Page(surah: 51, hizbQuarter: 209),
  Page(surah: 51, hizbQuarter: 209),
  Page(surah: 52, hizbQuarter: 210),
  Page(surah: 52, hizbQuarter: 210),
  Page(surah: 53, hizbQuarter: 211),
  Page(surah: 53, hizbQuarter: 211),
  Page(surah: 53, hizbQuarter: 211),
  Page(surah: 54, hizbQuarter: 212),
  Page(surah: 54, hizbQuarter: 212),
  Page(surah: 54, hizbQuarter: 213),
  Page(surah: 55, hizbQuarter: 213),
  Page(surah: 55, hizbQuarter: 213),
  Page(surah: 55, hizbQuarter: 214),
  Page(surah: 56, hizbQuarter: 214),
  Page(surah: 56, hizbQuarter: 215),
  Page(surah: 56, hizbQuarter: 215),
  Page(surah: 57, hizbQuarter: 215),
  Page(surah: 57, hizbQuarter: 216),
  Page(surah: 57, hizbQuarter: 216),
  Page(surah: 57, hizbQuarter: 216),
  Page(surah: 58, hizbQuarter: 217),
  Page(surah: 58, hizbQuarter: 217),
  Page(surah: 58, hizbQuarter: 218),
  Page(surah: 58, hizbQuarter: 218),
  Page(surah: 59, hizbQuarter: 218),
  Page(surah: 59, hizbQuarter: 219),
  Page(surah: 59, hizbQuarter: 219),
  Page(surah: 60, hizbQuarter: 219),
  Page(surah: 60, hizbQuarter: 220),
  Page(surah: 60, hizbQuarter: 220),
  Page(surah: 61, hizbQuarter: 220),
  Page(surah: 62, hizbQuarter: 221),
  Page(surah: 62, hizbQuarter: 222),
  Page(surah: 63, hizbQuarter: 222),
  Page(surah: 64, hizbQuarter: 222),
  Page(surah: 64, hizbQuarter: 222),
  Page(surah: 65, hizbQuarter: 223),
  Page(surah: 65, hizbQuarter: 223),
  Page(surah: 66, hizbQuarter: 224),
  Page(surah: 66, hizbQuarter: 224),
  Page(surah: 67, hizbQuarter: 225),
  Page(surah: 67, hizbQuarter: 225),
  Page(surah: 67, hizbQuarter: 226),
  Page(surah: 68, hizbQuarter: 226),
  Page(surah: 68, hizbQuarter: 227),
  Page(surah: 69, hizbQuarter: 227),
  Page(surah: 69, hizbQuarter: 227),
  Page(surah: 70, hizbQuarter: 228),
  Page(surah: 70, hizbQuarter: 228),
  Page(surah: 71, hizbQuarter: 228),
  Page(surah: 72, hizbQuarter: 229),
  Page(surah: 72, hizbQuarter: 229),
  Page(surah: 73, hizbQuarter: 229),
  Page(surah: 73, hizbQuarter: 230),
  Page(surah: 74, hizbQuarter: 230),
  Page(surah: 74, hizbQuarter: 231),
  Page(surah: 75, hizbQuarter: 231),
  Page(surah: 76, hizbQuarter: 232),
  Page(surah: 76, hizbQuarter: 232),
  Page(surah: 77, hizbQuarter: 232),
  Page(surah: 78, hizbQuarter: 233),
  Page(surah: 78, hizbQuarter: 233),
  Page(surah: 79, hizbQuarter: 233),
  Page(surah: 80, hizbQuarter: 234),
  Page(surah: 81, hizbQuarter: 234),
  Page(surah: 82, hizbQuarter: 235),
  Page(surah: 83, hizbQuarter: 235),
  Page(surah: 83, hizbQuarter: 236),
  Page(surah: 85, hizbQuarter: 236),
  Page(surah: 86, hizbQuarter: 237),
  Page(surah: 87, hizbQuarter: 237),
  Page(surah: 89, hizbQuarter: 237),
  Page(surah: 89, hizbQuarter: 238),
  Page(surah: 91, hizbQuarter: 238),
  Page(surah: 92, hizbQuarter: 239),
  Page(surah: 95, hizbQuarter: 239),
  Page(surah: 97, hizbQuarter: 239),
  Page(surah: 98, hizbQuarter: 240),
  Page(surah: 100, hizbQuarter: 240),
  Page(surah: 103, hizbQuarter: 240),
  Page(surah: 106, hizbQuarter: 240),
  Page(surah: 109, hizbQuarter: 240),
  Page(surah: 112, hizbQuarter: 240)
];
