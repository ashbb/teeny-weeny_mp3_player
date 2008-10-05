# my_mp3player02.rb
Shoes.app :width => 300, :height =>165 do
  background green
  background rgb(255,208,208), :curve => 24
  caption 'My original tiny MP3 player!'
  
  button( 'play' ){ @v.play }
  button( 'pause' ){ @v.pause }
  button( 'stop' ){ @v.stop }
  @v = video Dir.pwd + '/ruby.mp3'
end