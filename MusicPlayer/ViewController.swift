//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Zeynep Helin Aydın on 30.04.2025.
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    var songs = [Song]() // Boş bir Song dizisi oluşturuldu

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSongsFromJSON()
        table.delegate = self
        table.dataSource = self
    }
    
    func loadSongsFromJSON() {
        guard let path = Bundle.main.path(forResource: "songs", ofType: "json") else {
            print("JSON dosyası bulunamadı")
            return
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let decodedSongs = try JSONDecoder().decode([Song].self, from: data)
            self.songs = decodedSongs
        } catch {
            print("JSON yükleme hatası: \(error.localizedDescription)")
        }
    }
    
    // TableView fonksiyonları
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Hücreyi dequeue etmek
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Şarkıyı al
        let song = songs[indexPath.row]
        
        // Metinleri ata
        cell.textLabel?.text = song.name
        cell.detailTextLabel?.text = song.albumName
        cell.accessoryType = .disclosureIndicator

        // Görseli sabit boyutta ayarla (örnek: 80x80)
        let imageSize = CGSize(width: 80, height: 80)
        if let image = UIImage(named: song.imageName) {
            UIGraphicsBeginImageContextWithOptions(imageSize, false, 0.0)
            image.draw(in: CGRect(origin: .zero, size: imageSize))
            let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            cell.imageView?.image = resizedImage
        }

        // Yazı fontları
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
        cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 16)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Şarkı çalar sayfasını aç
        let position = indexPath.row
        
        // Şarkı bilgilerini oyuncuya iletmek için kullanabilirsiniz
        guard let vc = storyboard?.instantiateViewController(identifier: "player") as? PlayerViewController else {
            return
        }
        
        vc.songs = songs
        vc.position = position
        
        present(vc, animated: true)
    }
}

// Şarkı yapısı - Codable protokolünü ekledik
struct Song: Codable {
    let name: String
    let albumName: String
    let singerName: String
    let imageName: String
    let trackName: String
}
