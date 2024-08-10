resource "spotify_playlist" "Bollywood" {
  name = "MyPlaylist"
  tracks = ["37i9dQZEVXbMDoHDwVN2tF"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"

}

resource "spotify_playlist" "RapSong" {
  name = "RapSong"
  tracks = [data.spotify_search_track.eminem.tracks[0].id]
  }