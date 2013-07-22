class SideDiff
  require 'diff/lcs'

  def left_file
    @left_file = []
    File.open("public/left.rb", "r") do |infile|
        while (line = infile.gets)
          @left_file << line
        end
    end
    return @left_file
  end

  def right_file
    @right_file = []
    File.open("public/right.rb", "r") do |infile|
        while (line = infile.gets)
          @right_file << line
        end
    end
    return @right_file
  end

  def compare_files
    Diff::LCS.sdiff(left_file, right_file)
  end


end