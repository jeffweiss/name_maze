require 'yaml'
require 'mask'
require 'masked_grid'
require 'recursive_backtracker'
require 'string_to_bitmask'

def names
  YAML.load_file("names.yaml")
end

def mask_filename(name)
  "masks/#{name}.mask"
end

def maze_filename(name, iteration = 0)
  "mazes/%s/%02d.png" % [name, iteration]
end

def has_mask?(name)
  File.exist?(mask_filename(name))
end

def ensure_directories(name)
  Dir.mkdir("masks") unless Dir.exist?("masks")
  Dir.mkdir("mazes") unless Dir.exist?("mazes")
  Dir.mkdir("mazes/#{name}") unless Dir.exist?("mazes/#{name}")
end

def create_mask(name)
  return if has_mask?(name)
  text_mask = StringToBitmask.to_mask(name.downcase)
  File.write(mask_filename(name), text_mask)
end

def generate_mazes(name, count: 1)
  mask = Mask.from_txt(mask_filename(name))
  count.times do |n|
    grid = MaskedGrid.new(mask)
    RecursiveBacktracker.on(grid)
    
    filename = maze_filename(name, n)
    grid.to_png.save(filename)
    puts "Created #{filename}"
  end
end

names.each do |name|
  ensure_directories(name)
  if has_mask?(name)
    generate_mazes(name, count: 8)
  else
    create_mask(name)
    puts " !! Mask created for #{name} as #{mask_filename(name)}. Please add connections between letters!"
  end
end
