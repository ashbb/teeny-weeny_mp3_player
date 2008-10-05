# my_mp3player04.rb
#
# CAUTION!!
# Don't run this code. Shoes will HUNG-UP!
#

Shoes.app :width => 300, :height =>165 do
  background green
  background rgb(255,208,208), :radius => 24
  caption 'My original tiny MP3 player!'
  
  flow :left => 0, :top => 120  do
    #button( 'select?' ){@v = video ask_open_file}   <-- Don't run this line. Shoes will HUNG-UP!
    button( 'play' ){ @v.play }
    button( 'pause' ){ @v.pause }
    button( 'stop' ){ @v.stop }
  end
end