def initialize(src, trim_mode, percent)
  super
  @trim_mode = trime_mode
  @percent = percent
  if @trim_mode =='>'
    @scan_line = self.method(:trim_line1)
  elsif @trim_mode == '<>'
    @scan_line = self.method(:trim_line2)
  elsif @trim_mode == '-'
    @scan_line = self.method(:explicit_trim_line)
  else
    @scan_line = self.method(:scan_line)
  end
end