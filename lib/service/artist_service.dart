import 'package:spotify_clone/model/artist.dart';

class ArtistService{
  static List<Artist> getArtist(){
    return <Artist>[
      Artist(name: "Arijit Singh", imageUrl: "https://imgs.search.brave.com/XtOdQ8wX97ghjEQQyQTwhSkWf73t_dlYhB2LSLeEW-Y/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jLnNh/YXZuY2RuLmNvbS9h/cnRpc3RzL0FyaWpp/dF9TaW5naF8wMDRf/MjAyNDExMTgwNjM3/MTdfNTAweDUwMC5q/cGc"),
      Artist(name: "Atif Aslam", imageUrl: "https://imgs.search.brave.com/OPTtbnt9VwJlyS263U313u9HrEtY-bPDkuFmhN38_aI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQwMDEw/MzkuanBn"),
      Artist(name: "Sonu Nigam", imageUrl: "https://imgs.search.brave.com/_tbruQHuSQzFpf-2WV6jsVCoQmA5p1v19ollDeD_IUI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9j/L2NlL1NvbnVfTmln/YW0xMjEuanBn"),
      Artist(name: "Shreya Goshal", imageUrl: "https://imgs.search.brave.com/6oUBO2U0eP3KHoUMTjBolSIMeZNoas1uVoaDLgke8Us/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudG9paW1nLmNv/bS90aHVtYi9pbWdz/aXplLTIzNDU2LG1z/aWQtNDY5MTkwNzMs/d2lkdGgtNjAwLHJl/c2l6ZW1vZGUtNC80/NjkxOTA3My5qcGc"),
      Artist(name: "Anuv Jain", imageUrl: "https://imgs.search.brave.com/LU0HQnDLlwLtzu3JsbamqLIr5nhH3LJLpCM_NX4BmM8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvOTI4/Nzc3NS5qcGc")
    ];
  }
}