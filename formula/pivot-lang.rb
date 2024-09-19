# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Rust-like language with immix gc and other cool stuffs"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.469.tar.gz"
  sha256 "3d93ca9b499ba550722d379f8551d29d85b974e359965673369b03f85de08a17"
  license "MIT"

  on_macos do

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.469/pivot-lang-0.1.469-darwin-arm64.tar.gz"
      sha256 "ee77bed357813752c426dd6fc500faa261dc2c7dbdddd8df5f41390fbc76cd0e"
    end
  end

  def install
    lib.install Dir["./planglib"]
    lib.install "./libvm.a"
    lib.install "./libvm.dylib"
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
