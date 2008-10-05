# my_mp3player05.rb
Shoes.app :width => 300, :height =>165 do
  background green
  background rgb(255,208,208), :radius => 24
  caption 'My original tiny MP3 player!'
  
  flow :left => 0, :top => 120  do
    button 'select?' do
      tmp = @file
      (@v = video(@file)  if @file = ask_open_file)  if @file.nil? || !@v.playing?
      @file ||= tmp
    end
    button( 'play' ){ @v.play }
    button( 'pause' ){ @v.pause }
    button( 'stop' ){ @v.stop }
  end
end