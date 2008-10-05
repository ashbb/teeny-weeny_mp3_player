# my_mp3player07.rb

Shoes.app :width => 300, :height =>165 do
  background green
  background rgb(255,208,208), :radius => 24
  caption 'My original tiny MP3 player!'
  
  stack :left => 0, :top => 30 do
    @img = image Dir.pwd + '/loogink.png'
    n = 0
    animate(5) do
      @img.move( (n+=1) % 300 , 10 - rand(10))  if @file && @v.playing?
    end
  end
  
  stack :left => 0, :top => 70 do
    @l = para('', :stroke => white)
    animate do
      @l.replace strong "#{@file} : #{@v.time.to_i / 1000} sec"  if @file
    end
  end
  
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