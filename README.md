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
- Javascript
**ライブラリおよびフレームワーク等**
- Svelte(メイン)  
- React(サブ)
- Vue.js(サブ)
- Angular(サブ)
**メインフレームワーク**
- simple-spa

**採用理由**  
未入力

**P.S.**  
未入力

**検討中**
- Vue.js

**P.S.**  
GCPとの相性が良いこと、ReactとVue.jsの違いをサンプルコードなど比較しても、
実際に開発してみないと分からない部分があると思い、検討。


**バックエンド側**
- Python(Django)

**Python採用理由**  
データ分析を今後機能として主力にするため、2023年現在Pythonをなるべく触っておくため  
**検討中**
- PHP(Laravel)

**データベース**
- GCP

**採用理由**  
GCPの需要が今後増えると過程したため。
"利用者が増える"と意味合いも含まれているが、社員のスキルに着目。
Statistaの統計によけば、AWSは4割利用されている。
だが、GCPの利用率は1割程度しかない。AWSをメインにやっていた人はGCPについてあまり触れていない可能性は高いと判断。
仮にAWSを利用した場合、案件の幅が広がる点は大きいが、その場合「もっと優秀な社員を雇おう」となりやすい。
もちろん、優秀な技術者が、GCPを学べば、それはそれで武器になる。
だが、優秀な技術者は チームのマネジメントやお客様へのヒアリングなど上流仮定が多いと判断。
社内でAWSを使っているなら、いずれは学ぶことになるのだったら、選択の幅を増やす意味でもGCPを採用。