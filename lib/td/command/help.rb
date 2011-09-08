
module TreasureData
module Command

  def help(op)
    cmd = op.cmd_parse

    op = List.get_option(cmd)
    unless op
      $stderr.puts "'#{cmd}' is not a td command. Run '#{$prog}' to show the list."
      List.show_guess(cmd)
      exit 1
    end

    puts op.message
  end

end
end