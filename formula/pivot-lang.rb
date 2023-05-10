# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Https://langpivotstudiocn"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.322.tar.gz"
  sha256 "1a46e869baa14921110c965584055d255a616ad7d1cb25f4a66c48c82795849e"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.322/pivot-lang-0.1.322-darwin-amd64.tar.gz"
      sha256 "445b8277717e9a82abe4853a8f70de416cb75d42d58e2fba2f6b1418d3372241"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.322/pivot-lang-0.1.322-darwin-arm64.tar.gz"
      sha256 "06330296989aeaa284026f49b7e1c5b7ff8597c0ebd833514b98b9d632deb6a2"
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
