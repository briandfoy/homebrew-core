class Scrapy < Formula
  include Language::Python::Virtualenv

  desc "Web crawling & scraping framework"
  homepage "https://scrapy.org"
  url "https://files.pythonhosted.org/packages/eb/b0/7da031ff0ce073839984097724db2c54e8c4b7938acb9ef4691a98620ce7/Scrapy-2.9.0.tar.gz"
  sha256 "564c972b56e54b83141f395ce3f6a25bfe2093d61d13f9b81d05384e19db98da"
  license "BSD-3-Clause"
  head "https://github.com/scrapy/scrapy.git", branch: "master"

  bottle do
    sha256 cellar: :any,                 arm64_ventura:  "0cf3cb355efdec7bbce65c705ac9fa9889b72ef3b133e222542e70b908b97891"
    sha256 cellar: :any,                 arm64_monterey: "41aa188214a64a5d0021b05d548eca9b0cf5e23befec232a5a31f01c3ae5e828"
    sha256 cellar: :any,                 arm64_big_sur:  "2c47bf9c15b1b40d259d8713fe6779d3038f34285cafb4702f22dc7ec1529285"
    sha256 cellar: :any,                 ventura:        "c5b9830ce77d81c274414cbff450aefd307af7f627fe2d1fb55ac60a59b50abf"
    sha256 cellar: :any,                 monterey:       "9ec673983f70a712185c1bd8988f2da8b67c29e8e2dba66165489731b7ac13f0"
    sha256 cellar: :any,                 big_sur:        "4e5f1ed60d850c5616113ced6c0c8f90d81c962080918752019ffd9b6c9e6ea8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "5efe3211301b92e197cb2ba47016eaff0d736f78b49fea84b587e33d8bbe835e"
  end

  # `pkg-config`, `rust`, and `openssl@3` are for cryptography.
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "pycparser"
  depends_on "python-typing-extensions"
  depends_on "python@3.11"
  depends_on "six"

  # For `lxml` resource.
  uses_from_macos "libxml2"
  uses_from_macos "libxslt"

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/97/90/81f95d5f705be17872843536b1868f351805acf6971251ff07c1b8334dbb/attrs-23.1.0.tar.gz"
    sha256 "6279836d581513a26f1bf235f9acd333bc9115683f14f7e8fae46c98fc50e015"
  end

  resource "automat" do
    url "https://files.pythonhosted.org/packages/7a/7b/9c3d26d8a0416eefbc0428f168241b32657ca260fb7ef507596ff5c2f6c4/Automat-22.10.0.tar.gz"
    sha256 "e56beb84edad19dcc11d30e8d9b895f75deeb5ef5e96b84a467066b3b84bb04e"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/93/71/752f7a4dd4c20d6b12341ed1732368546bc0ca9866139fe812f6009d9ac7/certifi-2023.5.7.tar.gz"
    sha256 "0f0d56dc5a6ad56fd4ba36484d6cc34451e1c6548c61daad8c320169f91eddc7"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
    sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/ff/d7/8d757f8bd45be079d76309248845a04f09619a7b17d6dfc8c9ff6433cac2/charset-normalizer-3.1.0.tar.gz"
    sha256 "34e0a2f9c370eb95597aae63bf85eb5e96826d81e3dcf88b8886012906f509b5"
  end

  resource "constantly" do
    url "https://files.pythonhosted.org/packages/95/f1/207a0a478c4bb34b1b49d5915e2db574cadc415c9ac3a7ef17e29b2e8951/constantly-15.1.0.tar.gz"
    sha256 "586372eb92059873e29eba4f9dec8381541b4d3834660707faf8ba59146dfc35"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/19/8c/47f061de65d1571210dc46436c14a0a4c260fd0f3eaf61ce9b9d445ce12f/cryptography-41.0.1.tar.gz"
    sha256 "d34579085401d3f49762d2f7d6634d6b6c2ae1242202e860f4d26b046e3a1006"
  end

  resource "cssselect" do
    url "https://files.pythonhosted.org/packages/d1/91/d51202cc41fbfca7fa332f43a5adac4b253962588c7cc5a54824b019081c/cssselect-1.2.0.tar.gz"
    sha256 "666b19839cfaddb9ce9d36bfe4c969132c647b92fc9088c4e23f786b30f1b3dc"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/00/0b/c506e9e44e4c4b6c89fcecda23dc115bf8e7ff7eb127e0cb9c114cbc9a15/filelock-3.12.2.tar.gz"
    sha256 "002740518d8aa59a26b0c76e10fb8c6e15eae825d34b6fdf670333fd7b938d81"
  end

  resource "hyperlink" do
    url "https://files.pythonhosted.org/packages/3a/51/1947bd81d75af87e3bb9e34593a4cf118115a8feb451ce7a69044ef1412e/hyperlink-21.0.0.tar.gz"
    sha256 "427af957daa58bc909471c6c40f74c5450fa123dd093fc53efd2e91d2705a56b"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "incremental" do
    url "https://files.pythonhosted.org/packages/86/42/9e87f04fa2cd40e3016f27a4b4572290e95899c6dce317e2cdb580f3ff09/incremental-22.10.0.tar.gz"
    sha256 "912feeb5e0f7e0188e6f42241d2f450002e11bbc0937c65865045854c24c0bd0"
  end

  resource "itemadapter" do
    url "https://files.pythonhosted.org/packages/a1/1e/c09a9ceec55880fa8801fec1492c922ef1d7d84e7c4768c1cc12e0b950c4/itemadapter-0.8.0.tar.gz"
    sha256 "77758485fb0ac10730d4b131363e37d65cb8db2450bfec7a57c3f3271f4a48a9"
  end

  resource "itemloaders" do
    url "https://files.pythonhosted.org/packages/17/38/07db5e6ebdbe7acec2341fb65603fe4639431aa0133748156368f17a6c8e/itemloaders-1.1.0.tar.gz"
    sha256 "21d81c61da6a08b48e5996288cdf3031c0f92e5d0075920a0242527523e14a48"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/06/5a/e11cad7b79f2cf3dd2ff8f81fa8ca667e7591d3d8451768589996b65dec1/lxml-4.9.2.tar.gz"
    sha256 "2455cfaeb7ac70338b3257f41e21f0724f4b5b0c0e7702da67ee6c3640835b67"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b9/6c/7c6658d258d7971c5eb0d9b69fa9265879ec9a9158031206d47800ae2213/packaging-23.1.tar.gz"
    sha256 "a392980d2b6cffa644431898be54b0045151319d1e7ec34f0cfed48767dd334f"
  end

  resource "parsel" do
    url "https://files.pythonhosted.org/packages/75/2a/824fe02ed04292879b779a8cfc89083a1db3a390b6afc336bcf4baeb9424/parsel-1.8.1.tar.gz"
    sha256 "aff28e68c9b3f1a901db2a4e3f158d8480a38724d7328ee751c1a4e1c1801e39"
  end

  resource "protego" do
    url "https://files.pythonhosted.org/packages/3b/cd/de2f063d94115593bdff20d17f461522c90519fb3f5c46e6b4851e17b94e/Protego-0.2.1.tar.gz"
    sha256 "df666d4304dab774e2dc9feb208bb1ac8d71ea5ceec12f4c99eba30fbd642ff2"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/3b/e4/7dec823b1b5603c5b3c51e942d5d9e65efd6ff946e713a325ed4146d070f/pyasn1_modules-0.3.0.tar.gz"
    sha256 "5bd01446b736eb9d31512a30d46c1ac3395d676c6f3cafa4c03eb54b9925631c"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/61/ef/945a8bcda7895717c8ba4688c08a11ef6454f32b8e5cb6e352a9004ee89d/pyasn1-0.5.0.tar.gz"
    sha256 "97b7290ca68e62a832558ec3976f15cbf911bf5d7c7039d8b861c2a0ece69fde"
  end

  resource "pydispatcher" do
    url "https://files.pythonhosted.org/packages/21/db/030d0700ae90d2f9d52c2f3c1f864881e19cef8cba3b0a08759c8494c19c/PyDispatcher-2.0.7.tar.gz"
    sha256 "b777c6ad080dc1bad74a4c29d6a46914fa6701ac70f94b0d66fbcfde62f5be31"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/be/df/75a6525d8988a89aed2393347e9db27a56cb38a3e864314fac223e905aef/pyOpenSSL-23.2.0.tar.gz"
    sha256 "276f931f55a452e7dea69c7173e984eb2a4407ce413c918aa34b55f82f9b8bac"
  end

  resource "queuelib" do
    url "https://files.pythonhosted.org/packages/4d/11/94d3a5c1a03fa984b3f793ceecfac4b685ca9fc7a3af03f806dbb973555b/queuelib-1.6.2.tar.gz"
    sha256 "4b207267f2642a8699a1f806045c56eb7ad1a85a10c0e249884580d139c2fcd2"
  end

  resource "requests-file" do
    url "https://files.pythonhosted.org/packages/50/5c/d32aeed5c91e7970ee6ab8316c08d911c1d6044929408f6bbbcc763f8019/requests-file-1.5.1.tar.gz"
    sha256 "07d74208d3389d01c38ab89ef403af0cfec63957d53a0081d8eca738d0247d8e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "service-identity" do
    url "https://files.pythonhosted.org/packages/3b/98/2a46c7414ffc1d06ba67d2c2dd62a207a70cb351028a8cd8c85b3dbd1cf7/service_identity-23.1.0.tar.gz"
    sha256 "ecb33cd96307755041e978ab14f8b14e13b40f1fbd525a4dc78f46d2b986431d"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/dc/98/5f896af066c128669229ff1aa81553ac14cfb3e5e74b6b44594132b8540e/setuptools-68.0.0.tar.gz"
    sha256 "baf1fdb41c6da4cd2eae722e135500da913332ab3f2f5c7d33af9b492acb5235"
  end

  resource "tldextract" do
    url "https://files.pythonhosted.org/packages/80/90/d294a3f69b4143cf56c326064086236bc8157c389497893d940968e6cda2/tldextract-3.4.4.tar.gz"
    sha256 "5fe3210c577463545191d45ad522d3d5e78d55218ce97215e82004dcae1e1234"
  end

  resource "twisted" do
    url "https://files.pythonhosted.org/packages/b2/ce/cbb56597127b1d51905b0cddcc3f314cc769769efc5e9a8a67f4617f7bca/Twisted-22.10.0.tar.gz"
    sha256 "32acbd40a94f5f46e7b42c109bfae2b302250945561783a8b7a059048f2d4d31"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/d6/af/3b4cfedd46b3addab52e84a71ab26518272c23c77116de3c61ead54af903/urllib3-2.0.3.tar.gz"
    sha256 "bee28b5e56addb8226c96f7f13ac28cb4c301dd5ea8a6ca179c0b9835e032825"
  end

  resource "w3lib" do
    url "https://files.pythonhosted.org/packages/0b/29/755466b52987cf553231ca929149c62583b938dc9cd5a7cc63c9dcf2175c/w3lib-2.1.1.tar.gz"
    sha256 "0e1198f1b745195b6b3dd1a4cd66011fbf82f30a4d9dabaee1f9e5c86f020274"
  end

  resource "zope-interface" do
    url "https://files.pythonhosted.org/packages/7a/62/f0d012151af1e8cc0a6c97db74b78141143425dcdf81bc7960c498e28960/zope.interface-6.0.tar.gz"
    sha256 "aab584725afd10c710b8f1e6e208dbee2d0ad009f57d674cb9d1b3964037275d"
  end

  def install
    # Ensure that the `openssl` crate picks up the intended library.
    ENV["OPENSSL_DIR"] = Formula["openssl@3"].opt_prefix
    ENV["OPENSSL_NO_VENDOR"] = "1"

    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scrapy version")

    system "#{bin}/scrapy", "startproject", "brewproject"
    cd testpath/"brewproject" do
      system "#{bin}/scrapy", "genspider", "-t", "basic", "brewspider", "brew.sh"
      assert_match "INFO: Spider closed (finished)", shell_output("#{bin}/scrapy crawl brewspider 2>&1")
    end
  end
end