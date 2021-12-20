def hkl(x)
    h, k, l = 0, 0, 0
    while h <= Math.sqrt(x / 3)
      k, l = h, h
      while k <= Math.sqrt((x - h**2) / 2)
        l = Math.sqrt(x-h**2-k**2).to_i
        while h**2+k**2+l**2<=x
          puts "{#{l}, #{k}, #{h}}" if h**2+k**2+l**2==x
          l += 1
        end
        k += 1
       end
      h += 1
    end
  end
  hkl(gets.to_i)