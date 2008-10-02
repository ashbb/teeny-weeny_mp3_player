# my_mp3player03_1.rb
Shoes.app :width => 300, :height =>165 do
  background green
  background rgb(255,208,208), :radius => 24
  caption 'My original tiny MP3 player!'
  
  stack :left => 0, :top => 120  do
    button( 'play' ){ @v.play }
    button( 'pause' ){ @v.pause }
    button( 'stop' ){ @v.stop }
    @v = video Dir.pwd + '/ruby.mp3'
  end
end