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

## 🛠 Kullanılan Teknolojiler

- ✅ **Swift**
- ✅ **Storyboard (UIKit)**
- ✅ **AVFoundation** (müzik çalma için)
- ✅ **Auto Layout** (görsel düzen)

---

## 📂 Proje Yapısı

📁 MusicPlayer
├── AppDelegate.swift
├── SceneDelegate.swift
├── PlayerViewController.swift
├── ViewController.swift
├── songs.json
├── Assets.xcassets/ → Albüm kapak görselleri
├── Main.storyboard → Storyboard üzerinden UI yönetimi
└── parca1...parca15.mp3 → Yerel müzik dosyaları


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

<div style="display: flex; justify-content: space-between; gap: 10px;">

  <img src="https://github.com/zeynephelinaydin/MusicPlayer/assets/your-id-1" width="48%" alt="Ana Liste Görünümü"/>
  
  <img src="https://github.com/zeynephelinaydin/MusicPlayer/assets/your-id-2" width="48%" alt="Şarkı Oynatma Ekranı"/>

</div>


