  # 将调试信息打到日志上，可以指定颜色
  def debug(message, color = COLOR_GREEN)
    Rails.logger.debug("\n\e\[#{color};1m#{message}\e\[0m\n")
  end

  # 将调试信息打到日志上，可以指定颜色
  def info(message, color = COLOR_GREEN)
    Rails.logger.info("\n\e\[#{color};1m#{message}\e\[0m\n")
  end
