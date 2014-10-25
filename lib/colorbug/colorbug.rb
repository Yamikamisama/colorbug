require "colorbug/version"

module Colorbug

  class String

    def black;          "\033[30m#{self}\033[0m" end
    def red;            "\033[31m#{self}\033[0m" end
    def green;          "\033[32m#{self}\033[0m" end
    def yellow;          "\033[33m#{self}\033[0m" end
    def blue;           "\033[34m#{self}\033[0m" end
    def magenta;        "\033[35m#{self}\033[0m" end
    def cyan;           "\033[36m#{self}\033[0m" end
    def gray;           "\033[37m#{self}\033[0m" end
    def bg_black;       "\033[40m#{self}\033[0m" end
    def bg_red;         "\033[41m#{self}\033[0m" end
    def bg_green;       "\033[42m#{self}\033[0m" end
    def bg_brown;       "\033[43m#{self}\033[0m" end
    def bg_blue;        "\033[44m#{self}\033[0m" end
    def bg_magenta;     "\033[45m#{self}\033[0m" end
    def bg_cyan;        "\033[46m#{self}\033[0m" end
    def bg_gray;        "\033[47m#{self}\033[0m" end
    def bold;           "\033[1m#{self}\033[22m" end
    def reverse_color;  "\033[7m#{self}\033[27m" end
    def highlight;      reverse_color end

  end

  # If you need old puts method use old_puts
  alias old_puts puts

  def puts(instance)

      if  instance.class == Array
        super("#{instance.to_s.red}")
      elsif instance.class == String
        super("#{instance.to_s.yellow}")
      elsif instance.class == Hash
        super("#{instance.to_s.magenta}")
      elsif instance.class == Fixnum
        super("#{instance.to_s.cyan}")
      else
         old_puts instance
      end

  end


  def highlight(instance)
    instance.to_s.highlight
  end

end
