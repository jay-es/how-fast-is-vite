# -r フレームレート -vf ビデオフィルタ -ss 開始時間 -t 動画の時間 -y 確認なしで上書き
fr=24 # 8: 410KB, 20: 696KB, 30: 819KB
vf="-vf scale=480:-1"
vf="-vf scale=640:-1"
vf=""
ext="mp4"

ffmpeg -ss 0.2 -i vite-start.mov -r $fr $vf -t 6 -y vite-start.$ext
ffmpeg -ss 0.0 -i vue-start.mov  -r $fr $vf -t 6 -y vue-start.$ext

ffmpeg -ss 5.7 -i vite-hmr.mov   -r $fr $vf -t 3.2 -y vite-hmr.$ext
ffmpeg -ss 4.5 -i vue-hmr.mov    -r $fr $vf -t 3.2 -y vue-hmr.$ext

ffmpeg -ss 2.1 -i vite-hmr3.mov  -r $fr $vf -t 6 -y vite-hmr3.$ext
ffmpeg -ss 5.0 -i vue-hmr3.mov   -r $fr $vf -t 6 -y vue-hmr3.$ext

ffmpeg -ss 0.4 -i vite-build.mov -r $fr $vf -t 9 -y vite-build.$ext
ffmpeg -ss 0.0 -i vue-build.mov  -r $fr $vf -t 9 -y vue-build.$ext
