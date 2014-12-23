#Chapter 10

#Grandfather Clock

def grandfather_clock(&block)
  time = (Time.now.hour).to_i
  if time > 12
    time = time - 12
  end

  time.times { block.call }
end

grandfather_clock { puts 'DONG!' }

#Program Logger

$nesting_depth = -1

def log(description, &block)
  $nesting_depth += 1
  puts (" " * $nesting_depth) + "Beginning #{description} (description of block)."
  puts (" " * $nesting_depth) + "#{description} (description of block) finished, returning:"
  block.call
end

log("first call") {
  puts "Hi!"
  log("inside block") { puts "It worked!"}
  }
