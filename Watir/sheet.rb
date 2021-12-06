require 'spreadsheet'
tabla = Spreadsheet.open("G:/Libro1.xls")
tablaS = tabla.worksheet 0

tablaS.each do |r|
  puts "#{r[0]}"
end
