-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Eyl 2020, 22:28:05
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `site`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adresler`
--

CREATE TABLE `adresler` (
  `id` int(10) UNSIGNED NOT NULL,
  `uyeID` int(10) UNSIGNED NOT NULL,
  `adiSoyadi` varchar(100) NOT NULL,
  `adres` varchar(200) NOT NULL,
  `Sehir` varchar(100) NOT NULL,
  `Ilce` varchar(100) NOT NULL,
  `telefon` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `adresler`
--

INSERT INTO `adresler` (`id`, `uyeID`, `adiSoyadi`, `adres`, `Sehir`, `Ilce`, `telefon`) VALUES
(1, 1, 'Büşra Akçay', 'Adres', 'Konya', 'Selçuklu', '05524013147');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `site_adi` varchar(50) NOT NULL,
  `site_baslik` varchar(50) NOT NULL,
  `site_aciklama` varchar(200) NOT NULL,
  `site_keywords` varchar(250) NOT NULL,
  `site_copyright` varchar(250) NOT NULL,
  `siteLinki` varchar(100) NOT NULL,
  `site_logo` varchar(50) NOT NULL,
  `site_emailAdresi` varchar(50) NOT NULL,
  `site_emailSifresi` varchar(50) NOT NULL,
  `siteHostu` varchar(255) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `ucretsizKargo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_adi`, `site_baslik`, `site_aciklama`, `site_keywords`, `site_copyright`, `siteLinki`, `site_logo`, `site_emailAdresi`, `site_emailSifresi`, `siteHostu`, `facebook`, `instagram`, `twitter`, `ucretsizKargo`) VALUES
(1, 'Tak Takıştır', 'Online Bijuteri', 'Takı modelleri uygun fiyat ve ödeme koşulları ile taktakistir.com&#039;da Göz atmak için tıklayınız!', 'kolye, küpe, bileklik, yüzük, saat, gözlük', 'Copyright 2020 - Tak-Takıştır - Tüm Hakları Saklıdır.', 'www.taktakistir.com', 'logo.jpg', 'taktakistir@gmail.com', '21707020', 'smtp.gmail.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 200);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bankahesaplari`
--

