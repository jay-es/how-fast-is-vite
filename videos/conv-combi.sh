# -r フレームレート -vf ビデオフィルタ -ss 開始時間 -t 動画の時間 -y 確認なしで上書き
fr=8
vf=""
vf="-vf crop=1059:969:2:104,scale=640:-1"
ext="gif"

ffmpeg -ss 0.2 -i combi-start.mov -r $fr $vf -t 6   -y combi-start.$ext
ffmpeg -ss 0.2 -i combi-hmr.mov   -r $fr $vf -t 3.2 -y combi-hmr.$ext
ffmpeg -ss 0.8 -i combi-hmr3.mov  -r $fr $vf -t 6   -y combi-hmr3.$ext
ffmpeg -ss 0.1 -i combi-build.mov -r $fr $vf -t 9   -y combi-build.$ext
