import 'package:spotify_clone/model/music.dart';

class MusicService {
  static List<Music> getMusic() {
    return <Music>[
      Music(
        label: "Raanjhan",
        description: "Do patti romantic song",
        imageUrl:
            "https://imgs.search.brave.com/KHfdSjEe9DgdPNtmvtX6js__0TYjLmxc3HbX3usmSJo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jaGFy/dHMtc3RhdGljLmJp/bGxib2FyZC5jb20v/aW1nLzIwMjQvMTEv/cGFyYW1wYXJhdGFu/ZG9uLTAwMC1yYWFu/amhhbmZyb21kb3Bh/dHRpLWRscC0xODB4/MTgwLmpwZw",
        artist: "Singer",
        duration: "3:40"
      ),
      Music(
        label: "Tu hi hai",
        description: "Half girlfriend",
        imageUrl:
            "https://imgs.search.brave.com/KHfdSjEe9DgdPNtmvtX6js__0TYjLmxc3HbX3usmSJo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jaGFy/dHMtc3RhdGljLmJp/bGxib2FyZC5jb20v/aW1nLzIwMjQvMTEv/cGFyYW1wYXJhdGFu/ZG9uLTAwMC1yYWFu/amhhbmZyb21kb3Bh/dHRpLWRscC0xODB4/MTgwLmpwZw",
        artist: "Singer",
        duration: "4:30"
      ),
      Music(
        label: "Saiyaara",
        description: "Romantic song",
        imageUrl:
            "https://imgs.search.brave.com/zKnFub83mB_mQXQyr7hHh78CVsy1Nbn9XmaRuKcZAn8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YTUuYm9sbHl3b29k/aHVuZ2FtYS5pbi93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyNS8w/NS9TYWl5YWFyYS0y/LTEtMTY1eDIxMi5q/cGc",
        artist: "Singer",
        duration: "5:00"
      ),
      Music(
        label: "Maalik",
        description: "Maalik",
        imageUrl:
            "https://imgs.search.brave.com/zeNrS2TmSft48xOkz04j-8pt49RJ3n3dTUBFNbhDVcY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YTUuYm9sbHl3b29k/aHVuZ2FtYS5pbi93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyNS8w/Ny9NYWFsaWs0Ny0z/NDZ4MjYwLmpwZw",
        artist: "Singer",
        duration: "3:45"
      ),
    ];
  }
}