CREATE TABLE `bankahesaplari` (
  `id` int(10) UNSIGNED NOT NULL,
  `bankaLogo` varchar(50) NOT NULL,
  `bankaAdi` varchar(100) NOT NULL,
  `konumSehir` varchar(100) NOT NULL,
  `konumUlke` varchar(100) NOT NULL,
  `subeAdi` varchar(100) NOT NULL,
  `subeKodu` varchar(100) NOT NULL,
  `paraBirimi` varchar(100) NOT NULL,
  `hesapSahibi` varchar(255) NOT NULL,
  `hesapNum` varchar(100) NOT NULL,
  `ibanNum` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bankahesaplari`
--

INSERT INTO `bankahesaplari` (`id`, `bankaLogo`, `bankaAdi`, `konumSehir`, `konumUlke`, `subeAdi`, `subeKodu`, `paraBirimi`, `hesapSahibi`, `hesapNum`, `ibanNum`) VALUES
(1, 'yapikredi.png', 'Yapı Kredi', 'Konya', 'Türkiye', 'Selçuklu', '123456', 'Türk Lirası', 'Tak-Takıştır', '0123456789', 'TR001234123412341234123412'),
(2, 'akbank.png', 'Akbank', 'Konya', 'Türkiye', 'Selçuklu', '123456', 'Türk Lirası', 'Tak-Takıştır', '0123456789', 'TR001234123412341234123412'),
(3, 'garanti.png', 'Garanti', 'Konya', 'Türkiye', 'Selçuklu', '123456', 'Türk Lirası', 'Tak-Takıştır', '0123456789', 'TR001234123412341234123412'),
(4, 'is.png', 'İş Bankası', 'Konya', 'Türkiye', 'Selçuklu', '123456', 'Türk Lirası', 'Tak-Takıştır', '0123456789', 'TR001234123412341234123412'),
(5, 'denizbank.png', 'Denizbank', 'Konya', 'Türkiye', 'Selçuklu', '123456', 'Türk Lirası', 'Tak-Takıştır', '0123456789', 'TR001234123412341234123412'),
(6, 'qnb.png', 'QNB Finansbank', 'Konya', 'Türkiye', 'Selçuklu', '123456', 'Türk Lirası', 'Tak-Takıştır', '0123456789', 'TR001234123412341234123412');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `favoriler`
--

CREATE TABLE `favoriler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `favoriler`
--

INSERT INTO `favoriler` (`id`, `UrunId`, `UyeId`) VALUES
(1, 12, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizdavesozlesmeler`
--

CREATE TABLE `hakkimizdavesozlesmeler` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `hakkimizda` text NOT NULL,
  `uyelikSozlesmesi` text NOT NULL,
  `kullanimKosullari` text NOT NULL,
  `gizlilikSozlesmesi` text NOT NULL,
  `mesafeliSatisSozlesmesi` text NOT NULL,
  `teslimat` text NOT NULL,
  `iptalIadeDegisim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hakkimizdavesozlesmeler`
--

INSERT INTO `hakkimizdavesozlesmeler` (`id`, `hakkimizda`, `uyelikSozlesmesi`, `kullanimKosullari`, `gizlilikSozlesmesi`, `mesafeliSatisSozlesmesi`, `teslimat`, `iptalIadeDegisim`) VALUES
(1, 'Bijuteri ve Aksesuar sektörleri başta olmak üzere bir çok sektörde faaliyet gösteren takı satışı ile faaliyetlerine başlamıştır. Zaman içerisinde Tak-Takıştır bijuteri markası ile perakende mağazalarla hizmet ağını genişletmiştir. Şuan internet üzerinden online toptan satış alanlarında hizmet vermeye devam etmektedir.\r\n\r\n\r\n\r\nÇağın gereksinimlerine hızlı ayak uyduran yenilikçi düşünce yapısı ile internet satışlarında gerçek zamanlı online stok bilgisi , ve ürün takibi konularında lider konumdadır. Sitemizden online bijuteri, aksesuar ve takı olmak üzere tüm kategorilerde toptan fiyatı ile adet sınırlaması olmadan tek tek alım yapabilirsiniz. Keyifli alışverişler dileriz.', 'taktakistir.com sitemize üyelik ücretsizdir. Üye olmadan fiyatları görüp ürünleri inceleyebilirsiniz. Alışverişinizi tamamlamanız için üyelik gereklidir. Üye olarak ilgilendiğiniz ürünleri sepetinizde toplayıp farklı günlerde tekrar kontrol edebilirsiniz. Sepetinizdeki ürünler farklı müşteriler alıncaya kadar sepetinizde kalır. diğer müşterilerimiz alışveriş yaptıkça eksilir. Siparişlerinizi sebep göstermeksizin iade edebilirsiniz. İade edilecek sipariş verildiği şekilde tam ve eksiksiz olmalıdır. sipariş bütün olarak iade edilebilir içerisinde belirli bir kısmı parça olarak iade edilemez.', 'Bu internet sitesine girmeniz veya bu internet sitesindeki herhangi bir bilgiyi kullanmanız aşağıdaki koşulları kabul ettiğiniz anlamına gelir.\r\n\r\nBu internet sitesine girilmesi, sitenin ya da sitedeki bilgilerin ve diğer verilerin programların vs. kullanılması sebebiyle, sözleşmenin ihlali, haksız fiil, ya da başkaca sebeplere binaen, doğabilecek doğrudan ya da dolaylı hiçbir zarardan DSM Grup Danışmanlık İletişim ve Satış Ticaret A.Ş sorumlu değildir. DSM GRUP, sözleşmenin ihlali, haksız fiil, ihmal veya diğer sebepler neticesinde; işlemin kesintiye uğraması, hata, ihmal, kesinti hususunda herhangi bir sorumluluk kabul etmez.\r\n\r\nDSM GRUP işbu site ve site uzantısında mevcut her tür hizmet, ürün, siteyi kullanma koşulları ile sitede sunulan bilgileri önceden bir ihtara gerek olmaksızın değiştirme, siteyi yeniden organize etme, yayını durdurma hakkını saklı tutar. Değişiklikler sitede yayım anında yürürlüğe girer. Sitenin kullanımı ya da siteye giriş ile bu değişiklikler de kabul edilmiş sayılır. Bu koşullar link verilen diğer web sayfaları için de geçerlidir.\r\n\r\nDSM GRUP, sözleşmenin ihlali, haksız fiil, ihmal veya diğer sebepler neticesinde; işlemin kesintiye uğraması, hata, ihmal, kesinti, silinme, kayıp, işlemin veya iletişimin gecikmesi, bilgisayar virüsü, iletişim hatası, hırsızlık, imha veya izinsiz olarak kayıtlara girilmesi, değiştirilmesi veya kullanılması hususunda herhangi bir sorumluluk kabul etmez.\r\n\r\nBu internet sitesi DSM GRUP&#039;in kontrolü altında olmayan başka internet sitelerine bağlantı veya referans içerebilir. DSM GRUP, bu sitelerin içerikleri veya içerdikleri diğer bağlantılardan sorumlu değildir.\r\n\r\nDSM GRUP bu internet sitesinin genel görünüm ve dizaynı ile internet sitesindeki tüm bilgi, resim, Trendyol markası ve diğer markalar, www.trendyol.com alan adı, logo, ikon, demonstratif, yazılı, elektronik, grafik veya makinede okunabilir şekilde sunulan teknik veriler, bilgisayar yazılımları, uygulanan satış sistemi, iş metodu ve iş modeli de dahil tüm materyallerin (&quot;Materyaller&quot;) ve bunlara ilişkin fikri ve sınai mülkiyet haklarının sahibi veya lisans sahibidir ve yasal koruma altındadır. Internet sitesinde bulunan hiçbir Materyal; önceden izin alınmadan ve kaynak gösterilmeden, kod ve yazılım da dahil olmak üzere, değiştirilemez, kopyalanamaz, çoğaltılamaz, başka bir lisana çevrilemez, yeniden yayımlanamaz, başka bir bilgisayara yüklenemez, postalanamaz, iletilemez, sunulamaz ya da dağıtılamaz. Internet sitesinin bütünü veya bir kısmı başka bir internet sitesinde izinsiz olarak kullanılamaz. Aksine hareketler hukuki ve cezai sorumluluğu gerektirir. DSM GRUP&#039;un burada açıkça belirtilmeyen diğer tüm hakları saklıdır.\r\n\r\nDSM GRUP, dilediği zaman bu yasal uyarı sayfasının içeriğini güncelleme yetkisini saklı tutmaktadır ve kullanıcılarına siteye her girişte yasal uyarı sayfasını ziyaret etmelerini tavsiye etmektedir.', 'D-Market Elektronik Hizmetler ve Ticaret A.Ş. (“Tak Takıştır”) olarak, kullanıcılarımızın hizmetlerimizden güvenli ve eksiksiz şekilde faydalanmalarını sağlamak amacıyla sitemizi kullanan üyelerimizin gizliliğini korumak için çalışıyoruz. Bu doğrultuda, işbu Tak Takıştır Gizlilik Politikası (“Politika”), üyelerimizin kişisel verilerinin 6698 sayılı Kişisel Verilerin Korunması Kanunu (“Kanun”) ile tamamen uyumlu bir şekilde işlenmesi ve kullanıcılarımızı bu bağlamda bilgilendirmek amacıyla hazırlanmıştır. Tak Takıştır.com çerez politikası İşbu Politika’nın ayrılmaz parçasıdır.\r\n\r\nİşbu Politika’nın amacı, Tak Takıştır tarafından işletilmekte olan www.Tak Takıştır.com internet sitesi ile mobil uygulamanın (hepsi birlikte “Platform” olarak anılacaktır) işletilmesi sırasında Platform üyeleri/ziyaretçileri/kullanıcıları (hepsi birlikte “Veri Sahibi” olarak anılacaktır) tarafından Tak Takıştır ile paylaşılan veya Tak Takıştır’nın, Veri Sahibi’nin Platform’u kullanımı sırasında ürettiği kişisel verilerin kullanımına ilişkin koşul ve şartları tespit etmektir.\r\n\r\nHangi Veriler İşlenmektedir?\r\nAşağıda Tak Takıştır tarafından işlenen ve Kanun uyarınca kişisel veri sayılan verilerin hangileri olduğu sıralanmıştır. Aksi açıkça belirtilmedikçe, işbu Politika kapsamında arz edilen hüküm ve koşullar kapsamında “kişisel veri” ifadesi aşağıda yer alan bilgileri kapsayacaktır.\r\n\r\n-İletişim Bilgisi\r\n-Kullanıcı Bilgisi\r\n-Kullanıcı İşlem Bilgisi\r\n-İşlem Güvenliği Bilgisi\r\n-Finansal Bilgi\r\n-Pazarlama Bilgisi\r\n-Talep/Şikayet Yönetimi Bilgisi\r\n\r\nKişisel Verilerin Korunması Kanunu’nun 3. ve 7. maddeleri dairesince, geri döndürülemeyecek şekilde anonim hale getirilen veriler, anılan kanun hükümleri uyarınca kişisel veri olarak kabul edilmeyecek ve bu verilere ilişkin işleme faaliyetleri işbu Politika hükümleri ile bağlı olmaksızın gerçekleştirecektir.', 'ÜRÜN BİLGİLERİ:\r\nMal/Ürün veya Hizmetin; Türü, Miktarı, Marka/Modeli, Rengi, Adedi, Satış Bedeli ve Ödeme Şekli, aşağıda belirtildiği gibi olup, bu vaatler [SalesDate] Tarihine kadar geçerlidir.\r\nÜrünler Satış Fiyatı (KDV dahil) : Kargo Ücreti : Ödeme Şekli ve Planı : Teslimat Adresi : Teslim Edilecek Kişi : Fatura Adresi :\r\n\r\nÜRÜN TESLİMİ Sözleşme konusu ürün, kural olarak ve normal koşullarda yasal 30 günlük süreyi aşmamak şartı ile yerleşim yerinin uzaklığına bağlı olarak TÜKETİCİ ’ye yani ALICI ’ya veya gösterdiği adresteki 3. kişi veya kuruluşa teslim edilir. Ürünün teslimi hususunda Ürün Bilgileri başlıklı maddede yazan kargo ücreti ALICI tarafından ödenir. Sözleşme konusu ürün, tüketiciden başka bir kişi veya kuruluşa teslim edilecek ise ALICI, ürünün kendisine teslim edileceği 3. kişinin adı-soyadı/unvanı/adresi gibi bilgileri eksiksiz ve yazılı olarak SATICI ’ya bildirmek zorundadır.\r\n\r\nCAYMA HAKKI,\r\nTÜKETİCİ ’nin, hiçbir hukuki ve cezai sorumluluk üstlenmeksizin ve hiçbir gerekçe göstermeksizin malı teslim aldığı veya malın gösterdiği adresteki 3. kişi/kuruluşa teslim edildiği tarihten itibaren yedi (14) gün içerisinde malı reddederek/iade ederek sözleşmeden cayma hakkı vardır. Cayma hakkı aldığı ürünlerin belirli bir kısmı olmamak kaydı ile yapılmalı siparişi bütün olarak iade etmelidir. Cayma hakkının kullanılabilmesi için bu süre içinde SATICI ’ya bu hakkın kullanıldığının faks veya elektronik posta veya taahhütlü mektup ile bildirimde bulunulması ve ürünün bu madde hükümleri çerçevesinde kullanılmamış ve ürünün kendisinin, ambalajının ve kutusunun zarar görmemiş ve ürüne ait etiket ve ürünün üzerinde bulunan koruma bantlarının çıkarılmamış olması şarttır. Bu hakkın kullanılması halinde, 3. kişiye veya ALICI ’ya teslim edilen ürünün SATICI’ya gönderildiğine dair kargo teslim tutanağı örneği ile satış faturası aslının iadesi zorunludur. Bu belgelerin ulaşmasını takip eden 7 (yedi) gün içinde ürün bedelinin ALICI ’nın banka hesabına veya kredi kartı hesabına iade edilmesi için SATICI ilgili banka nezdinde derhal girişimde bulunur.\r\n\r\nHÜKÜM\r\nMesafeli Sözleşmeler Uygulama Usul Ve Esasları Hakkında Yönetmelik uyarınca Tüketici, belgeyi imzalamadıkça mesafeli satış sözleşmesi akdedilemez. İşbu 1 (bir) sayfadan ibaret belge, [SalesDate] tarihinde SATICI tarafından düzenlenmiştir.\r\nBen Tüketici/Alıcı olarak, İşbu 1 (bir) sayfadan ibaret Ön Bilgilendirme Belgesinde yazan tüm hususları okudum, anladım, kabul ettim ve tüm bu hususları onayladım, teyit ettim.\r\nAdı- Soyadı: E-mail: Tarih: İmza:', 'İstenilen adrese\r\nFatura adresine teslim\r\nOnline sipariş sürecinde, fatura adresi otomatik olarak teslimat adresi &quot;Teslimat adresi&quot; adımında kabul edilir.\r\nTeslimat adresi ile ilgili bilgileriniz, online siparişinizi tamamladıktan sonra e-posta ile alacağınız sipariş onayında yer almaktadır.\r\nTeslimat notu ve fatura ile birlikte verilir.\r\nYurtiçi kargo veya Kolaygelsin kargo tarafından SMS ile siparişiniz hakkında bilgilendirilirsiniz.\r\nFarklı teslimat adresine teslimat\r\n&quot;Teslim adresini&quot; sipariş adımında farklı bir teslimat adresi belirtebilirsiniz.\r\nFatura ve gönderim adresleri aynı ülkede olmalıdır.\r\nTeslimat adres bilgileriniz, online siparişinizi tamamladıktan sonra e-posta ile alacağınız sipariş onayında yer almaktadır.\r\nYurtiçi kargo ve Kolaygelsin kargo tarafından SMS ile siparişiniz hakkında bilgilendirilirsiniz.\r\nE-posta adresiniz yoksa, faturayı fatura adresine gönderebilirsiniz.', 'GENEL:\r\n\r\nKullanmakta olduğunuz web sitesi üzerinden elektronik ortamda sipariş verdiğiniz takdirde, size sunulan ön bilgilendirme formunu ve mesafeli satış sözleşmesini kabul etmiş sayılırsınız.\r\n\r\nAlıcılar, satın aldıkları ürünün satış ve teslimi ile ilgili olarak 6502 sayılı Tüketicinin Korunması Hakkında Kanun ve Mesafeli Sözleşmeler Yönetmeliği (RG:27.11.2014/29188) hükümleri ile yürürlükteki diğer yasalara tabidir.\r\n\r\nÜrün sevkiyat masrafı olan kargo ücretleri SATICI tarafından ödenecektir.\r\n\r\nSatın alınan her bir ürün, 30 günlük yasal süreyi aşmamak kaydı ile alıcının gösterdiği adresteki kişi ve/veya kuruluşa teslim edilir. Bu süre içinde ürün teslim edilmez ise, Alıcılar sözleşmeyi sona erdirebilir.\r\n\r\nSatın alınan ürün, eksiksiz ve siparişte belirtilen niteliklere uygun ve varsa garanti belgesi, kullanım kılavuzu gibi belgelerle teslim edilmek zorundadır.\r\n\r\nSatın alınan ürünün satılmasının imkansızlaşması durumunda, satıcı bu durumu öğrendiğinden itibaren 3 gün içinde yazılı olarak alıcıya bu durumu bildirmek zorundadır. 14 gün içinde de toplam bedel Alıcı’ya iade edilmek zorundadır.\r\n\r\n\r\nSATIN ALINAN ÜRÜN BEDELİ ÖDENMEZ İSE:\r\n\r\nAlıcı, satın aldığı ürün bedelini ödemez veya banka kayıtlarında iptal ederse, Satıcının ürünü teslim yükümlülüğü sona erer.\r\n\r\n\r\nKREDİ KARTININ YETKİSİZ KULLANIMI İLE YAPILAN ALIŞVERİŞLER:\r\n\r\nÜrün teslim edildikten sonra, alıcının ödeme yaptığı kredi kartının yetkisiz kişiler tarafından haksız olarak kullanıldığı tespit edilirse ve satılan ürün bedeli ilgili banka veya finans kuruluşu tarafından Satıcı&#039;ya ödenmez ise, Alıcı, sözleşme konusu ürünü 3 gün içerisinde nakliye gideri SATICI’ya ait olacak şekilde SATICI’ya iade etmek zorundadır.\r\n\r\n\r\nÖNGÖRÜLEMEYEN SEBEPLERLE ÜRÜN SÜRESİNDE TESLİM EDİLEMEZ İSE:\r\n\r\nSatıcı’nın öngöremeyeceği mücbir sebepler oluşursa ve ürün süresinde teslim edilemez ise, durum Alıcı’ya bildirilir. Alıcı, siparişin iptalini, ürünün benzeri ile değiştirilmesini veya engel ortadan kalkana dek teslimatın ertelenmesini talep edebilir. Alıcı siparişi iptal ederse; ödemeyi nakit ile yapmış ise iptalinden itibaren 14 gün içinde kendisine nakden bu ücret ödenir. Alıcı, ödemeyi kredi kartı ile yapmış ise ve iptal ederse, bu iptalden itibaren yine 14 gün içinde ürün bedeli bankaya iade edilir, ancak bankanın alıcının hesabına 2-3 hafta içerisinde aktarması olasıdır.\r\n\r\n\r\nALICININ ÜRÜNÜ KONTROL ETME YÜKÜMLÜLÜĞÜ:\r\n\r\nAlıcı, sözleşme konusu mal/hizmeti teslim almadan önce muayene edecek; ezik, kırık, ambalajı yırtılmış vb. hasarlı ve ayıplı mal/hizmeti kargo şirketinden teslim almayacaktır. Teslim alınan mal/hizmetin hasarsız ve sağlam olduğu kabul edilecektir. ALICI , Teslimden sonra mal/hizmeti özenle korunmak zorundadır. Cayma hakkı kullanılacaksa mal/hizmet kullanılmamalıdır. Ürünle birlikte Fatura da iade edilmelidir.\r\n\r\n\r\nCAYMA HAKKI:\r\n\r\nALICI; satın aldığı ürünün kendisine veya gösterdiği adresteki kişi/kuruluşa teslim tarihinden itibaren 14 (on dört) gün içerisinde, SATICI’ya aşağıdaki iletişim bilgileri üzerinden bildirmek şartıyla hiçbir hukuki ve cezai sorumluluk üstlenmeksizin ve hiçbir gerekçe göstermeksizin malı reddederek sözleşmeden cayma hakkını kullanabilir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `havalebildirimleri`
--

CREATE TABLE `havalebildirimleri` (
  `id` int(10) UNSIGNED NOT NULL,
  `bankaID` int(10) UNSIGNED NOT NULL,
  `adiSoyadi` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefon` varchar(11) NOT NULL,
  `aciklama` text NOT NULL,
  `islemTarihi` int(10) UNSIGNED NOT NULL,
  `durum` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(10) UNSIGNED NOT NULL,
  `isimsoyisim` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefonnum` varchar(11) NOT NULL,
  `mesaj` text NOT NULL,
  `islemTarihi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kargofirmalari`
--

CREATE TABLE `kargofirmalari` (
  `id` int(10) UNSIGNED NOT NULL,
  `KargoFirmasiLogosu` varchar(50) NOT NULL,
  `KargoFirmasiAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kargofirmalari`
--

INSERT INTO `kargofirmalari` (`id`, `KargoFirmasiLogosu`, `KargoFirmasiAdi`) VALUES
(1, 'yurtici.png', 'Yurtiçi Kargo'),
(2, 'aras.png', 'Aras Kargo'),
(3, 'mng.png', 'MNG Kargo'),
(4, 'surat.jpg', 'Sürat Kargo'),
(5, 'ptt.jpg', 'PTT Kargo'),
(6, 'ups.jpg', 'UPS Kargo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menuler`
--

CREATE TABLE `menuler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(50) NOT NULL,
  `MenuAdi` varchar(30) NOT NULL,
  `UrunSayisi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menuler`
--

INSERT INTO `menuler` (`id`, `UrunTuru`, `MenuAdi`, `UrunSayisi`) VALUES
(1, 'Kolye', 'Yeni Moda Uzun Kolyeler', 1),
(2, 'Kolye', 'Ay Figürlü Kolyeler', 2),
(3, 'Kolye', 'Zincir Kolyeler', 4),
(4, 'Kolye', 'Tasarım Kolyeler', 5),
(5, 'Küpe', 'Uzun Zincirli Küpeler', 4),
(6, 'Küpe', 'Yuvarlak Küpeler', 3),
(7, 'Küpe', 'Tüylü Küpeler', 2),
(8, 'Küpe', 'Tasarım Küpeler', 3),
(9, 'Bileklik', 'Gümüş Bileklikler', 3),
(10, 'Bileklik', 'Taşlı Bileklikler', 4),
(11, 'Bileklik', 'Figürlü Bileklikler', 5),
(12, 'Yüzük', 'Taşlı Yüzükler', 4),
(13, 'Yüzük', 'Spor ve Sade Yüzükler', 4),
(14, 'Yüzük', 'Tasarım yüzükler', 4),
(15, 'Saat', 'Klasik Saatler', 6),
(16, 'Saat', 'Spor Saatler', 4),
(17, 'Saat', 'Renkli Saatler', 2),
(18, 'Gözlük', 'Güneş Gözlükleri', 4),
(19, 'Gözlük', 'Renkli Gözlükler', 5),
(20, 'Gözlük', 'Tasarım Gözlükler', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(10) UNSIGNED NOT NULL,
  `SepetNumarasi` int(10) NOT NULL,
  `UyeId` int(10) NOT NULL,
  `UrunId` int(10) NOT NULL,
  `AdresId` int(10) NOT NULL,
  `KargoId` int(10) NOT NULL,
  `UrunAdedi` tinyint(3) NOT NULL,
  `OdemeSecimi` varchar(50) NOT NULL,
  `TaksitSecimi` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `SiparisNumarasi` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(50) NOT NULL,
  `UrunAdi` varchar(255) NOT NULL,
  `UrunFiyati` double UNSIGNED NOT NULL,
  `KdvOrani` int(2) UNSIGNED NOT NULL,
  `UrunAdedi` int(3) UNSIGNED NOT NULL,
  `ToplamUrunFiyati` double UNSIGNED NOT NULL,
  `KargoFirmasiSecimi` varchar(100) NOT NULL,
  `KargoUcreti` double UNSIGNED NOT NULL,
  `UrunResmi` varchar(30) NOT NULL,
  `AdresAdiSoyadi` varchar(100) NOT NULL,
  `AdresDetay` varchar(255) NOT NULL,
  `AdresTelefon` varchar(11) NOT NULL,
  `OdemeSecimi` varchar(250) NOT NULL,
  `TaksitSecimi` int(2) UNSIGNED NOT NULL,
  `SiparisTarihi` int(10) NOT NULL,
  `SiparisIpAdresi` varchar(20) NOT NULL,
  `OnayDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoGonderiKodu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `UyeId`, `SiparisNumarasi`, `UrunId`, `UrunTuru`, `UrunAdi`, `UrunFiyati`, `KdvOrani`, `UrunAdedi`, `ToplamUrunFiyati`, `KargoFirmasiSecimi`, `KargoUcreti`, `UrunResmi`, `AdresAdiSoyadi`, `AdresDetay`, `AdresTelefon`, `OdemeSecimi`, `TaksitSecimi`, `SiparisTarihi`, `SiparisIpAdresi`, `OnayDurumu`, `KargoDurumu`, `KargoGonderiKodu`) VALUES
(1, 1, 1, 5, 'Kolye', 'Yıldız Desenli Kolye', 65, 12, 2, 130, 'Aras Kargo', 20, 'kolye4.jpg', 'Büşra Akçay', 'Adres Konya Selçuklu', '05524013147', 'Banka Havalesi', 0, 1600010440, '::1', 1, 1, '123456789');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

CREATE TABLE `sorular` (
  `id` int(10) UNSIGNED NOT NULL,
  `soru` varchar(250) NOT NULL,
  `cevap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`id`, `soru`, `cevap`) VALUES
(1, '1. Nasıl Sipariş Verebilirim?', 'Sipariş verebilmek için ticari firma kaydı zorunluluğu bulunmamaktadır. Şahıs olarak da sipariş verebilirsiniz.\r\n<br>\r\nÖncelikle ; Sitemize üye olunuz. Bu işlem bir kaç dakikanızı alacaktır. Daha sonra seçtiğiniz ürünlerden istediğiniz adetlerde sepetinize toplayarak alışverişe başlayabilirsiniz.\r\n<br>\r\nPaket yada kutu ile alım zorunluluğu yoktur. Her üründen bir adet alınabilir.\r\n<br>\r\n200 TL&#039;ye kadar 10 TL Kargo ücreti eklenir.\r\n<br>\r\n200 TL ve üzeri siparişlerde kargo ücretsizdir.'),
(2, '2. Çalışma Saatleriniz Nedir?', 'Hafta İçi : 08:00 --- 18:00 <br>\r\nHafta Sonu Cumartesi 08:00 --- 12:30'),
(3, '3. Sitenizdeki ürünler ne kadar sürede güncelleniyor yeni eklenen ürünleri nasıl takip edebiliriz ?', 'Sitemize her gün 100 yeni ürün eklemeye çalışıyoruz. Bu eklenen yeni ürünleri sitede üst menüde bulunan Yeni Ürünler menüsünden anlık olarak takip edebilirsiniz. Bunun haricinde stokta kalmayan ürünlere adet girişleri yapılmaktadır. Bu ürünleri de ilgili kategori sayfalarını gezerek takip edebilirsiniz. Stok adeti girilen ürünler ilk sayfada görünmez. Alt sayfaları incelemeniz gerekmektedir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(10) UNSIGNED NOT NULL,
  `MenuId` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(100) NOT NULL,
  `UrunAdi` varchar(255) NOT NULL,
  `UrunFiyati` double UNSIGNED NOT NULL,
  `ParaBirimi` char(3) NOT NULL,
  `KdvOrani` int(2) UNSIGNED NOT NULL,
  `UrunAciklamasi` text NOT NULL,
  `KargoUcreti` double UNSIGNED NOT NULL,
  `UrunResmi` varchar(30) NOT NULL,
  `Durumu` tinyint(1) UNSIGNED NOT NULL,
  `StokSayisi` int(10) NOT NULL,
  `ToplamSatisSayisi` int(10) UNSIGNED NOT NULL,
  `YorumSayisi` int(10) UNSIGNED NOT NULL,
  `ToplamYorumPuani` int(10) UNSIGNED NOT NULL,
  `GoruntulenmeSayisi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `MenuId`, `UrunTuru`, `UrunAdi`, `UrunFiyati`, `ParaBirimi`, `KdvOrani`, `UrunAciklamasi`, `KargoUcreti`, `UrunResmi`, `Durumu`, `StokSayisi`, `ToplamSatisSayisi`, `YorumSayisi`, `ToplamYorumPuani`, `GoruntulenmeSayisi`) VALUES
(1, 1, 'Kolye', 'Çapraz Kolye', 110, 'TL', 15, 'Yeni moda uzun ay, gül ve çiçek desenli çapraz katmanlı kolye', 10, 'kolye1.jpg', 1, 50, 0, 0, 0, 5),
(2, 2, 'Kolye', 'Ay Yıldız Kolye', 60, 'TL', 12, 'Zirkon taşlı hilal ve yıldız figürlü gümüş kolye', 10, 'kolye3.jpg', 1, 50, 0, 0, 0, 0),
(3, 2, 'Kolye', 'Ay Desenli Kolye', 55, 'TL', 12, 'Feng basit bağlantılı ay figürlü zincir kolye', 10, 'kolye8.jpg', 1, 50, 0, 0, 0, 0),
(4, 3, 'Kolye', 'Doğal Taşlı Kolye', 105, 'TL', 12, 'Altın renk yeni moda doğal taşlı, zincirli kolye', 10, 'kolye2.jpg', 1, 50, 0, 0, 0, 0),
(5, 3, 'Kolye', 'Yıldız Desenli Kolye', 65, 'TL', 12, 'Uzun zincirli yıldız desenli şık kolye', 10, 'kolye4.jpg', 1, 48, 2, 1, 4, 4),
(6, 3, 'Kolye', 'Halkalı Kolye', 55, 'TL', 12, 'Zincirli halka desenli kolye', 10, 'kolye6.jpg', 1, 50, 0, 0, 0, 0),
(7, 3, 'Kolye', 'Kelebek Kolye', 45, 'TL', 12, 'Zincirli kelebek figürlü kolye', 10, 'kolye9.jpg', 1, 50, 0, 0, 0, 2),
(8, 4, 'Kolye', 'Baykuş Kolye', 75, 'TL', 12, 'Özel tasarım baykuş figürlü kolye', 10, 'kolye5.jpg', 1, 50, 0, 0, 0, 0),
(9, 4, 'Kolye', 'Yılan Zincir Kolye', 85, 'TL', 12, 'Ayarlanabilir yılan figürlü uzun zincirli tasarım kolye', 10, 'kolye7.jpg', 1, 50, 0, 0, 0, 0),
(10, 4, 'Kolye', 'Siyah Taşlı Kolye', 75, 'TL', 12, 'Siyah taşlı özel tasarım kolye', 10, 'kolye10.png', 1, 48, 2, 0, 0, 1),
(11, 4, 'Kolye', 'Şık Altın Kolye', 100, 'TL', 12, 'Özel tasarımlı şık altın renkli kolye', 10, 'kolye11.jpg', 1, 50, 0, 0, 0, 2),
(12, 4, 'Kolye', 'Zümrüdüanka Kolye', 95, 'TL', 12, 'Gümüş rengi şık zümrüdüanka figürlü kolye', 10, 'kolye12.jpg', 1, 50, 0, 0, 0, 2),
(13, 5, 'Küpe', 'Çapalı Küpe', 85, 'TL', 12, 'Altın rengi çapalı şık küpe', 10, 'kupe2.jpg', 1, 50, 0, 0, 0, 0),
(14, 5, 'Küpe', 'Yıldızlı Küpe', 60, 'TL', 12, 'Uzun zincirli yıldız figürlü küpe', 10, 'kupe5.jpg', 1, 50, 0, 0, 0, 0),
(15, 5, 'Küpe', 'Çok Zincirli Küpe', 55, 'TL', 12, 'Uzun ve çok zincirli küpe', 10, 'kupe10.jpg', 1, 50, 0, 0, 0, 0),
(16, 5, 'Küpe', 'Uzun Figürlü Küpe', 85, 'TL', 12, 'Son moda uzun zincirli ve figürlü küpe', 10, 'kupe11.jpg', 1, 50, 0, 0, 0, 0),
(17, 6, 'Küpe', 'Large Küpe', 50, 'TL', 12, 'Son moda spor model large küpe', 10, 'kupe1.jpg', 1, 50, 0, 0, 0, 1),
(18, 6, 'Küpe', 'Altın Yuvarlak Küpe', 80, 'TL', 12, 'Son derece şık altın rengi yuvarlak küpe', 10, 'kupe3.jpg', 1, 50, 0, 0, 0, 0),
(19, 6, 'Küpe', 'Gümüş Yuvarlak Küpe', 45, 'TL', 12, 'Gümüş rengi yuvarlak küpe', 10, 'kupe6.jpg', 1, 50, 0, 0, 0, 0),
(20, 7, 'Küpe', 'Siyah Tüylü Küpe', 55, 'TL', 12, 'Sade severler için sade siyah tüylü küpe', 10, 'kupe7.jpg', 1, 50, 0, 0, 0, 0),
(21, 7, 'Küpe', 'Renkli Tüylü Küpe', 40, 'TL', 12, 'Son moda renkli tüylü küpe', 10, 'kupe8.jpg', 1, 49, 1, 0, 0, 2),
(22, 8, 'Küpe', 'Kuş Figürlü Küpe', 40, 'TL', 12, 'Özel tasarım kuş figürlü şık küpe', 10, 'kupe4.jpg', 1, 50, 0, 0, 0, 0),
(23, 8, 'Küpe', 'Eski Moda Küpe', 50, 'TL', 12, 'Yeni tasarım eski moda küpe', 10, 'kupe9.jpg', 1, 48, 2, 1, 4, 6),
(24, 8, 'Küpe', 'Çelik Küpe', 100, 'TL', 12, 'Özel tasarım çelik küpe', 10, 'kupe12.jpg', 1, 50, 0, 0, 0, 0),
(25, 9, 'Bileklik', 'Zincir Bileklik', 95, 'TL', 12, 'Sade ve spor zincir bileklik', 10, 'bileklik2.jpg', 1, 50, 0, 0, 0, 0),
(26, 9, 'Bileklik', 'Lacivert Taşlı Bileklik', 500, 'TL', 13, 'Özel tasarım lacivert taşlı gümüş bileklik', 10, 'bileklik9.jpg', 1, 50, 0, 0, 0, 0),
(27, 9, 'Bileklik', 'Gümüş Bileklik', 105, 'TL', 12, 'Sade ve şık gümüş renkli bileklik', 10, 'bileklik10.jpg', 1, 50, 0, 0, 0, 0),
(28, 10, 'Bileklik', 'Mavi Boncuk Bileklik', 190, 'TL', 12, 'Özel tasarım mavi boncuklu bileklik', 10, 'bileklik1.jpg', 1, 50, 0, 0, 0, 0),
(29, 10, 'Bileklik', 'Kanatlı Bileklik', 180, 'TL', 12, 'Özel tasarım son derece şık kanat figürlü taşlı bileklik', 10, 'bileklik11.jpg', 1, 50, 0, 0, 0, 0),
(30, 10, 'Bileklik', 'İnci Çiçek Bileklik', 125, 'TL', 12, 'Özel tasarım inci çiçek bileklik', 10, 'bileklik12.jpg', 1, 50, 0, 0, 0, 0),
(31, 10, 'Bileklik', 'Taşlı Tasarım Bileklik', 250, 'TL', 12, 'Son moda taşlı tasarımlı şık bileklik', 10, 'bileklik5.jpg', 1, 50, 0, 0, 0, 0),
(32, 11, 'Bileklik', 'Tasarım Bileklik', 150, 'TL', 15, 'Çoklu figürlü özel tasarım bileklik', 10, 'bileklik3.jpg', 1, 50, 0, 0, 0, 0),
(33, 11, 'Bileklik', 'Renkli Bileklik', 115, 'TL', 15, 'Son moda renkli, figürlü bileklik', 10, 'bileklik4.jpg', 1, 46, 4, 1, 2, 3),
(34, 11, 'Bileklik', 'Kar Tanesi Bileklik', 350, 'TL', 15, 'Gümüş renkli kar tanesi figürlü şık bileklik', 10, 'bileklik6.jpg', 1, 50, 0, 0, 0, 1),
(35, 11, 'Bileklik', 'Boncuklu Bileklik', 95, 'TL', 15, 'Son moda boncuklu ve figürlü bileklik', 10, 'bileklik7.jpg', 1, 49, 1, 0, 0, 1),
(36, 11, 'Bileklik', 'Yıldız Bileklik', 85, 'TL', 15, 'Altın rengi yıldız figürlü bileklik', 10, 'bileklik8.jpg', 1, 49, 1, 1, 3, 3),
(37, 12, 'Yüzük', 'Yeşil Pırlanta Yüzük', 200, 'TL', 15, 'Son moda yeşil pırlantalı yüzük', 10, 'yuzuk2.jpg', 1, 50, 0, 0, 0, 0),
(38, 12, 'Yüzük', 'İncili Gri Yüzük', 280, 'TL', 15, 'Son moda gri renkli incili yüzük', 10, 'yuzuk7.jpg', 1, 50, 0, 0, 0, 0),
(39, 12, 'Yüzük', 'İnci Yüzük', 255, 'TL', 15, 'Son moda çok şık inci yüzük', 10, 'yuzuk8.jpg', 1, 50, 0, 0, 0, 0),
(40, 12, 'Yüzük', 'Pırlanta Yüzük', 300, 'TL', 15, 'Son moda şık pırlanta yüzük', 10, 'yuzuk12.jpg', 1, 50, 0, 0, 0, 0),
(41, 13, 'Yüzük', 'Kuru Kafalı Yüzük', 95, 'TL', 15, 'Kuru kafalı spor gri yüzük', 10, 'yuzuk1.jpg', 1, 50, 0, 0, 0, 0),
(42, 13, 'Yüzük', 'Sade Gri Yüzük', 85, 'TL', 15, 'Sade tasarımıyla spor gri yüzük', 10, 'yuzuk3.jpg', 1, 50, 0, 0, 0, 0),
(43, 13, 'Yüzük', 'Desenli Yüzük', 120, 'TL', 15, 'Özel olarak tasarlanmış üçgen desenli yüzük', 10, 'yuzuk10.jpg', 1, 50, 0, 0, 0, 0),
(44, 13, 'Yüzük', 'Sade Spor Yüzük', 100, 'TL', 15, 'Sade severler için özel olarak tasarlanmış yüzük', 10, 'yuzuk9.jpg', 1, 50, 0, 0, 0, 0),
(45, 14, 'Yüzük', 'Deniz Kabuğu Yüzüğü', 250, 'TL', 15, 'Yeni tasarım son derece şık deniz kabuk temalı yüzük', 10, 'yuzuk4.jpg', 1, 50, 0, 0, 0, 0),
(46, 14, 'Yüzük', 'Yeni Moda Yüzük', 75, 'TL', 15, 'Yeni moda son derece şık tasarım yüzük', 10, 'yuzuk5.jpg', 1, 50, 0, 0, 0, 0),
(47, 14, 'Yüzük', 'Şık Tasarım Yüzük', 145, 'TL', 15, 'Son derece şık tasarım yüzük', 10, 'yuzuk6.jpg', 1, 48, 2, 1, 2, 1),
(48, 14, 'Yüzük', 'Yeni Tasarım Yüzük', 150, 'TL', 15, 'Yeni tasarım son derece şık yüzük', 10, 'yuzuk11.jpg', 1, 50, 0, 0, 0, 2),
(49, 15, 'Saat', 'Şık Klasik Saat', 180, 'TL', 15, 'Yeni tasarım son derece şık klasik saat', 10, 'saat2.jpg', 1, 50, 0, 0, 0, 0),
(50, 15, 'Saat', 'Sade Klasik Saat', 170, 'TL', 15, 'Sade ve şık gümüş klasik saat', 10, 'saat3.jpg', 1, 50, 0, 0, 0, 0),
(51, 15, 'Saat', 'Sade Şık Saat', 145, 'TL', 12, 'Gümüş, sade ve şık saat', 10, 'saat5.jpg', 1, 50, 0, 0, 0, 0),
(52, 15, 'Saat', 'Gümüş Siyah Saat', 130, 'TL', 12, 'Gümüş siyah şık klasik saat', 10, 'saat9.jpg', 1, 50, 0, 0, 0, 0),
(53, 15, 'Saat', 'Klasik Gümüş Saat', 145, 'TL', 15, 'Gümüş renginde klasik spor saat', 10, 'saat10.jpg', 1, 50, 0, 0, 0, 0),
(54, 15, 'Saat', 'Altın Rengi Saat', 160, 'TL', 12, 'Altın rengi klasik saat', 10, 'saat11.jpg', 1, 50, 0, 0, 0, 0),
(55, 16, 'Saat', 'Tasarım Spor Saat', 110, 'TL', 12, 'Esprili tasarım spor saat', 10, 'saat1.jpg', 1, 50, 0, 0, 0, 0),
(56, 16, 'Saat', 'Yeni Moda Spor Saat', 150, 'TL', 12, 'Yeni moda pembe/siyah spor saati', 10, 'saat8.jpg', 1, 50, 0, 0, 0, 0),
(57, 16, 'Saat', 'Gri Spor Saat', 210, 'TL', 12, 'Gri ve lacivertin muhteşem uyumunu yakalayan spor saat', 10, 'saat12.jpg', 1, 50, 0, 0, 0, 0),
(58, 16, 'Saat', 'Siyah Spor Saat', 95, 'TL', 12, 'Herkes tarafından sevilen siyah spor saat', 10, 'saat4.jpg', 1, 50, 0, 0, 0, 0),
(59, 17, 'Saat', 'Lacivert Saat', 145, 'TL', 12, 'Özel tasarım yeni moda lacivert saat', 10, 'saat6.jpg', 1, 50, 0, 0, 0, 0),
(60, 17, 'Saat', 'Kırmızı Saat', 200, 'TL', 12, 'Özel tasarım kırmızı renkte saat', 10, 'saat7.jpg', 1, 50, 0, 0, 0, 0),
(61, 18, 'Gözlük', 'Şık Güneş Gözlüğü', 150, 'TL', 12, 'Yeni tasarım son derece şık güneş gözlüğü', 10, 'gozluk1.jpg', 1, 50, 0, 0, 0, 0),
(62, 18, 'Gözlük', 'Eski Moda Güneş Gözlüğü', 110, 'TL', 12, 'Yeni tasarım eski moda güneş gözlüğü', 10, 'gozluk2.jpg', 1, 50, 0, 0, 0, 1),
(63, 18, 'Gözlük', 'Özel Tasarım Güneş Gözlüğü', 100, 'TL', 14, 'Son moda özel tasarım güneş gözlüğü', 10, 'gozluk9.jpg', 1, 50, 0, 0, 0, 0),
(64, 18, 'Gözlük', 'Kare Çerçeveli Güneş Gözlüğü', 170, 'TL', 15, 'Son moda kare çerçeveli güneş gözlüğü', 10, 'gozluk10.jpg', 1, 50, 0, 0, 0, 0),
(65, 19, 'Gözlük', 'Yuvarlak Renkli Gözlük', 130, 'TL', 12, 'Son moda yuvarlak pembe renkli gözlük', 10, 'gozluk3.jpg', 1, 50, 0, 0, 0, 0),
(66, 19, 'Gözlük', 'Mavi Renk Gözlük', 120, 'TL', 12, 'Şık mavi renkli gözlük', 10, 'gozluk4.jpg', 1, 50, 0, 0, 0, 0),
(67, 19, 'Gözlük', 'Büyük Çerçeveli Gözlük', 145, 'TL', 17, 'Kare, büyük çerçeveli ve pembe renki özel tasarım gözlük', 10, 'gozluk8.jpg', 1, 50, 0, 0, 0, 1),
(68, 19, 'Gözlük', 'Eski Moda Renkli Gözlük', 215, 'TL', 15, 'Yeni tasarım eski moda renkli gözlük', 10, 'gozluk11.jpg', 1, 50, 0, 0, 0, 0),
(69, 19, 'Gözlük', 'Pembe Gözlük', 95, 'TL', 14, 'Son moda pembe gözlük', 10, 'gozluk12.jpg', 1, 50, 0, 0, 0, 0),
(70, 20, 'Gözlük', 'Çok Renkli Gözlük', 200, 'TL', 12, 'Özel tasarım çok sevilen rengarenk gözlük', 10, 'gozluk5.jpg', 1, 50, 0, 0, 0, 0),
(71, 20, 'Gözlük', 'Ters Çerçeveli Gözlük', 250, 'TL', 12, 'Ters çerçeveli özel tasarım gözlük', 10, 'gozluk7.jpg', 1, 55, 10, 0, 0, 3),
(72, 20, 'Gözlük', 'Mavi Şeritli Gözlük', 105, 'TL', 12, 'Mavi şeritli özel tasarım gözlük', 10, 'gozluk6.jpg', 1, 50, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(10) UNSIGNED NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `Sifre` varchar(100) NOT NULL,
  `IsimSoyisim` varchar(100) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `Cinsiyet` varchar(5) NOT NULL,
  `Durumu` tinyint(1) NOT NULL,
  `SilinmeDurumu` tinyint(1) NOT NULL,
  `KayitTarihi` varchar(20) NOT NULL,
  `KayitIpAdresi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `EmailAdresi`, `Sifre`, `IsimSoyisim`, `TelefonNumarasi`, `Cinsiyet`, `Durumu`, `SilinmeDurumu`, `KayitTarihi`, `KayitIpAdresi`) VALUES
(1, 'busraakcay@gmail.com', '202cb962ac59075b964b07152d234b70', 'Büşra Akçay', '05524013147', 'Kadın', 1, 0, '1598040148', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoneticiler`
--

CREATE TABLE `yoneticiler` (
  `id` int(10) UNSIGNED NOT NULL,
  `kullaniciAdi` varchar(100) NOT NULL,
  `sifre` varchar(100) NOT NULL,
  `isimSoyisim` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `telefon` varchar(11) NOT NULL,
  `kaliciAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yoneticiler`
--

INSERT INTO `yoneticiler` (`id`, `kullaniciAdi`, `sifre`, `isimSoyisim`, `email`, `telefon`, `kaliciAdmin`) VALUES
(1, 'busraakcay', '202cb962ac59075b964b07152d234b70', 'Büşra Akçay', '	busraakcay@gmail.com', '	0552401314', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `Puan` tinyint(1) UNSIGNED NOT NULL,
  `YorumMetni` text NOT NULL,
  `YorumTarihi` int(10) NOT NULL,
  `YorumIpAdresi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `UrunId`, `UyeId`, `Puan`, `YorumMetni`, `YorumTarihi`, `YorumIpAdresi`) VALUES
(1, 5, 1, 4, 'güzel bir ürün', 1600010483, '::1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adresler`
--
ALTER TABLE `adresler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bankahesaplari`
--
ALTER TABLE `bankahesaplari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `favoriler`
--
ALTER TABLE `favoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizdavesozlesmeler`
--
ALTER TABLE `hakkimizdavesozlesmeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `havalebildirimleri`
--
ALTER TABLE `havalebildirimleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kargofirmalari`
--
ALTER TABLE `kargofirmalari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menuler`
--
ALTER TABLE `menuler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sorular`
--
ALTER TABLE `sorular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmailAdresi` (`EmailAdresi`);

--
-- Tablo için indeksler `yoneticiler`
--
ALTER TABLE `yoneticiler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adresler`
--
ALTER TABLE `adresler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bankahesaplari`
--
ALTER TABLE `bankahesaplari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `favoriler`
--
ALTER TABLE `favoriler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizdavesozlesmeler`
--
ALTER TABLE `hakkimizdavesozlesmeler`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `havalebildirimleri`
--
ALTER TABLE `havalebildirimleri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kargofirmalari`
--
ALTER TABLE `kargofirmalari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `menuler`
--
ALTER TABLE `menuler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sorular`
--
ALTER TABLE `sorular`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yoneticiler`
--
ALTER TABLE `yoneticiler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
