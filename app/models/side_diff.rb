class SideDiff
  require 'diff/lcs'

  def left_file
    get_file_content('public/left.rb')
  end

  def right_file
    get_file_content('public/right.rb')
  end

  def compare_files
    Diff::LCS.sdiff(left_file, right_file)
  end

  private

  def get_file_content(filename)
    content = []
    File.open(filename, "r") do |infile|
        while (line = infile.gets)
          content << line
        end
    end
    return content
  end
end