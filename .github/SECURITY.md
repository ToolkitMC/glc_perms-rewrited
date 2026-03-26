# Güvenlik Politikası

## Desteklenen Sürümler

| Sürüm | Destek Durumu |
|-------|---------------|
| v1.0.0 | ✅ Aktif destek |

## Güvenlik Açığı Bildirimi

Bir güvenlik açığı tespit ettiyseniz lütfen GitHub Issues üzerinden **kamuya açık** olarak bildirmeyin.

Bunun yerine:
- GitHub **Security → Report a vulnerability** sekmesini kullanın
- Veya doğrudan organizasyon yöneticisiyle iletişime geçin

## Bilinen Güvenlik Notları

Bu datapack Minecraft Java Edition 1.21.11 üzerinde çalışır ve aşağıdaki güvenlik prensiplerini uygular:

### Erişim Kontrolü
- Tüm yönetim komutları `gulce_admin` tag'i gerektirir
- Tag olmayan oyuncular trigger'ları kullanabilir ancak yönetim fonksiyonlarına erişemez
- `trigger` objective'i onay mekanizması görevi görür — komutlar direkt çalışmaz

### Storage Güvenliği
- Tüm veri `mc:handler`, `mc:_`, `mc:ui`, `mc:dialog`, `mc:_sched` namespace'lerinde tutulur
- Bu namespace'ler datapack'e özeldir, vanilla verileriyle çakışmaz

### Bilinen Sınırlamalar
- Bu bir Minecraft datapacks — sunucu seviyesinde bir güvenlik katmanı **değildir**
- Op yetkisi olan oyuncular storage'a doğrudan erişebilir
- Çok oyunculu sunucularda `gulce_admin` tag'ini yalnızca güvenilir kişilere verin

## Sorumluluk Reddi

Bu proje Minecraft oyun içi bir araçtır. Sistem güvenliği veya sunucu güvenliği için kullanılmamalıdır.
