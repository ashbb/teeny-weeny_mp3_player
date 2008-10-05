# my_mp3player01.rb
Shoes.app  do
  button( 'play' ){ @v.play }
  button( 'pause' ){ @v.pause }
  button( 'stop' ){ @v.stop }
  @v = video Dir.pwd + '/ruby.mp3'
end