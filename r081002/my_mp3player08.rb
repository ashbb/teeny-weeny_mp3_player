# my_mp3player08.rb

Shoes.app :width => 300, :height => 100, :title => 'Teeny-weeny MP3 player v0.8' do
  background gold.to_s..cyan.to_s, :angle => 30
  para link('select'){
    begin
      @file = (Dir.pwd + '/ruby.mp3').split('/').last unless @file = ask_open_file
      @v = video(@file).hide
    end  if @file.nil? || !@v.playing?
  }

  para link('play'){@v.show; timer(0.01){@v.play; @v.hide}}
  para link('pause'){@v.pause}
  para link('stop'){@v.stop.hide}, "\n"
  
  @img = image Dir.pwd + '/loogink.png'
  n = 0
  animate(5) do
    @img.move( (n+=1) % 300 , 40 - rand(10))  if @file && @v.playing?
  end
  
  @l = para '', :stroke => firebrick, :left => 0, :top => 70
  animate do
    @l.replace strong "#{@file.split('\\').last} : #{@v.time.to_i / 1000} sec"  if @file
  end

end