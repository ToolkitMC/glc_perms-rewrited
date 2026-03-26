# GULCE Admin Power v1.0.2

**Pack Format:** 61 (Minecraft 1.21.4)  
**Desteklenen Formatlar:** 48–61

İzin, grup ve eylem yönetimini tek pakette birleştiren makro tabanlı admin sistemi.

---

## Kurulum

ZIP'i dünya klasörünüzün `datapacks/` dizinine kopyalayın.  
Sunucuya ilk kez ekledikten sonra: `/reload`

Menüyü açmak için `gulce_admin` etiketiniz olması gerekir.

---

## Menüler

| Tetikleyici | Menü |
|---|---|
| `/trigger gulce_trigger set 1` | Ana Menü |
| `/trigger gulce_trigger set 2` | İzin Yönetimi |
| `/trigger gulce_trigger set 3` | Yardım |
| `/trigger gulce_trigger set 4` | Hakkında |
| `/trigger gulce_trigger set 5` | Grup Yönetimi |
| `/trigger gulce_trigger set 6` | Eylem Yönetimi |

---

## İzin Sistemi

```
# İzin ekle
/function custom_admin:add/permission {id:"p1",player:"OyuncuAdı",permission:"admin",level:1}

# İzin sil
/function custom_admin:remove/permission {id:"p1"}

# İzin seviyesi değiştir
/function custom_admin:edit/permission_level {id:"p1",level:2}

# Listele
/function custom_admin:list/permissions
```

---

## Grup Sistemi

```
# Grup oluştur
/function custom_admin:group/create {id:"mod",name:"Moderatör",level:1}

# Grup adı değiştir
/function custom_admin:edit/name {id:"mod",name:"YeniAd"}

# Gruba oyuncu ekle/çıkar
/function custom_admin:group/add_player {group:"mod",player:"OyuncuAdı"}
/function custom_admin:group/remove_player {group:"mod",player:"OyuncuAdı"}

# Gruba izin ekle/kaldır
/function custom_admin:group/add_permission {group:"mod",permission:"build"}
/function custom_admin:group/remove_permission {group:"mod",permission:"build"}

# Grubu sil
/function custom_admin:group/delete {id:"mod"}

# Listele
/function custom_admin:list/groups
```

---

## Eylem Sistemi

Tüm eylemler storage'da saklanır ve `/function custom_admin:execute/action {id:"..."}` ile çalıştırılır.

### Eylem Tipleri

| Tip | Örnek |
|---|---|
| `message` | `/function custom_admin:add/action_message {id:"hg",text:"Hoşgeldin!",player:"@s"}` |
| `sound` | `/function custom_admin:add/action_sound {id:"ses1",sound:"entity.player.levelup",volume:"1",pitch:"1",player:"@s"}` |
| `title` | `/function custom_admin:add/action_title {id:"bas1",text:"Ana Başlık",subtitle:"Alt Başlık",player:"@s"}` |
| `effect` | `/function custom_admin:add/action_effect {id:"eft1",effect:"speed",duration:100,amplifier:1,player:"@s"}` |
| `give` | `/function custom_admin:add/action_give {id:"esya1",item:"minecraft:diamond",count:1,player:"@s"}` |
| `clear` | `/function custom_admin:add/action_clear {id:"tmz1",item:"minecraft:dirt",count:1,player:"@s"}` |
| `teleport` | `/function custom_admin:add/action_teleport {id:"tp1",x:"0",y:"64",z:"0",player:"@s"}` |
| `gamemode` | `/function custom_admin:add/action_gamemode {id:"gm1",mode:"creative",player:"@s"}` |
| `command` | `/function custom_admin:add/action_command {id:"cmd1",command:"say Merhaba",player:"@s"}` |
| `function` | `/function custom_admin:add/action_function {id:"fn1",function:"namespace:path",player:"@s"}` |
| `particle` | `/function custom_admin:add/action_particle {id:"ptcl1",particle:"minecraft:flame",x:"0",y:"64",z:"0",player:"@s"}` |
| `summon` | `/function custom_admin:add/action_summon {id:"sm1",entity:"minecraft:zombie",x:"0",y:"64",z:"0",player:"@s"}` |
| `multi` | Aşağıya bkz. |

### Çoklu Eylem (multi)

```
/function custom_admin:add/action_multi {id:"multi1",player:"@s",steps:[{type:"message",params:{text:"Hoşgeldin!"}},{type:"sound",params:{sound:"entity.player.levelup",volume:"1",pitch:"1"}}]}
```

`steps` içindeki her adım sırayla çalışır. `player` belirtilmezse üst `multi`'nin hedefini miras alır.

### Eylem Düzenleme

```
# Tip değiştir
/function custom_admin:edit/action {id:"hg",type:"sound"}

# Parametre güncelle
/function custom_admin:edit/params {id:"hg",params:{sound:"entity.player.levelup",volume:"1",pitch:"1"}}

# Hedef oyuncu değiştir
/function custom_admin:edit/player {id:"hg",player:"@a"}

# Eylem sil
/function custom_admin:remove/action {id:"hg"}

# Listele
/function custom_admin:list/actions
```

### Eylem Çalıştır

```
/function custom_admin:execute/action {id:"hg"}
```

---

## Admin Yönetimi

```
# Admin ekle (etiketi ver + kafasını ver)
/function custom_admin:add/player {name:"OyuncuAdı"}

# Admin kaldır
/function custom_admin:remove/player {name:"OyuncuAdı"}
```

---

## Depolama Şeması

```
mc:handler data {
  loaded: 1b,
  meta: [{version:"1.2.0", pack:"GULCE Admin Power"}],
  permissions: [{id, player, permission, level}],
  groups: [{id, name, level, members:[], permissions:[]}],
  actions: [{id, type, params:{...}, player}]
}
```

Geçici işlem verisi `mc:_ temp` üzerinde tutulur; çoklu eylem kuyruğu `mc:_ multi` üzerinde çalışır.
