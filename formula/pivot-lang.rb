# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Pivot-lang 二次元指定编程语言"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.265.tar.gz"
  sha256 "e40d6b5ff71634ccb3d9723727114605e085cfdbba7c9497ccb0ba376bd0349d"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.265/pivot-lang-0.1.265-darwin-amd64.tar.gz"
      sha256 "4d5fc03a562c61eefd226e5c8d544b5e1c9012c1b385704e58fb6e1f754b7ca3"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.265/pivot-lang-0.1.265-darwin-arm64.tar.gz"
      sha256 "78b4dded4714fba51ca1cf1c172ad6028df9b0e618398582695e6be45f746426"
    end
  end

  def install
    lib.install Dir["./planglib"]
    lib.install "./libvm.a"
    bin.install "./plc"
  end

  def caveats
    s = <<~EOS
    [0;32m安装完成，请运行下方命令添加环境变量[0m
      echo 'export KAGARI_LIB_ROOT=$(brew --prefix pivot-lang)/lib/planglib' >> ~/.bash_profile
      echo 'export PL_ROOT=$(brew --prefix pivot-lang)/lib' >> ~/.bash_profile
      source ~/.bash_profile
    [0;32m如果您已经打开了vsc，可能需要重启它来应用环境变量更改[0m
    EOS
    s
  end
end
