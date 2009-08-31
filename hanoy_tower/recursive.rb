# Here we consider recursive solution of hanoy tower task

class Tower

  def initialize(count = 3)
    @count = count
    @src, @dst,  @add = [], [], []
    (1..count).each do |i|
      s = ''
      i.times{ s+= '*' }
      @src << s
    end

  end

  def result
    move(@count, @src, @dst, @add)
    p @src
    p @dst
    p @add

  end

  private

  def move(count, from, to, add)
    if count == 1
      single_move(from, to)
    else
      move count-1, from, add, to
      move 1, from, to, add
      move count-1, add, to, from
    end

  end


  def single_move( from, to)
    to.unshift(from.shift)
  end

end

Tower.new(4).result

