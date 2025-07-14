import 'package:spotify_clone/model/music.dart';

class MusicService {
  static List<Music> getMusic() {
    return <Music>[
      Music(
        label: "Raanjhan",
        description: "Raanjhan",
        imageUrl:
            "https://imgs.search.brave.com/KHfdSjEe9DgdPNtmvtX6js__0TYjLmxc3HbX3usmSJo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jaGFy/dHMtc3RhdGljLmJp/bGxib2FyZC5jb20v/aW1nLzIwMjQvMTEv/cGFyYW1wYXJhdGFu/ZG9uLTAwMC1yYWFu/amhhbmZyb21kb3Bh/dHRpLWRscC0xODB4/MTgwLmpwZw",
        artist: "Parampara Tandon",
        duration: "3:40"
      ),
      Music(
        label: "Tu hi hai",
        description: "Half girlfriend",
        imageUrl:
            "https://imgs.search.brave.com/U1sPFyCWLxhdF0bsLJdJEtagLkBSQxJjF8_36Akaqhw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS80/NDEvSGFsZi1HaXJs/ZnJpZW5kLUhpbmRp/LTIwMTctMjAxODA2/MjItNTAweDUwMC5q/cGc",
        artist: "Rahul Mishra",
        duration: "4:30"
      ),
      Music(
        label: "Saiyaara",
        description: "Saiyaara",
        imageUrl:
            "https://imgs.search.brave.com/dqRWkXezQKkNM8zTQwb_OpzqF8NZh3mRqPn726dQl44/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9hMTAu/Z2FhbmFjZG4uY29t/L2duX2ltZy9hbGJ1/bXMvMTBxM1oxSzUy/ci9xM1p3WlkyUVc1/L3NpemVfbS5qcGc",
        artist: "Tanishk Bagchi, Faheem A, Arslan N",
        duration: "5:00"
      ),
      Music(
        label: "Maalik",
        description: "Maalik",
        imageUrl:
            "https://imgs.search.brave.com/16lTBCbj0oq_rJsIKOYxtYlBjyzvZmS3DD07ylr2E2Y/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9hMTAu/Z2FhbmFjZG4uY29t/L2duX2ltZy9hbGJ1/bXMvZDQxV2puV1BM/cS8xV2oxZzI0TzNQ/L3NpemVfbV8xNzUy/MjIxOTA3LmpwZw",
        artist: "Mali",
        duration: "3:45"
      ),
      Music(
          label: "Believer",
          description: "Believer-Imagine Dragon",
          imageUrl:
          "https://imgs.search.brave.com/QLPQvyey_C3Ihj_puGMMyUsx5Y-MRr0YMU94bE2vB6M/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/NS81Yy9JbWFnaW5l/LURyYWdvbnMtQmVs/aWV2ZXItYXJ0Lmpw/Zy8yNTBweC1JbWFn/aW5lLURyYWdvbnMt/QmVsaWV2ZXItYXJ0/LmpwZw",
          artist: "Imagine Dragon",
          duration: "3:40"
      ),
      Music(
          label: "Faded",
          description: "Faded",
          imageUrl:
          "https://imgs.search.brave.com/ZoCpGGQBN3E8JGkBQIssHCioMd6wJeYOc_KpIaC1PkI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/ZC9kYS9BbGFuX1dh/bGtlcl8tX0ZhZGVk/LnBuZy8yNTBweC1B/bGFuX1dhbGtlcl8t/X0ZhZGVkLnBuZw",
          artist: "Alan Walker",
          duration: "4:30"
      ),
      Music(
          label: "Russian Bandana",
          description: "Russian Bandana - Dhanda Nyoliwala",
          imageUrl:
          "https://imgs.search.brave.com/-eeIs5VH8rSY_hB7R6ZH2Urtg8RcK7fmvdcwB2-rl84/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS80/MDQvUnVzc2lhbi1C/YW5kYW5hLUhpbmRp/LTIwMjQtMjAyNDA5/MTAwNTMxNDctNTAw/eDUwMC5qcGc",
          artist: "Dhanda Nyoliwala",
          duration: "5:00"
      ),
      Music(
          label: "Millionaire",
          description: "Glory",
          imageUrl:
          "https://imgs.search.brave.com/JztxRcADgAnwah5zvoaQsRZsc7cAMDvarkSurGYpSCQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLnNj/ZG4uY28vaW1hZ2Uv/YWI2NzYxNmQwMDAw/YjI3M2FhZDNmNGI2/MDFhZTg3NjNiM2Zj/NGU4OA",
          artist: "Yo Yo Honey Singh",
          duration: "3:45"
      ),
    ];
  }
  static List<Music> getMadeForYou() {
    return <Music>[
      Music(
          label: "Mast Magan",
          description: "2 States",
          imageUrl:
          "https://imgs.search.brave.com/jBF-JqAGCTzrMNb1YAcLvIPCFOBv54HajZdQ_lEhSm8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS85/MzAvMi1TdGF0ZXMt/MjAxNC01MDB4NTAw/LmpwZw",
          artist: "Arijit Singh",
          duration: "3:40"
      ),
      Music(
          label: "Vaaroon",
          description: "Mirzapur",
          imageUrl:
          "https://imgs.search.brave.com/9BMyziQJun266Gzx68P_jTuQpFT5HZHFKILdDVlUUbY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMxLmh1bmdhbWEu/Y29tL3RyOm4tYV8x/MV94cy9jLzEvZWZl/LzQ1ZC81OTE4NzIy/NS81OTE4NzIyNV84/MDB4ODAwLmpwZz92/ZXJzaW9uPTEyXzQx",
          artist: "Romy",
          duration: "4:30"
      ),
      Music(
          label: "Beggin",
          description: "Beggin - Måneskin",
          imageUrl:
          "https://imgs.search.brave.com/uvup_EIXHUzoLHs4gjZfY8qEZR3BnFGPUWMpYQcOcEc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZ2VuaXVzLmNv/bS8zOGZiZGZjYTRj/NzI2OWRkOGQxOGEw/MWU3NzViMGM2MS4x/MDAweDEwMDB4MS5w/bmc",
          artist: "Måneskin",
          duration: "5:00"
      ),
      Music(
          label: "Bones",
          description: "Bones - Imagine Dragon",
          imageUrl:
          "https://imgs.search.brave.com/B3s548VA1EkEZkM6a6VcDcnAEsR7LJX9EOBeZNXfBEA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMud2lraWEubm9j/b29raWUubmV0L2lt/YWdpbmVkcmFnb25z/L2ltYWdlcy9mL2Zl/L01lcmN1cnlfLV9B/Y3RfMi5qcGcvcmV2/aXNpb24vbGF0ZXN0/L3NjYWxlLXRvLXdp/ZHRoLWRvd24vMjY4/P2NiPTIwMjIwNzA0/MDkzNjM4",
          artist: "Imagine Dragon",
          duration: "3:45"
      ),
      Music(
          label: "Until I found her",
          description: "Until I found her",
          imageUrl:
          "https://imgs.search.brave.com/zXXrY2lqJ919R4lUP8XxeXlAX2eR66FepIBI1Lko_6o/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLmtm/cy5pby9hbGJ1bS9n/bG9iYWwvMTgwOTI2/NjIwLDF2MS9maXQv/NTAweDUwMC5qcGc",
          artist: "Stephen Sanchez",
          duration: "3:40"
      ),
      Music(
          label: "Die with a smile",
          description: "Die with a smile",
          imageUrl:
          "https://imgs.search.brave.com/-8K0ThY5lC8TIwstvsfOpY2K6LSZk3DBV2mG5X_pCtE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9sYWR5/Z2FnYW5vdy5uZXQv/YWxidW1zL0FydHdv/cmtzL1NpbmdsZXMv/ZGllJTIwd2l0aCUy/MGElMjBzbWlsZS9s/YXJnZS5zaW5nbGVf/Y292ZXIuanBnLjgx/ZmY4NTA5ODYyYzI4/YzhkMmViMGFkZGNm/MjAyMGU2LmpwZw",
          artist: "Bruno mars, Lady Gaga",
          duration: "4:30"
      ),
      Music(
          label: "If we being real",
          description: "If we being real",
          imageUrl:
          "https://imgs.search.brave.com/pPoAHrRh4TdRfs-4M-Nuwit7LlWYzAnh5boIkyJyJSE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pczEt/c3NsLm16c3RhdGlj/LmNvbS9pbWFnZS90/aHVtYi9NdXNpYzEx/Mi92NC9iMS82MS8w/MS9iMTYxMDE4ZS04/ZmM5LWI2YTgtMTQ2/ZS1iMzJmMWJmOWE3/ODIvMjRVTUdJTTEz/NjY1LnJnYi5qcGcv/ODAweDgwMGNjLmpw/Zw",
          artist: "Yeat",
          duration: "5:00"
      ),
      Music(
          label: "Brown Rang",
          description: "Brown Rang",
          imageUrl:
          "https://imgs.search.brave.com/imInzvz1fZxDzQdUaEw76GUb9j66YUmcoiMYo1zUfTY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvZW4vdGh1bWIv/NC80NC9Ccm93bl9S/YW5nX3NvbmcuanBn/LzI1MHB4LUJyb3du/X1Jhbmdfc29uZy5q/cGc",
          artist: "Yo Yo Honey Singh",
          duration: "3:45"
      ),
    ];
  }
}
