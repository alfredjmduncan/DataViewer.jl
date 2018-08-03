
function viewdata(dat)
  htmltable = DataViewer.writehtml(dat);
  write(string("viewdata.html"),htmltable)
  run(`xdg-open $(string("viewdata.html"))`)
end
