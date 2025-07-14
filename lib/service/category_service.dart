import 'package:spotify_clone/model/music.dart';

import '../model/category.dart';

class CategoryService {
  static List<Category> getCategory() {
    return <Category>[
      Category(
        title: "Top hits",
        imageUrl:
            "https://imgs.search.brave.com/Za9o6N1IinfDGikq-6dbC4k6WPxYmkCy5_cdy1wpbqg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9yb3V0/ZW5vdGUuY29tL2Js/b2cvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjQvMDUvMS4tVG9k/YXlzLVRvcC1IaXRz/LmpwZWc",
        music: 
          [
            Music(
                label: "Sapphire",
                description: "Sapphire - Ed Sheeran",
                imageUrl: "https://imgs.search.brave.com/4Lu7dTTlXfZNqnqEZtfkkS5ih4EvZcdDCnOpzBV05X0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/NC80MC9FZF9TaGVl/cmFuXy1fU2FwcGhp/cmUucG5nLzI1MHB4/LUVkX1NoZWVyYW5f/LV9TYXBwaGlyZS5w/bmc",
                artist: "Ed Sheeran",
                duration: "3:45"
            ),
            Music(
                label: "Agar tum saath ho",
                description: "Tamasha",
                imageUrl: "https://imgs.search.brave.com/D1TNVZVf3AA7TPdyaApecz16k5GMvScysZZYcKzdIZA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS85/OTQvVGFtYXNoYS1I/aW5kaS0yMDE1LTUw/MHg1MDAuanBn",
                artist: "Alka Yagnik and Arijit Singh",
                duration: "5:10"
            ),
            Music(
                label: "Tum se",
                description: "Tum se",
                imageUrl: "https://imgs.search.brave.com/GRgtgLxITgtiOmUllq_OFqMx9th3QLeZtbgzd7vGHlU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXRTVFl2/dGUzbVlkYXJSM3ct/ZGtveHZRLXQxMDgw/eDEwODAuanBn",
                artist: "Sachin-Jigar",
                duration: "4:45"
            ),
            Music(
                label: "Big Dawgs",
                description: "Big Dawgs - HanumanKind",
                imageUrl: "https://imgs.search.brave.com/iHEFxT6YM_1OHt1dzIXgKimDwgBEBZA2H3pRdDTWrGI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXoxTVZh/TVljRXM2YTE3TWot/emp5YmRnLXQxMDgw/eDEwODAuanBn",
                artist: "HanumanKind",
                duration: "3:40"
            ),
            Music(
                label: "I love you",
                description: "Bodyguard",
                imageUrl: "https://imgs.search.brave.com/14_iLb-Pct4K7fmV-ehbCFNG5yzJ0vAZY47LiK4PPDw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS83/MjIvQm9keWd1YXJk/LUhpbmRpLTIwMTEt/MjAyMjEyMTEyMTEy/MzYtNTAweDUwMC5q/cGc",
                artist: "Ash King",
                duration: "4:15"
            ),
          ]
      ),
      Category(
        title: "Trending hits",
        imageUrl:
            "https://imgs.search.brave.com/ljjZT751nXBAyCyC4nV9e4ZavqaP5zP6qOixLJ-oGog/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wbGF5/Lmxpc3Ruci5jb20v/X25leHQvaW1hZ2U_/dXJsPWh0dHBzOi8v/aW1hZ2VzLmN0ZmFz/c2V0cy5uZXQveXhn/N2x5ZGZqNnRjLzZa/aVZkeFJMeHRBTFFz/N3NkdGFpZUYvOTkz/Zjc1MGMxNjQzMjQ3/ZDFlYmY1MDRlZTBl/MmMyNjYvTGlTVE5S/LVNxdWFyZS1UaWxl/XzMwMDB4MzAwMF9U/UkVORElOR19OT1cu/anBnP3c9MzIwJmg9/MzIwJmZpdD1maWxs/Jnc9NjQwJnE9NzU",
          music:
          [
            Music(
                label: "Sapphire",
                description: "Sapphire - Ed Sheeran",
                imageUrl: "https://imgs.search.brave.com/4Lu7dTTlXfZNqnqEZtfkkS5ih4EvZcdDCnOpzBV05X0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/NC80MC9FZF9TaGVl/cmFuXy1fU2FwcGhp/cmUucG5nLzI1MHB4/LUVkX1NoZWVyYW5f/LV9TYXBwaGlyZS5w/bmc",
                artist: "Ed Sheeran",
                duration: "3:45"
            ),
            Music(
                label: "Butter",
                description: "Butter - BTS",
                imageUrl: "https://imgs.search.brave.com/ahXPf2r1ggk2oczOLG8ArRU5ymAdtE3EFzrWWyRd4ao/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvYnRz/LWJ1dHRlci0xMDMy/LXgtMTM3Ni1waWN0/dXJlLXJsdmtobGNx/MWpzODV1bHcuanBn",
                artist: "BTS",
                duration: "5:10"
            ),
            Music(
                label: "Tum se",
                description: "Tum se",
                imageUrl: "https://imgs.search.brave.com/GRgtgLxITgtiOmUllq_OFqMx9th3QLeZtbgzd7vGHlU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXRTVFl2/dGUzbVlkYXJSM3ct/ZGtveHZRLXQxMDgw/eDEwODAuanBn",
                artist: "Sachin-Jigar",
                duration: "4:45"
            ),
            Music(
                label: "Run it up",
                description: "Run it up - HanumanKind",
                imageUrl: "https://imgs.search.brave.com/glwdgkyEzSgeWP2KQpYdtOTdDrMy0L2FAhTnZijTPTE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLW00Z2Rh/R1NFdzQzdy0wLXQx/MDgweDEwODAuanBn",
                artist: "HanumanKind",
                duration: "3:40"
            ),
            Music(
                label: "Lover",
                description: "Taylor Swift",
                imageUrl: "https://imgs.search.brave.com/x6Vup1IirLyW796XR-Wv0eMDBJeDiP_M1_4PnWWgxc4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/Yy9jZC9UYXlsb3Jf/U3dpZnRfLV9Mb3Zl/ci5wbmcvMjUwcHgt/VGF5bG9yX1N3aWZ0/Xy1fTG92ZXIucG5n",
                artist: "Taylor Swift",
                duration: "4:15"
            ),
          ]
      ),
      Category(
        title: "Rap hits",
        imageUrl:
            "https://imgs.search.brave.com/a_jAx84T8KhPX73xGgxqnQZOSHg50VLdyQQrPBQMLQY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdXBw/b3J0Lm11c2ljZ2F0/ZXdheS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjMvMDMv/QmVzdC1vZi1SYXAu/anBn",
          music:
          [
            Music(
                label: "Sapphire",
                description: "Sapphire - Ed Sheeran",
                imageUrl: "https://imgs.search.brave.com/4Lu7dTTlXfZNqnqEZtfkkS5ih4EvZcdDCnOpzBV05X0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/NC80MC9FZF9TaGVl/cmFuXy1fU2FwcGhp/cmUucG5nLzI1MHB4/LUVkX1NoZWVyYW5f/LV9TYXBwaGlyZS5w/bmc",
                artist: "Ed Sheeran",
                duration: "3:45"
            ),
            Music(
                label: "Run it up",
                description: "Run it up - HanumanKind",
                imageUrl: "https://imgs.search.brave.com/glwdgkyEzSgeWP2KQpYdtOTdDrMy0L2FAhTnZijTPTE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLW00Z2Rh/R1NFdzQzdy0wLXQx/MDgweDEwODAuanBn",
                artist: "HanumanKind",
                duration: "3:40"
            ),
            Music(
                label: "Khatta Flow",
                description: "Khatta Flow",
                imageUrl: "https://imgs.search.brave.com/ms34JxjsOx5G2vMPY25vgEOGTx_cQNNfnGWaUXfL1Hg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXlOTmMy/bnl1eUlDdTJmcGkt/RVNLZmN3LXQxMDgw/eDEwODAuanBn",
                artist: "Kr\$na",
                duration: "4:45"
            ),
            Music(
                label: "Big Dawgs",
                description: "Big Dawgs - HanumanKind",
                imageUrl: "https://imgs.search.brave.com/iHEFxT6YM_1OHt1dzIXgKimDwgBEBZA2H3pRdDTWrGI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXoxTVZh/TVljRXM2YTE3TWot/emp5YmRnLXQxMDgw/eDEwODAuanBn",
                artist: "HanumanKind",
                duration: "3:40"
            ),
            Music(
                label: "Up to you",
                description: "Up to you",
                imageUrl: "https://imgs.search.brave.com/WU5gpcju8YqNHiVT7aMTzvjNpzSBAvMOmSAn-_fOBco/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS82/NDAvVXAtVG8tVS1I/YXJ5YW52aS0yMDIz/LTIwMjMwNTA5MjMy/NjI1LTUwMHg1MDAu/anBn",
                artist: "Dhanda Nyoliwala",
                duration: "4:15"
            ),
          ]
      ),
      Category(
        title: "Pop hits",
        imageUrl:
            "https://imgs.search.brave.com/I9wXoD_tsjVBUV7hkcS4dz-q1budW5vtPuAgyM8tuSY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2UyLzUz/LzU1L2UyNTM1NTk2/ODZkYWE4YjBmMDM4/Nzc5MmRlYmU1NDg2/LmpwZw",
          music:
          [
            Music(
                label: "Up to you",
                description: "Up to you",
                imageUrl: "https://imgs.search.brave.com/WU5gpcju8YqNHiVT7aMTzvjNpzSBAvMOmSAn-_fOBco/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS82/NDAvVXAtVG8tVS1I/YXJ5YW52aS0yMDIz/LTIwMjMwNTA5MjMy/NjI1LTUwMHg1MDAu/anBn",
                artist: "Dhanda Nyoliwala",
                duration: "4:15"
            ),
            Music(
                label: "Khatta Flow",
                description: "Khatta Flow",
                imageUrl: "https://imgs.search.brave.com/ms34JxjsOx5G2vMPY25vgEOGTx_cQNNfnGWaUXfL1Hg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXlOTmMy/bnl1eUlDdTJmcGkt/RVNLZmN3LXQxMDgw/eDEwODAuanBn",
                artist: "Kr\$na",
                duration: "4:45"
            ),
            Music(
                label: "Desi kalakaar",
                description: "Desi kalakaar",
                imageUrl: "https://imgs.search.brave.com/N-g0A0EuFPcBuTM25bGAEWYuZ3VfGVGWuY9pKIxGFQk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZ2VuaXVzLmNv/bS80YzNhNTQzMzFk/ZTVkMWMwNTE5MTVh/ZGI2NjJhNjBlNy42/MDB4NjAweDEuanBn",
                artist: "Yo yo honey singh",
                duration: "4:45"
            ),
            Music(
                label: "Big Dawgs",
                description: "Big Dawgs - HanumanKind",
                imageUrl: "https://imgs.search.brave.com/iHEFxT6YM_1OHt1dzIXgKimDwgBEBZA2H3pRdDTWrGI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXoxTVZh/TVljRXM2YTE3TWot/emp5YmRnLXQxMDgw/eDEwODAuanBn",
                artist: "HanumanKind",
                duration: "3:40"
            ),
            Music(
                label: "Lover",
                description: "Lover - Diljit Dosanjh",
                imageUrl: "https://imgs.search.brave.com/T8DuTkACyRd6SWZ8_Aa4tGXWpGP1elqbh4zNPCFBcMc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLVpOQzls/Q3dxazdmUGVROHMt/WkdWZkFBLXQxMDgw/eDEwODAucG5n",
                artist: "Diljit Dosanjh",
                duration: "4:15"
            ),
          ]
      ),
      Category(
        title: "Romantic hits",
        imageUrl:
            "https://imgs.search.brave.com/K_PLhc4cII8hFoZ8F2Zpj_p7j5kBR3qouV1qAgyoBuY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjEyLTVka0xOM0wu/anBn",
          music:
          [
            Music(
                label: "Sapphire",
                description: "Sapphire - Ed Sheeran",
                imageUrl: "https://imgs.search.brave.com/4Lu7dTTlXfZNqnqEZtfkkS5ih4EvZcdDCnOpzBV05X0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/NC80MC9FZF9TaGVl/cmFuXy1fU2FwcGhp/cmUucG5nLzI1MHB4/LUVkX1NoZWVyYW5f/LV9TYXBwaGlyZS5w/bmc",
                artist: "Ed Sheeran",
                duration: "3:45"
            ),
            Music(
                label: "Agar tum saath ho",
                description: "Tamasha",
                imageUrl: "https://imgs.search.brave.com/D1TNVZVf3AA7TPdyaApecz16k5GMvScysZZYcKzdIZA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS85/OTQvVGFtYXNoYS1I/aW5kaS0yMDE1LTUw/MHg1MDAuanBn",
                artist: "Alka Yagnik and Arijit Singh",
                duration: "5:10"
            ),
            Music(
                label: "Tum se",
                description: "Tum se",
                imageUrl: "https://imgs.search.brave.com/GRgtgLxITgtiOmUllq_OFqMx9th3QLeZtbgzd7vGHlU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXRTVFl2/dGUzbVlkYXJSM3ct/ZGtveHZRLXQxMDgw/eDEwODAuanBn",
                artist: "Sachin-Jigar",
                duration: "4:45"
            ),
            Music(
                label: "Lover",
                description: "Taylor Swift",
                imageUrl: "https://imgs.search.brave.com/x6Vup1IirLyW796XR-Wv0eMDBJeDiP_M1_4PnWWgxc4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/Yy9jZC9UYXlsb3Jf/U3dpZnRfLV9Mb3Zl/ci5wbmcvMjUwcHgt/VGF5bG9yX1N3aWZ0/Xy1fTG92ZXIucG5n",
                artist: "Taylor Swift",
                duration: "4:15"
            ),
            Music(
                label: "Perfect",
                description: "Ed Sheeran",
                imageUrl: "https://imgs.search.brave.com/Q09D8o9FVbZ-iZfi6AafzTQXUtZbca5B_vZ1oCzmfFE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/OS85My9FZF9TaGVl/cmFuXyZfQW5kcmVh/X0JvY2VsbGlfLV9Q/ZXJmZWN0X1N5bXBo/b255LmpwZy8yNTBw/eC1FZF9TaGVlcmFu/XyZfQW5kcmVhX0Jv/Y2VsbGlfLV9QZXJm/ZWN0X1N5bXBob255/LmpwZw",
                artist: "Ed Sheeran",
                duration: "4:15"
            ),
          ]
      ),
      Category(
        title: "Rock hits",
        imageUrl:
            "https://imgs.search.brave.com/Il4PEfOtsQC1jk2qdfo9YZ9zc0mjquIGkFQROiXTU80/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9ldS1j/ZW50cmFsLTEtc2hh/cmVkLWV1YzEtMDIu/Z3JhcGhhc3NldHMu/Y29tL0FWVVN1RDJh/d1NnNnk2UkZ5c0pU/WnovcmVzaXplPXdp/ZHRoOjMwMCxoZWln/aHQ6MzAwL3dBaFRn/OENqUjZTTDNEYk9i/WU9J",
          music:
          [
            Music(
                label: "RadioActive",
                description: "RadioActive - Imagine dragon",
                imageUrl: "https://imgs.search.brave.com/DdaIBDxuSGzLmoOd5jWWkDGcRcoJc4uwx3i94Q6G8CY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vbXVzaWN0/cmFqZWN0b3J5LmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAx/My8wMS9pbWFnaW5l/LWRyYWdvbnMtbmln/aHQtdmlzaW9ucy1h/bGJ1bS1jb3Zlci02/NDB4NjQwLmpwZz9y/ZXNpemU9NjQwLDY0/MA",
                artist: "Imagine dragon",
                duration: "3:45"
            ),
            Music(
                label: "Search",
                description: "Search - NF",
                imageUrl: "https://imgs.search.brave.com/_j00_MczVoZtyDKhCoM9hqfOo47vkbYBdspThUlZqaE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLnJl/ZGQuaXQvZzV0YWZu/eTB3emljMS5qcGVn",
                artist: "NF",
                duration: "5:10"
            ),
            Music(
                label: "Not like us",
                description: "Kendrick Lamar",
                imageUrl: "https://imgs.search.brave.com/VUtOnHFfCdYmYzlol6cre78Fc8ez0TPYr3lNCyB8EKA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/bm90LWxpa2UtdXMt/aXMtb2ZmaWNpYWxs/eS1zcG90aWZ5cy1t/b3N0LXN0cmVhbWVk/LXJhcC1zb25nLXYw/LW10ZHE4azJ4enk0/ZTEucG5nP3dpZHRo/PTEwODAmZm9ybWF0/PXBuZyZhdXRvPXdl/YnAmcz0wZGEwNTgx/OWY1ZDgyY2QwZmI0/YTI1NmM1MzMxNDY0/ODMxN2MyNmEy",
                artist: "Kendrick Lamar",
                duration: "4:45"
            ),
            Music(
                label: "Big Dawgs",
                description: "Big Dawgs - HanumanKind",
                imageUrl: "https://imgs.search.brave.com/iHEFxT6YM_1OHt1dzIXgKimDwgBEBZA2H3pRdDTWrGI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLXoxTVZh/TVljRXM2YTE3TWot/emp5YmRnLXQxMDgw/eDEwODAuanBn",
                artist: "HanumanKind",
                duration: "3:40"
            ),
            Music(
                label: "Triple Og",
                description: "Divine",
                imageUrl: "https://imgs.search.brave.com/CmzozyHyddqLpXVBWhx452tO5h6CFIaYJkSEdeciQMw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9leHRl/cm5hbC1wcmV2aWV3/LnJlZGQuaXQvZGl2/aW5lLXRyaXBsZS1v/Zy12MC1pbEhjTUhS/dlJKb25nR2lUeThC/ZmZxMm1DQThYTHht/NDR6N2gyRnFIRERn/LmpwZz9hdXRvPXdl/YnAmcz0zNTVlZGYy/MjI5MDZhYjkxOWMz/MjA4ZTQ4ZWQ5ZjY5/NWM5M2RmNTc2",
                artist: "Divine",
                duration: "4:15"
            ),
          ]
      ),
    ];
  }
}
