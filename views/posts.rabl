collection @posts, :object_root => false
attributes :id, :name, :content, :good
node :sympathies do |p|
    p.sympathies.map do |sym|
        { :name => sym.name }
    end
end
