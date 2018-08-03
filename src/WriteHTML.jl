function htmlheader(data)
  header = "<tr>\n"
  if typeof(data) <: DataFrames.DataFrame
    for field in names(data)
      header = string(header,"<th>",field,"</th>\n")
    end
  else
    for j in 1:size(data)[2]
      header = string(header,"<th>",j,"</th>\n")
    end
  end
  header = string(header,"</tr>\n")
  return header
end

function htmlbody(data)
  body = string()
  for i in 1:size(data)[1]
    body = string(body,"<tr>\n")
    for j in 1:size(data)[2]
      body = string(body,"<td>",data[i,j],"</td>\n")
    end
    body = string(body,"</tr>\n")
  end
  return body
end

function writehtml(data)

preamble = "
<!DOCTYPE html>\n
<html lang=\"en\" >\n
\n
<head>\n
  <meta charset=\"UTF-8\">\n
  <title> mytable
  </title>\n
<\head>\n
\n
<body>\n
\n
<table style=\"width:100%\">\n"

ending = "</table>\n
  \n
  </body>\n
  \n
  </html>\n
  "


html = string(preamble,htmlheader(data),htmlbody(data),ending);

return html


end
