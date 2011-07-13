require 'tray_application' ; require 'screenshot';
app = TrayApplication.new("MoneyShot")
app.icon_filename = 'screenshot.gif'
app.item('Capture Screen') {Screenshot.capture}
app.item('Exit')           {java.lang.System::exit(0)}
app.run
