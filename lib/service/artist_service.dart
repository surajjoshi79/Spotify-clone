import 'package:spotify_clone/model/artist.dart';
import 'package:spotify_clone/model/music.dart';

class ArtistService {
  static List<Artist> getArtist() {
    return <Artist>[
      Artist(
        name: "Arijit Singh",
        imageUrl:
            "https://imgs.search.brave.com/XtOdQ8wX97ghjEQQyQTwhSkWf73t_dlYhB2LSLeEW-Y/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS9h/cnRpc3RzL0FyaWpp/dF9TaW5naF8wMDRf/MjAyNDExMTgwNjM3/MTdfNTAweDUwMC5q/cGc",
        songs: [
          Music(
            label: "Kesariya",
            description: "Kesariya",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/rqA3WSoYWF6AxJdvrbLwdpamzG6Qm6jxhQCVdLoCKbs/rs:fit:560:320:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vMy8zYy9L/ZXNhcml5YV9zb25n/X2NvdmVyLmpwZw",
            duration: "5:00",
          ),
          Music(
            label: "Tujhe Kitna Chahne Lage",
            description: "Tujhe Kitna Chahne Lage",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/hmZwQQh6bOcpAFbqhHW3mNa39Fyws9qlYFKLR5saoCc/rs:fit:560:320:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vNC80NS9U/dWpoZV9LaXRuYV9D/aGFobmVfTGFnZV9z/b25nLmpwZw",
            duration: "4:00",
          ),
          Music(
            label: "Tum Hi Ho",
            description: "Tum Hi Ho",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/b9310HbwKH6oTNeCv-9qBzLbbtCSFRmbR4fN_IJv2lA/rs:fit:560:320:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vZi9mZi9U/dW1fSGlfSG9fY292/ZXIuanBlZw",
            duration: "4:30",
          ),
          Music(
            label: "Chal Wahan Jaate Hai",
            description: "Chal Wahan Jaate Hai",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/6xGEq8aT6O-_AFLyar_LGmj6HIJaCtYCQitUpRao0P4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZ2VuaXVzLmNv/bS9mMGU3NzM0NjJj/NGI5Mzk1ZGVlYmE4/M2M4ZjEzNjhiOS4z/MDB4MzAweDEucG5n",
            duration: "5:00",
          ),
          Music(
            label: "Yeh fitoor",
            description: "Yeh fitoor",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/1vm7E54BJk4BN4Z_TIT-gkoAVPG92DkmnzdbIiWcO38/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFOazYtMVBlaUwu/anBn",
            duration: "5:00",
          ),
        ],
      ),
      Artist(
        name: "Atif Aslam",
        imageUrl:
            "https://imgs.search.brave.com/OPTtbnt9VwJlyS263U313u9HrEtY-bPDkuFmhN38_aI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQwMDEw/MzkuanBn",
        songs: [
          Music(
            label: "Tu Jaane Na",
            description: "Tu Jaane Na",
            artist: "Atif Aslam",
            imageUrl:
                "https://is5-ssl.mzstatic.com/image/thumb/Music/v4/5f/d8/a3/5fd8a303-cdc9-a402-b658-3f4d13121d92/source/100x100bb.jpg",
            duration: "3:50",
          ),
          Music(
            label: "Pehli Nazar Mein",
            description: "Pehli Nazar Mein",
            artist: "Atif Aslam",
            imageUrl:
                "https://imgs.search.brave.com/HeRAJmfV34jp7fdQplty1I7YxeD2YAsnMMKgjUL7GgQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9hMTAu/Z2FhbmFjZG4uY29t/L2duX2ltZy9hbGJ1/bXMvZHdOMzl5ODNE/UC93TjM5NXJFODNE/L3NpemVfbV8xNzEz/ODgxNjcyLmpwZw",
            duration: "4:25",
          ),
          Music(
            label: "Woh Lamhe Woh Baatein",
            description: "Woh Lamhe Woh Baatein",
            artist: "Atif Aslam",
            imageUrl:
                "https://imgs.search.brave.com/znK8chMT-21EahJcKGOFA87oN26tF7eIgIePFqxudic/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9hMTAu/Z2FhbmFjZG4uY29t/L2duX2ltZy9hbGJ1/bXMva29NV1FCYnFM/RS9vTVdRN1lZYUtx/L3NpemVfbV8xNzEz/NTIwMjI0LmpwZw",
            duration: "4:30",
          ),
          Music(
            label: "Piya O Re Piya",
            description: "Piya O Re Piya",
            artist: "Atif Aslam",
            imageUrl:
                "https://imgs.search.brave.com/iftECOX6R8WNpszylKSZTpqadmBGOpH98W3ocAaMKzg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS85/MDQvVGVyZS1OYWFs/LUxvdmUtSG8tR2F5/YS1IaW5kaS0yMDEx/LTIwMjQwNDA4MjE0/MDI2LTUwMHg1MDAu/anBn",
            duration: "5:00",
          ),
          Music(
            label: "Be Intehaan",
            description: "Be Intehaan",
            artist: "Atif Aslam",
            imageUrl:
                "https://imgs.search.brave.com/7HTxxFjgEvXBBSOvrHk9nv7PPz1X5NG-t3mhFKlonaI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9ibG9n/Z2VyLmdvb2dsZXVz/ZXJjb250ZW50LmNv/bS9pbWcvYi9SMjl2/WjJ4bC9BVnZYc0Vq/VXVhbDNael9aSjA0/LWt4Sjl1YWFkQWNs/aExjWUN0QXVjMDct/czVvTEFITGVpZ21X/VXoxRjZGZGwtVjVM/eFJzRDd1NzNpWHE1/ZDBvRERXNGhWVWYw/a2NjRlRhalB1VzdL/eFFOTFI3Y3E5U2ox/cmhPWFdDbDU1Umxf/dGR1SkRyYTZtUkpY/MXZibTRFVzQvczE2/MDAvcmFjZS0yLnBu/Zw",
            duration: "3:40",
          ),
        ],
      ),
      Artist(
        name: "Sonu Nigam",
        imageUrl:
            "https://imgs.search.brave.com/_tbruQHuSQzFpf-2WV6jsVCoQmA5p1v19ollDeD_IUI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9j/L2NlL1NvbnVfTmln/YW0xMjEuanBn",
        songs: [
          Music(
            label: "Kal Ho Naa Ho",
            description: "Kal Ho Naa Ho",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/5bxOkdNEciGwSe9P7AoaSQgALrgRVuM1pnV3a1yQspU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS85/MDkvS2FsLUhvLU5h/YS1Iby1IaW5kaS0y/MDAzLTUwMHg1MDAu/anBn",
            duration: "4:45",
          ),
          Music(
            label: "Abhi Mujh Mein Kahin",
            description: "Abhi Mujh Mein Kahin",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/EjIKE0KrDe-Ehkw9ngFTuFrxyDvjW8P6GSAklTDp6LY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8z/MTcvQWduZWVwYXRo/LUhpbmRpLTIwMTEt/MjAxOTA2MDMxMzI5/NDEtNTAweDUwMC5q/cGc",
            duration: "4:00",
          ),
          Music(
            label: "Kabhi Alvida Naa Kehna",
            description: "Kabhi Alvida Naa Kehna",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/T0WM6AoCtwNkbqB0bXHYiOPMLUYWASCkB9uT8fcm324/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vNy83ZC9L/YWJoaV9BbHZpZGFf/TmFhX0tlaG5hLmpw/Zw",
            duration: "4:30",
          ),
          Music(
            label: "Suraj Hua Maddham",
            description: "Suraj Hua Maddham",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/KTD8YhpYRvpw9do43sBkK4msIRQMyQYgEmdfjCsxFSY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS83/NzgvS2FiaGktS2h1/c2hpLUthYmhpZS1H/aGFtLUhpbmRpLTIw/MDEtMjAxOTA1MTYx/NTA1MzUtNTAweDUw/MC5qcGc",
            duration: "5:00",
          ),
          Music(
            label: "Main Agar Kahoon",
            description: "Main Agar Kahoon",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/Lgu5Q94nmCHTU9FLzi0Nb035WgMh9HybF-6J0PUUBM0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8x/NzkvT20tU2hhbnRp/LU9tLUhpbmRpLTIw/MDctMjAyNDEyMDUx/NDE3MjQtNTAweDUw/MC5qcGc",
            duration: "5:00",
          ),
        ],
      ),
      Artist(
        name: "Shreya Goshal",
        imageUrl:
            "https://imgs.search.brave.com/6oUBO2U0eP3KHoUMTjBolSIMeZNoas1uVoaDLgke8Us/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudG9paW1nLmNv/bS90aHVtYi9pbWdz/aXplLTIzNDU2LG1z/aWQtNDY5MTkwNzMs/d2lkdGgtNjAwLHJl/c2l6ZW1vZGUtNC80/NjkxOTA3My5qcGc",
        songs: [
          Music(
            label: "Saans",
            description: "Saans",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/UvdnwC54j77AHb6gIsX4i5dInlENHwqYvQG8-wCkpGg/rs:fit:0:180:1:0/g:ce/aHR0cHM6Ly93d3cu/aGluZGlnZWV0bWFs/YS5uZXQvaW1hZ2Vz/L21vdmllXzE2MHgx/MjAvamFiX3Rha19o/YWlfamFhbi5qcGc",
            duration: "5:00",
          ),
          Music(
            label: "Chikni Chameli",
            description: "Chikni Chameli",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/rohdwBA6YHN0mPNKw3FDiMwi_jfQ_Pq9aGQ_QMTPWYo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9hMTAu/Z2FhbmFjZG4uY29t/L2duX2ltZy9hbGJ1/bXMva29NV1E0QjNx/TC9vTVdRMU84V3FM/L3NpemVfbS5qcGc",
            duration: "4:00",
          ),
          Music(
            label: "Tujh Mein Rab Dikhta Hai",
            description: "Tujh Mein Rab Dikhta Hai",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/e9-PepbcMwSG2rMGqcaW8KgTl8NRe2XorgPY2P1H21Q/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8z/NDQvUmFiLU5lLUJh/bmEtRGktSm9kaS1I/aW5kaS0yMDA4LTUw/MHg1MDAuanBn",
            duration: "4:30",
          ),
          Music(
            label: "Dagabaaz Re",
            description: "Dagabaaz Re",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/wpr3Ptwb_pN9LdZdvt-18FD5Qq6YHFv0xDEn12uLehw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS82/NTIvRGFiYW5nZy0y/LUhpbmRpLTIwMTIt/MjAyMjEyMTMwMTI2/MDYtNTAweDUwMC5q/cGc",
            duration: "5:00",
          ),
          Music(
            label: "Bahara",
            description: "Bahara",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/1Hjb0z-HPGjCgG99Atc8uZAtdVYVZphCV8n0ABFfnj4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8y/MDAvSS1IYXRlLUx1/di1TdG9yeXMtSGlu/ZGktMjAxMC0yMDE5/MDYwMzEzNDcwNS01/MDB4NTAwLmpwZw",
            duration: "5:00",
          ),
        ],
      ),
      Artist(
        name: "Anuv Jain",
        imageUrl:
            "https://imgs.search.brave.com/LU0HQnDLlwLtzu3JsbamqLIr5nhH3LJLpCM_NX4BmM8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvOTI4/Nzc3NS5qcGc",
        songs: [
          Music(
            label: "Baarishein",
            description: "Baarishein",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/4ALg-m0jMInjIWtCvKfcnZiH-5LcpZxlnE-xZcBap0s/rs:fit:560:320:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vNi82MC9C/YWFyaXNoZWluLmpw/Zw",
            duration: "5:00",
          ),
          Music(
            label: "Husn",
            description: "Husn",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/Dfpb7QXBMjF8PxdRWjebfj2CYvInFW4LDaJvT2IKVrA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk1qWXdNR0Uw/T0RNdE56WXpZUzAw/TVdNeExUZ3pORFF0/WWpkbU0ySTRNVEF5/TUdSaFhrRXlYa0Zx/Y0djQC5qcGc",
            duration: "4:00",
          ),
          Music(
            label: "Gul",
            description: "Gul",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/5fiU38bYw2LQtQ0U9oDsw1QlE6OaOFQ2IsdI-_u-TPA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLTQ5WTBi/Rkpxcm05OVZxdXot/TTBMMWVRLXQxMDgw/eDEwODAuanBn",
            duration: "4:30",
          ),
          Music(
            label: "Jo Tum Mere Ho",
            description: "Jo Tum Mere Ho",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/aKC9qoI8rKoq4YgwuExr_el-Vp4kPv10Uw_zM7j3svs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aWx5cmljc2h1Yi5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MjQvMDcvam8tdHVt/LW1lcmUtaG8tYW51/di1qYWluLmpwZw",
            duration: "5:00",
          ),
          Music(
            label: "Alag Aasmaan",
            description: "Alag Aasmaan",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/kYL9FptgoOqYGSKDQ_pdrjiodZnWt73iihiqEY1SXcM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20veXRpbWcu/Z29vZ2xldXNlcmNv/bnRlbnQuY29tL3Zp/L3ZBODZRRnJYb2hv/L21xZGVmYXVsdC5q/cGc_cmVzaXplPTU2/LDU2",
            duration: "5:00",
          ),
        ],
      ),
    ];
  }
}
