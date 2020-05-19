# セグメントツリー

class SegmentTree
  attr_reader :value, :data

  def initialize(data)
    @data = data.empty? ? [0] : data.clone
    node_count = 2 * 2**( Math.log(@data.count,2).to_i + 1 )
    @value = [0]*node_count

    build(1, 0, @data.count-1)
  end

  def query(i, j)
    recur_query(1, 0, data.count-1, i, j)
  end

  def update(i, val)
    # puts "i: #{i} val: #{val} value: #{value.join(',')}"
    gap = val - data[i]
    data[i] = val

    node = 1
    b, e = 0, data.count-1
    loop do
      value[node] += gap

      break if b == e && b == i

      mid = (b+e)/2

      if i <= mid
        e = mid
        node = 2*node
      else
        b = mid + 1
        node = 2*node + 1
      end
    end
  end

  private

    def build(node, b, e)
      # puts "node: #{node} b: #{b} e: #{e}"

      if b == e
        return value[node] = data[b]
      end

      mid = (b+e)/2

      value[node] = build(2*node, b, mid) + build(2*node+1, mid+1,  e)
    end

    def recur_query(node, b, e, i, j)
      # if the current interval doesnot interset with the query interval
      if i > e or j < b
        return 0
      end

      # if the current interval is included in the query interval
      if i <= b && e <= j
        return value[node]
      end

      # compute the minimum position in the left and right part of current interval
      mid = (b+e)/2
      left  = recur_query(2*node,   b,      mid,  i, j)
      right = recur_query(2*node+1, mid+1,  e,    i, j)

      left + right
    end
end