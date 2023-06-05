# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Https://langpivotstudiocn"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.352.tar.gz"
  sha256 "d360cbf849c28daec3857ffa25b63de0c4eb85c11f14dbd64b42ea8e28a9605d"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.352/pivot-lang-0.1.352-darwin-amd64.tar.gz"
      sha256 "dbda613791a6f5d1782626fe3034917f222f6163eeca3ae870737beb3a6545d2"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.352/pivot-lang-0.1.352-darwin-arm64.tar.gz"
      sha256 "08304b742db15885a153ee7d13b40ac3076b69fdb052d35719e3b80b3bb6afc7"
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
