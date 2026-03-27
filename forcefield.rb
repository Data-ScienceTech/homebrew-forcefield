class Forcefield < Formula
  include Language::Python::Virtualenv

  desc "AI security SDK -- prompt injection detection, PII redaction, LLM output moderation"
  homepage "https://datasciencetech.ca/en/python-sdk"
  url "https://files.pythonhosted.org/packages/04/50/57f2e02bed36bc32e70b28140d007a83ab8c3d25a2acac65a16e68c1f535/forcefield-0.4.0.tar.gz"
  sha256 "f96574e76883f9d72649441957b05eb57d28b43d9c7d79a2ad28f232aa418357"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "forcefield", shell_output("#{bin}/forcefield --help")
    assert_match "detection_rate", shell_output("#{bin}/forcefield selftest --json 2>&1")
  end
end
