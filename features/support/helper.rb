require 'os'

class Helper
  def get_os

      if OS.windows? && OS.bits==64
          return "C:\\drivers\\win64\\"
      end

      if OS.windows? && OS.bits==32
        return "C:\\drivers\\win32\\"
      end

      if OS.linux? && OS.bits==64
        return "/home/reiload/drivers/linux64/"

      end
      if OS.linux? && OS.bits==32
        return "/home/reiload/drivers/linux32/"
      end
  end
end
