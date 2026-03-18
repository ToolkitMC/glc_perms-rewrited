## Değişiklik Açıklaması

Bu PR ne yapıyor?

## Bağlantılı Issue

Fixes #

## Değişiklik Türü

- [ ] Bug fix
- [ ] Yeni özellik
- [ ] Refactor
- [ ] Dokümantasyon

## Kontrol Listesi

### Zorunlu
- [ ] `$` ile başlayan makro satırlarında `$(key)` olmadan satır yok
- [ ] Noktalı makro değişkeni (`$(a.b)`) yok
- [ ] `click_event` doğru key ile kullanılmış (`open_url` → `url`, `run_command`/`suggest_command` → `command`)
- [ ] Dialog'da makro/input çakışması yok (`$` olmayan satırda dialog input key'leri güvenli)
- [ ] Türkçe karakterler doğru (ş, ğ, ü, ö, ı, İ vb.)
- [ ] `/reload` sonrası test edildi
- [ ] `pack.mcmeta` formatı korunmuş

### Önerilen
- [ ] Yeni fonksiyon varsa `handler/version/migrate.mcfunction` güncellendi
- [ ] Log sistemiyle uyumlu
- [ ] CONTRIBUTING.md okundu ve uyuluyor
