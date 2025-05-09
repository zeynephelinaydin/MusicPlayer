# 🎵 MusicPlayer – iOS Müzik Çalar Uygulaması

Bu proje, Swift ve **Storyboard** kullanılarak geliştirilen tam işlevsel bir müzik çalar uygulamasıdır. Uygulama, kullanıcıların cihaz üzerinde bulunan müzikleri dinlemesini sağlar. Arayüz, modern iOS kullanıcı deneyimi göz önünde bulundurularak hazırlanmıştır. Tüm oynatma kontrolleri, albüm görselleri ve detaylar sunulmaktadır.

---

## 🧠 Özellikler

- 🎶 Yerel `.mp3` dosyalarını çalabilme  
- ⏯ Oynat / Duraklat / İleri / Geri sarma  
- 🔁 Shuffle (karışık çalma) modu  
- 🔊 Ses seviyesi kontrolü (slider)  
- 🎵 Şarkı adı, sanatçı adı, albüm adı gösterimi  
- 🖼 Albüm kapağı görselleri  
- 📱 iPhone simülatörlerinde tam uyum (Storyboard ile responsive)

---

## 📂 Proje Yapısı


```
MusicPlayer/
├── AppDelegate.swift             # Uygulama yaşam döngüsü yönetimi
├── SceneDelegate.swift           # Çoklu pencere (scene) yönetimi
├── PlayerViewController.swift    # Müzik çalıcı arayüz kontrolü
├── ViewController.swift          # Şarkı listesi ana ekranı
├── songs.json                    # Şarkı metadata (isim/sanatçı/albüm bilgileri)
├── Assets.xcassets/              # Albüm kapakları ve uygulama asset'leri
│   └── AlbumCovers/              # Örnek: cover1.png, cover2.jpg...
├── Main.storyboard               # Tüm UI bileşenlerinin tasarım dosyası
└── AudioFiles/                   # Müzik dosyaları (Opsiyonel: Bundle içi organizasyon)
    ├── parca1.mp3
    ├── parca2.mp3
    ...
    └── parca15.mp3
```

---

## 🛠 Kullanılan Teknolojiler

- ✅ **Swift**
- ✅ **Storyboard (UIKit)**
- ✅ **AVFoundation** (müzik çalma için)
- ✅ **Auto Layout** (görsel düzen)


---

## 🎨 Arayüz Öğeleri

- 🎵 `UILabel` → Şarkı adı, sanatçı adı, albüm adı
- 🎧 `UIButton` → Play / Pause / Next / Previous / Shuffle
- 🔊 `UISlider` → Ses seviyesi
- 🖼 `UIImageView` → Albüm kapağı
- 📍 `UITableView` → Şarkı listesi
- 🧱 Storyboard üzerinden AutoLayout destekli tasarım

---

## 📱 Uygulama Görselleri

<img width="403" alt="Ekran Resmi 2025-05-09 17 25 47" src="https://github.com/user-attachments/assets/39343158-8b38-4ce3-96b7-936178b3d7ab" />
<img width="403" alt="Ekran Resmi 2025-05-09 17 26 03" src="https://github.com/user-attachments/assets/8008a984-fec9-421c-a345-0d869e301465" />




