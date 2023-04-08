# BattleVision
Battle Vision is a powerful platform for Pokémon Trainers to easily analyze their battle records and manage their Pokémon data, available on the PC with cloud login and an intuitive UI.

# どんなサービス？
対戦記録、ポケモンやパーティーの管理、過去の記録からの戦力分析が可能なPCベースのプラットフォーム。クラウドログインと管理、直感的なUIで見やすい。将来的にはスマートフォンアプリやレスポンシブデザインにも対応予定。

# どんな機能？

**プラットフォーム**
- Web

**機能**
- 対戦の記録
- ポケモンのデータ管理およびパーティ管理
- 今までの記録内容から、自分の強みと弱みを分析

# 使用技術

**画面設計**
- Figma  
ワイヤーフレームとして利用。

**フロンドエンド側**
- HTML
- Sass
- Typescript  
**ライブラリおよびフレームワーク等** 
- React(メイン)  
**メインフレームワーク**
- Next.js  

**採用理由**  
React で幅広く案件を取れるようにするため。
別のライブラリやフレームワークを試そうと思ったが、
あまりにもdocker構築に時間がかかったため諦める。

**バックエンド側**
- Python

**Python採用理由**
データ分析を今後機能として主力にするため、2023年現在Pythonをなるべく触っておくため

**CI/CD**
- CircleCI

**データベース**
- GCP

**採用理由**  
現在、主流がまだAWSに上がるため、別のチャレンジとしてGCPを選択。
Googleエンジンの就職関連 かつ "AWS" と "GCP"を比べると 40000 VS 12000 となった。
正直どちらでも良いというのが本音だが、AWS と GCP を比べる場合に、AWSの技術をもった技術者は多いという認識でいる。
なので、少しでも知名度ありかつあまり経験がないだろうGCPを選択。
ただ、あきらめる場合はAWSを選択する。