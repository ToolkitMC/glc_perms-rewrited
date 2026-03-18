# Katkı Rehberi

GULCE Admin Power projesine katkıda bulunmak istediğiniz için teşekkürler!

## Başlamadan Önce

- Önce mevcut [Issues](../../issues) ve [Pull Requests](../../pulls) sayfalarını kontrol edin, aynı konu zaten ele alınıyor olabilir.
- Büyük değişiklikler için önce bir Issue açın, tartışalım.

## Davranış Kuralları

Bu projeye katkıda bulunan herkes aşağıdaki kurallara uymakla yükümlüdür:

- Saygılı ve yapıcı bir dil kullanın
- Eleştirilerinizi kişiye değil koda yöneltin
- Farklı görüşlere açık olun
- Topluluk üyelerini küçük düşüren, aşağılayan veya taciz eden davranışlar kesinlikle yasaktır
- Bu kuralları ihlal eden katkılar kabul edilmez ve kişi projeden uzaklaştırılabilir

## Pull Request Zorunlulukları

Her PR aşağıdaki koşulları sağlamalıdır:

### Zorunlu
- [ ] Değişiklik açıkça tanımlanmış bir sorunu çözüyor veya belgelenmiş bir özellik ekliyor
- [ ] `$` ile başlayan makro satırlarında `$(key)` olmadan satır **yok**
- [ ] Noktalı makro değişkeni (`$(a.b)`) **yok**
- [ ] `click_event` kullanımında doğru key: `open_url` → `url`, `run_command`/`suggest_command` → `command`
- [ ] Türkçe karakterler doğru yazılmış (ş, ğ, ü, ö, ı, İ vb.)
- [ ] `pack.mcmeta` formatı korunmuş

### İsteğe Bağlı ama Tercih Edilir
- [ ] Yeni fonksiyon varsa `handler/version/migrate.mcfunction` güncellendi
- [ ] Log sistemiyle uyumlu (`custom_admin:log/add` çağrısı eklendi)

## Geliştirme Ortamı

- Minecraft Java Edition 1.21.11
- Pack format: 94
- Test için: `/reload` sonrası `/function custom_admin:flags/status`

## Commit Mesajı Formatı

```
tip: kısa açıklama

Detay (opsiyonel)
```

**Tipler:** `fix`, `feat`, `docs`, `refactor`, `test`

**Örnekler:**
```
fix: schedule/add makro satırındaki boş value hatası giderildi
feat: ekonomi sistemi eklendi
docs: kit kullanım örnekleri README'ye eklendi
```
