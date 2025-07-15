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

            audioUrl:
                "https://aac.saavncdn.com/871/c2febd353f3a076a406fa37510f31f9f_160.mp4",
          ),
          Music(
            label: "Tujhe Kitna Chahne Lage",
            description: "Tujhe Kitna Chahne Lage",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/hmZwQQh6bOcpAFbqhHW3mNa39Fyws9qlYFKLR5saoCc/rs:fit:560:320:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vNC80NS9U/dWpoZV9LaXRuYV9D/aGFobmVfTGFnZV9z/b25nLmpwZw",

            audioUrl:
                "https://aac.saavncdn.com/807/bda6cd88c18ee0d75854146145922bcc_160.mp4",
          ),
          Music(
            label: "Tum Hi Ho",
            description: "Tum Hi Ho",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/b9310HbwKH6oTNeCv-9qBzLbbtCSFRmbR4fN_IJv2lA/rs:fit:560:320:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vZi9mZi9U/dW1fSGlfSG9fY292/ZXIuanBlZw",

            audioUrl:
                "https://aac.saavncdn.com/430/5c5ea5cc00e3bff45616013226f376fe_160.mp4",
          ),
          Music(
            label: "Chal Wahan Jaate Hai",
            description: "Chal Wahan Jaate Hai",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/6xGEq8aT6O-_AFLyar_LGmj6HIJaCtYCQitUpRao0P4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZ2VuaXVzLmNv/bS9mMGU3NzM0NjJj/NGI5Mzk1ZGVlYmE4/M2M4ZjEzNjhiOS4z/MDB4MzAweDEucG5n",

            audioUrl:
                "https://aac.saavncdn.com/119/c12ffa2f68c31b7244034cfc641a2143_160.mp4",
          ),
          Music(
            label: "Yeh fitoor",
            description: "Yeh fitoor",
            artist: "Arijit Singh",
            imageUrl:
                "https://imgs.search.brave.com/1vm7E54BJk4BN4Z_TIT-gkoAVPG92DkmnzdbIiWcO38/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFOazYtMVBlaUwu/anBn",

            audioUrl:
                "https://aac.saavncdn.com/029/eadb87d401d2dd431303f56d4d301d7e_160.mp4",
          ),
        ],
      ),
      Artist(
        name: "Ed Sheeran",
        imageUrl:
            "https://imgs.search.brave.com/_37x_iXjsra9AP4FgWKLbSPSebpcxINQhrOh_Eo5XJo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/YnJpdGFubmljYS5j/b20vMTcvMjQ5NjE3/LTAwNC0xNUMxMEU0/Qy9FZC1TaGVlcmFu/LXBlcmZvcm1zLVJv/Y2tlZmVsbGVyLVBs/YXphLVRvZGF5LVNo/b3ctTmV3LVlvcmst/MjAyMy5qcGc",
        songs: [
          Music(
            label: "Shape of you",
            description: "Shape of you",
            artist: "Ed Sheeran",
            imageUrl:
                "https://imgs.search.brave.com/7dKc4896pjoQmQCLjcjRgG7hONgOafQCt5n7aUd1ZaM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvdmkvYS9hMy9T/aGFwZV9vZl9Zb3Vf/Y292ZXIuanBn",

            audioUrl:
                "https://aac.saavncdn.com/126/da7cde34b008294e181842062530546d_160.mp3",
          ),
          Music(
            label: "Perfect",
            description: "Perfect",
            artist: "Ed Sheeran",
            imageUrl:
                "https://imgs.search.brave.com/Q09D8o9FVbZ-iZfi6AafzTQXUtZbca5B_vZ1oCzmfFE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/OS85My9FZF9TaGVl/cmFuXyZfQW5kcmVh/X0JvY2VsbGlfLV9Q/ZXJmZWN0X1N5bXBo/b255LmpwZy8yNTBw/eC1FZF9TaGVlcmFu/XyZfQW5kcmVhX0Jv/Y2VsbGlfLV9QZXJm/ZWN0X1N5bXBob255/LmpwZw",

            audioUrl:
                "https://aac.saavncdn.com/286/71bb6cc3391ddf619a4a3f1a1134f1c4_160.mp4",
          ),
          Music(
            label: "Photograph",
            description: "Photograph",
            artist: "Ed Sheeran",
            imageUrl:
                "https://imgs.search.brave.com/xczqgZO5Ox_XJEq55rRBHwVSs6_-qu9BSJ-xKqshEi8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pczIt/c3NsLm16c3RhdGlj/LmNvbS9pbWFnZS90/aHVtYi9NdXNpYzEy/NS92NC9iOC82NC9j/MC9iODY0YzA2Zi1l/MWU5LTY0MGQtZjA0/MC0zZTNhODkyZGU1/YWMvODI1NjQ2OTYy/Njc5LmpwZy8yNDd4/MjQ3YmIuanBn",

            audioUrl:
                "https://aac.saavncdn.com/835/2d0cf8c83a9f3b900ac214e21d07badc_160.mp4",
          ),
          Music(
            label: "Happier",
            description: "Happier",
            artist: "Ed Sheeran",
            imageUrl:
                "https://imgs.search.brave.com/dwjzKVv866dFu7YxNNAjT4HXD4mK4H89t09SXLVUcxg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vNi82My9F/ZF9TaGVlcmFuX0hh/cHBpZXIucG5n",

            audioUrl:
                "https://aac.saavncdn.com/286/1f1e72e0d96ca82ac4f9b2439032ed6c_160.mp4",
          ),
          Music(
            label: "I don't care",
            description: "I don't care",
            artist: "Ed Sheeran & Justin Bieber",
            imageUrl:
                "https://imgs.search.brave.com/JWBtUrRu8p6AzBRe7ZGIuohB7I3zL6i8wif-2azy_yA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLTAwMDUz/Njk3MTEwNC1ybnE3/Nm4tdDEwODB4MTA4/MC5qcGc",

            audioUrl:
                "https://aac.saavncdn.com/042/658dac273c15238e3ede2e19470bc524_160.mp4",
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

            audioUrl:
                "https://aac.saavncdn.com/587/d3bd1ed49eb108d2425e4875cc3ad86e_160.mp4",
          ),
          Music(
            label: "Abhi Mujh Mein Kahin",
            description: "Abhi Mujh Mein Kahin",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/EjIKE0KrDe-Ehkw9ngFTuFrxyDvjW8P6GSAklTDp6LY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8z/MTcvQWduZWVwYXRo/LUhpbmRpLTIwMTEt/MjAxOTA2MDMxMzI5/NDEtNTAweDUwMC5q/cGc",

            audioUrl:
                "https://aac.saavncdn.com/317/ff7bb9dd26d1e8054bab5bb90c4a6b2a_160.mp4",
          ),
          Music(
            label: "Kabhi Alvida Naa Kehna",
            description: "Kabhi Alvida Naa Kehna",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/T0WM6AoCtwNkbqB0bXHYiOPMLUYWASCkB9uT8fcm324/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vNy83ZC9L/YWJoaV9BbHZpZGFf/TmFhX0tlaG5hLmpw/Zw",

            audioUrl:
                "https://aac.saavncdn.com/089/f851d32c7de65f62fce9b1e78dbc2228_160.mp4",
          ),
          Music(
            label: "Suraj Hua Maddham",
            description: "Suraj Hua Maddham",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/KTD8YhpYRvpw9do43sBkK4msIRQMyQYgEmdfjCsxFSY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS83/NzgvS2FiaGktS2h1/c2hpLUthYmhpZS1H/aGFtLUhpbmRpLTIw/MDEtMjAxOTA1MTYx/NTA1MzUtNTAweDUw/MC5qcGc",

            audioUrl:
                "https://aac.saavncdn.com/778/c9c52c1295f9053c008f2d49b0339a88_160.mp4",
          ),
          Music(
            label: "Main Agar Kahoon",
            description: "Main Agar Kahoon",
            artist: "Sonu Nigam",
            imageUrl:
                "https://imgs.search.brave.com/Lgu5Q94nmCHTU9FLzi0Nb035WgMh9HybF-6J0PUUBM0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8x/NzkvT20tU2hhbnRp/LU9tLUhpbmRpLTIw/MDctMjAyNDEyMDUx/NDE3MjQtNTAweDUw/MC5qcGc",

            audioUrl:
                "https://aac.saavncdn.com/179/072d8e825c532778560b38b4042c8fc3_160.mp4",
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

            audioUrl:
                "https://aac.saavncdn.com/228/10055d357c188064486bd5c3edd4a7fd_160.mp4",
          ),
          Music(
            label: "Chikni Chameli",
            description: "Chikni Chameli",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/rohdwBA6YHN0mPNKw3FDiMwi_jfQ_Pq9aGQ_QMTPWYo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9hMTAu/Z2FhbmFjZG4uY29t/L2duX2ltZy9hbGJ1/bXMva29NV1E0QjNx/TC9vTVdRMU84V3FM/L3NpemVfbS5qcGc",

            audioUrl:
                "https://aac.saavncdn.com/317/9701b2441309d1b189e26ae72b04bd1c_160.mp4",
          ),
          Music(
            label: "Tujh Mein Rab Dikhta Hai",
            description: "Tujh Mein Rab Dikhta Hai",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/e9-PepbcMwSG2rMGqcaW8KgTl8NRe2XorgPY2P1H21Q/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8z/NDQvUmFiLU5lLUJh/bmEtRGktSm9kaS1I/aW5kaS0yMDA4LTUw/MHg1MDAuanBn",

            audioUrl:
                "https://aac.saavncdn.com/557/ae33436a3921f35d083ee18b16711918_160.mp4",
          ),
          Music(
            label: "Dagabaaz Re",
            description: "Dagabaaz Re",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/wpr3Ptwb_pN9LdZdvt-18FD5Qq6YHFv0xDEn12uLehw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS82/NTIvRGFiYW5nZy0y/LUhpbmRpLTIwMTIt/MjAyMjEyMTMwMTI2/MDYtNTAweDUwMC5q/cGc",

            audioUrl:
                "https://aac.saavncdn.com/463/1eb5fa2e6ae51e9eaa7924dc049dbd5b_160.mp4",
          ),
          Music(
            label: "Bahara",
            description: "Bahara",
            artist: "Shreya Goshal",
            imageUrl:
                "https://imgs.search.brave.com/1Hjb0z-HPGjCgG99Atc8uZAtdVYVZphCV8n0ABFfnj4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS8y/MDAvSS1IYXRlLUx1/di1TdG9yeXMtSGlu/ZGktMjAxMC0yMDE5/MDYwMzEzNDcwNS01/MDB4NTAwLmpwZw",

            audioUrl:
                "https://aac.saavncdn.com/200/c24b119a666c231737d67106e1881753_160.mp4",
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
                "https://imgs.search.brave.com/uKi8rJKtkBaWhbnFxa_drk4SI7HTtqV0ZZny8WQtSbc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzVmLzIx/L2EzLzVmMjFhM2Rh/MDQzZWFiMDliMDhk/ZGU0N2EwYmNjODA3/LmpwZw",

            audioUrl:
                "https://aac.saavncdn.com/520/060f65240088865166a061f2942ef92e_160.mp4",
          ),
          Music(
            label: "Husn",
            description: "Husn",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/Dfpb7QXBMjF8PxdRWjebfj2CYvInFW4LDaJvT2IKVrA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk1qWXdNR0Uw/T0RNdE56WXpZUzAw/TVdNeExUZ3pORFF0/WWpkbU0ySTRNVEF5/TUdSaFhrRXlYa0Zx/Y0djQC5qcGc",

            audioUrl:
                "https://aac.saavncdn.com/436/13795b7aa2e87393366162b9e6a6fe88_160.mp4",
          ),
          Music(
            label: "Gul",
            description: "Gul",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/5fiU38bYw2LQtQ0U9oDsw1QlE6OaOFQ2IsdI-_u-TPA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLTQ5WTBi/Rkpxcm05OVZxdXot/TTBMMWVRLXQxMDgw/eDEwODAuanBn",

            audioUrl:
                "https://aac.saavncdn.com/266/75a2c612178dea03a50e943310efa85f_160.mp4",
          ),
          Music(
            label: "Jo Tum Mere Ho",
            description: "Jo Tum Mere Ho",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/aKC9qoI8rKoq4YgwuExr_el-Vp4kPv10Uw_zM7j3svs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aWx5cmljc2h1Yi5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MjQvMDcvam8tdHVt/LW1lcmUtaG8tYW51/di1qYWluLmpwZw",

            audioUrl:
                "https://aac.saavncdn.com/401/1e4444c13f76ac543c19b01d7ea0423a_160.mp4",
          ),
          Music(
            label: "Alag Aasmaan",
            description: "Alag Aasmaan",
            artist: "Anuv Jain",
            imageUrl:
                "https://imgs.search.brave.com/kYL9FptgoOqYGSKDQ_pdrjiodZnWt73iihiqEY1SXcM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20veXRpbWcu/Z29vZ2xldXNlcmNv/bnRlbnQuY29tL3Zp/L3ZBODZRRnJYb2hv/L21xZGVmYXVsdC5q/cGc_cmVzaXplPTU2/LDU2",

            audioUrl:
                "https://aac.saavncdn.com/879/72ded7665bbd5f8947f014de81e5fc1d_160.mp4",
          ),
        ],
      ),
    ];
  }
}
