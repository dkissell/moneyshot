class Screenshot
  include Java

  import java.awt.Robot
  import java.awt.Toolkit
  import java.awt.Rectangle
  import javax.imageio.ImageIO

  def self.capture(filename = "screenshot.png")    
    robot = Robot.new
    toolkit = Toolkit.get_default_toolkit
    dim = toolkit.get_screen_size
    rectangle = Rectangle.new(0,0, dim.get_width, dim.get_height)
    image = robot.create_screen_capture(rectangle)

    file = java::io::File.new(filename)
    ImageIO::write(image, 'png', file)

  end
end


