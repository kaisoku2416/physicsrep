def nhkl(x, fout)
    nh, nk, nl = 0, 0, 0
    fout.write "#{x}:"
    while nl <= Math.sqrt(x / 3)
      nk, nh = nl, nl
      while nk <= Math.sqrt((x - nl**2) / 2)
        nh = Math.sqrt(x-nl**2-nk**2).to_i
        while nh**2+nk**2+nl**2<=x
          fout.write " {#{nh}, #{nk}, #{nl}}" if nh**2+nk**2+nl**2==x
          nh += 1
        end
        nk += 1
       end
      nl += 1
    end
    fout.write "\n"
  end
  fin = File.open("input_Si.txt", "r")
  fout = File.open("output_Si.txt", "w")
  fin.each do |line|
    nhkl(line.to_i, fout)
  end
  fin.close
  fout.close