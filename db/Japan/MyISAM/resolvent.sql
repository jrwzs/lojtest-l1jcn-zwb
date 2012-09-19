#----------------------------
# Table structure for resolvent
#----------------------------
CREATE TABLE `resolvent` (
  `item_id` int(10) NOT NULL DEFAULT '0',
  `note` varchar(45) NOT NULL,
  `crystal_count` int(10) NOT NULL DEFAULT '0',
 PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#----------------------------
# Records for table resolvent
#----------------------------

INSERT INTO `resolvent` VALUES
(1, 'オーキッシュ ダガー', 2),
(200001, 'オーキッシュ ダガー', 2),
(21, 'オーキッシュ ソード', 2),
(2, 'ダイス ダガー', 2),
(200002, 'ダイス ダガー', 2),
(23, 'ブロード ソード', 3),
(26, 'ドワヴィッシュ ソード', 25),
(27, 'シミター', 100),
(100027, 'シミター', 100),
(200027, 'シミター', 100),
(25, 'シルバー ソード', 180),
(100025, 'シルバー ソード', 180),
(32, 'グラディウス', 250),
(200032, 'グラディウス', 250),
(31, 'ロング ソード', 300),
(52, 'ツーハンド ソード', 1800),
(100052, 'ツーハンド ソード', 1800),
(200052, 'ツーハンド ソード', 1800),
(93, 'トライデント', 2),
(91, 'オーキッシュ スピアー', 5),
(95, 'ランス', 6),
(100095, 'ランス', 6),
(96, '枪', 8),
(94, 'パルチザン', 50),
(104, 'フォチャード', 800),
(102, 'ルチェルン ハンマー', 900),
(100102, 'ルチェルン ハンマー', 900),
(107, 'クリムゾン ランス', 20000),
(100107, 'クリムゾン ランス', 20000),
(137, 'アタム', 1),
(136, 'アックス', 2),
(138, 'クラブ', 3),
(139, 'フレイル', 4),
(140, 'メイス', 9),
(143, 'バトル アックス', 70),
(100143, 'バトル アックス', 70),
(145, 'バーサーカー アックス', 100),
(146, 'モーニングスター', 350),
(100146, 'モーニングスター', 350),
(142, 'シルバー アックス', 800),
(148, 'グレート アックス', 1200),
(149, 'ミノタウルス アックス', 1200),
(151, 'デーモン アックス', 20000),
(100151, 'デーモン アックス', 20000),
(128, 'オーク スタッフ', 30),
(126, 'マナ スタッフ', 900),
(132, 'ビショップ スタッフ', 10000),
(100132, 'ビショップ スタッフ', 10000),
(171, 'オーキッシュ ボウ', 3),
(200171, 'オーキッシュ ボウ', 3),
(172, 'ボウ', 5),
(100172, 'ボウ', 5),
(169, 'ハンターボウ', 500),
(100169, 'ハンターボウ', 500),
(20182, 'グローブ', 800),
(120182, 'グローブ', 800),
(20162, 'レザー グローブ', 800),
(20188, 'パイレーツ グローブ', 800),
(20177, 'アース グローブ', 10000),
(20189, 'ウィンド グローブ', 10000),
(20181, 'ファイアー グローブ', 10000),
(20172, 'ウォーター グローブ', 10000),
(20034, 'オーキッシュ ヘルム', 15),
(220034, 'オーキッシュ ヘルム', 15),
(20043, 'ヘルム', 20),
(120043, 'ヘルム', 20),
(220043, 'ヘルム', 20),
(20007, 'ドワヴィッシュ アイアン ヘルム', 60),
(20011, 'マジック ヘルム', 250),
(120011, 'マジック ヘルム', 250),
(20089, 'レザー アーマー', 10),
(20135, 'オーキッシュ リング メイル', 20),
(220135, 'オーキッシュ リング メイル', 20),
(20147, 'スタデッド レザー アーマー', 30),
(220147, 'スタデッド レザー アーマー', 30),
(20096, 'リング メイル', 50),
(20136, 'オーキッシュ チェーン メイル', 80),
(220136, 'オーキッシュ チェーン メイル', 80),
(20114, 'コットン ローブ', 100),
(20139, 'エルヴン ブレスト プレート', 100),
(20122, 'スケイル メイル', 200),
(220122, 'スケイル メイル', 200),
(20124, 'ボーン アーマー', 200),
(20149, 'ブロンズ プレート メイル', 1600),
(120149, 'ブロンズ プレート メイル', 1600),
(20115, 'スプリント メイル', 2000),
(220115, 'スプリント メイル', 2000),
(20101, 'バンデッド メイル', 2500),
(120101, 'バンデッド メイル', 2500),
(220101, 'バンデッド メイル', 2500),
(20143, '古代のプレートメイル', 3700),
(20142, '古代のスケイルメイル', 3700),
(20140, '古代のレザーアーマー', 3700),
(20141, '古代のローブ', 3700),
(20072, 'オーキッシュ クローク', 5),
(20052, 'ドワヴィッシュ クローク', 10),
(20056, 'マジック クローク', 20),
(120056, 'マジック クローク', 20),
(220056, 'マジック クローク', 20),
(20205, 'ブーツ', 200),
(20217, 'パイレーツ ブーツ', 300),
(20306, 'マイナー ボディ ベルト', 1500),
(120306, 'マイナー ボディ ベルト', 1500),
(20307, 'マイナー ソウル ベルト', 1500),
(120307, 'マイナー ソウル ベルト', 1500),
(20308, 'マイナー マインド ベルト', 1500),
(120308, 'マイナー マインド ベルト', 1500),
(20312, 'ボディ ベルト', 3000),
(120312, 'ボディ ベルト', 3000),
(20316, 'ソウル ベルト', 3000),
(120316, 'ソウル ベルト', 3000),
(20319, 'マインド ベルト', 3000),
(120319, 'マインド ベルト', 3000),
(20321, 'トロール ベルト', 3000),
(120321, 'トロール ベルト', 3000),
(20266, '知力のアミュレット', 1000),
(120266, '知力のアミュレット', 1000),
(20263, 'オークウォリアーのアミュレット', 6500),
(20284, 'サモンコントロール リング', 200),
(40010, 'レッド ポーション', 3),
(140010, 'レッド ポーション', 3),
(240010, 'レッド ポーション', 3),
(40011, 'オレンジ ポーション', 25),
(140011, 'オレンジ ポーション', 25),
(40012, 'クリアー ポーション', 37),
(140012, 'クリアー ポーション', 37),
(40019, '浓缩体力回复剂', 4),
(40020, '浓缩高级体力回复剂', 25),
(40021, '浓缩强力体力回复剂', 56),
(40017, 'シアン ポーション', 7),
(40013, 'グリーン ポーション', 20),
(140013, 'グリーン ポーション', 20),
(40018, '强化 グリーン ポーション', 150),
(140018, '强化 グリーン ポーション', 150),
(40016, 'ウィズダム ポーション', 60),
(140016, 'ウィズダム ポーション', 60),
(40014, 'ブレイブ ポーション', 80),
(140014, 'ブレイブ ポーション', 80),
(40015, 'ブルー ポーション', 100),
(140015, 'ブルー ポーション', 100),
(40068, 'エルヴン ワッフル', 50),
(140068, 'エルヴン ワッフル', 50),
(40317, '砥石', 15),
(40126, '确认 スクロール', 5),
(40100, 'テレポート スクロール', 7),
(140100, 'テレポート スクロール', 7),
(40119, '解咒スクロール', 10),
(140119, '解咒スクロール', 10),
(40079, '归还スクロール', 12),
(40089, '复活スクロール', 100),
(140089, '复活スクロール', 100),
(40088, '变身スクロール', 130),
(140088, '变身スクロール', 130),
(40090, 'ブランク スクロール(Lv1)', 10),
(40091, 'ブランク スクロール(Lv2)', 40),
(40092, 'ブランク スクロール(Lv3)', 100),
(40093, 'ブランク スクロール(Lv4)', 250),
(40094, 'ブランク スクロール(Lv5)', 500),
(40170, '魔法书(ファイアー ボール)', 160),
(40171, '魔法书(フィジカル エンチャント：DEX)', 160),
(40172, '魔法书(ウェポン ブレイク)', 160),
(40173, '魔法书(バンパイアリック タッチ)', 160),
(40174, '魔法书(スロー)', 160),
(40175, '魔法书(カウンター マジック)', 160),
(40176, '魔法书(メディテーション)', 160),
(40177, '魔法书(アース ジェイル)', 160),
(40178, '魔法书(カーズ パラライズ)', 180),
(40179, '魔法书(コール ライトニング)', 180),
(40180, '魔法书(グレーター ヒール)', 180),
(40181, '魔法书(テイミング モンスター)', 180),
(40182, '魔法书(リムーブ カーズ)', 180),
(40183, '魔法书(コーン オブ コールド)', 180),
(40184, '魔法书(マナ ドレイン)', 180),
(40185, '魔法书(ダークネス)', 180),
(40186, '魔法书(クリエイト ゾンビ)', 200),
(40187, '魔法书(フィジカル エンチャント：STR)', 200),
(40188, '魔法书(ヘイスト)', 200),
(40189, '魔法书(キャンセレーション)', 200),
(40190, '魔法书(イラプション)', 200),
(40191, '魔法书(サン バースト)', 200),
(40192, '魔法书(ウィークネス)', 200),
(40193, '魔法书(ブレス ウェポン)', 200),
(40210, '魔法书(ライトニング ストーム)', 280),
(40211, '魔法书(フォグ オブ スリーピング)', 280),
(40212, '魔法书(シェイプ チェンジ)', 280),
(40213, '魔法书(イミューン トゥ ハーム)', 280),
(40214, '魔法书(マス テレポート)', 280),
(40215, '魔法书(ファイアー ストーム)', 280),
(40216, '魔法书(ディケイ ポーション)', 280),
(40217, '魔法书(カウンター ディテクション)', 280),
(40265, '闇精灵の水晶(ブラインド ハイディング)', 50),
(40266, '闇精灵の水晶(エンチャント ベノム)', 50),
(40267, '闇精灵の水晶(シャドウ アーマー)', 50),
(40268, '闇精灵の水晶(ブリング ストーン)', 50),
(40269, '闇精灵の水晶(ドレス マイティー)', 50),
(40270, '闇精灵の水晶(ムービング アクセレーション)', 200),
(40271, '闇精灵の水晶(バーニング スピリッツ)', 200),
(40272, '闇精灵の水晶(ダーク ブラインド)', 200),
(40273, '闇精灵の水晶(ベノム レジスト)', 200),
(40274, '闇精灵の水晶(ドレス デクスタリティー)', 200),
(40275, '闇精灵の水晶(ダブル ブレイク)', 500),
(40276, '闇精灵の水晶(アンキャニー ドッジ)', 500),
(40277, '闇精灵の水晶(シャドウ ファング)', 500),
(40278, '闇精灵の水晶(ファイナル バーン)', 500),
(40279, '闇精灵の水晶(ドレス イベイジョン)', 500),
(40164, '技术书(ショック スタン)', 1000),
(40007, 'コール ライトニング ワンド', 2),
(40006, 'パイン ワンド', 2),
(140006, 'パイン ワンド', 2),
(40008, 'メイプル ワンド', 2),
(140008, 'メイプル ワンド', 2),
(40524, '黑い血痕', 2),
(40515, '精灵の石', 10),
(40044, 'ダイアモンド', 50),
(40047, 'エメラルド', 50),
(40045, 'ルビー', 50),
(40046, 'サファイア', 50),
(40048, '高级 ダイアモンド', 100),
(40051, '高级 エメラルド', 100),
(40049, '高级 ルビー', 100),
(40050, '高级 サファイア', 100),
(40496, 'ミスリルの原石', 2),
(40408, 'ランプ メタル', 2),
(40499, 'きのこの胞子液', 2),
(40444, 'ブラック ミスリルの原石', 100),
(40443, 'ブラック ミスリル', 8),
(40442, 'ブロッブの胃液', 2),
(40899, '钢铁の原石', 2),
(40486, '火山灰', 2),
(40514, '精灵の泪', 10),
(40397, 'キメラの皮：ドラゴン', 2),
(40398, 'キメラの皮：ヤギ', 2),
(40399, 'キメラの皮：ライオン', 2),
(40400, 'キメラの皮：スネーク', 2),
(40437, 'ディープ フラワーの茎', 2),
(40483, 'プレート ワームの表皮', 2),
(40438, 'ダイア バットの牙', 2),
(40431, 'モールの皮', 3),
(40434, 'ディロの尾', 3),
(40424, 'ダイア ウルフの皮', 5),
(40490, '黑精灵石', 8),
(40459, 'スコーピオンの壳', 10),
(40472, 'ケルベロスの毛', 120),
(40419, 'ムリアンの糸', 150),
(40512, '污れたエントの枝', 2),
(40510, '污れたエントの皮', 3),
(40511, '污れたエントの实', 105),
(40986, 'シバインの牙', 50),
(40978, 'シバインの尾：地', 100),
(40979, 'シバインの尾：水', 100),
(40980, 'シバインの尾：火', 100),
(40981, 'シバインの尾：风', 100),
(40982, 'シバインの皮：地', 200),
(40983, 'シバインの皮：水', 200),
(40984, 'シバインの皮：火', 200),
(40985, 'シバインの皮：风', 200),
(40407, 'ボーン ピース', 2),
(40999, 'ダーク エルフ ソルジャー バッジ', 2),
(41343, 'パプリオンの血痕', 2),
(40612, 'アトゥバオークの魔法书', 2),
(40610, 'ネルガオークの魔法书', 2),
(40611, 'ドゥダ-マラオークの魔法书', 2),
(40609, 'ガンジオークの魔法书', 2),
(40432, 'ディアド スクロールの切れ端', 5),
(41038, '航海日志 1ページ', 10),
(41039, '航海日志 2ページ', 10),
(41040, '航海日志 3ページ', 10),
(41041, '航海日志 4ページ', 10),
(41042, '航海日志 5ページ', 10),
(41043, '航海日志 6ページ', 10),
(41044, '航海日志 7ページ', 10),
(41045, '航海日志 8ページ', 10),
(41046, '航海日志 9ページ', 10),
(41047, '航海日志 10ページ', 10),
(40329, '原住民のトーテム', 10),
(140329, '原住民のトーテム', 10),
(40041, 'マーメイドの鳞', 20),
(41342, 'メデューサの血', 200),
(41206, '刃の欠けた武器', 600),
(40678, 'ソウルクリスタルの欠片', 1000),
(40718, 'ブラッドクリスタルの欠片', 1000);