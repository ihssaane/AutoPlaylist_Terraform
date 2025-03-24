data "spotify_search_track" "ariana_grande" {
  artist = "Ariana Grande"
  
}

resource "spotify_playlist" "ariana_grande" {
  name        = "My Ariana Grande Playlist"

 tracks = [data.spotify_search_track.ariana_grande.tracks[0].id,
           data.spotify_search_track.ariana_grande.tracks[1].id,
           data.spotify_search_track.ariana_grande.tracks[2].id,
           data.spotify_search_track.ariana_grande.tracks[3].id,
           data.spotify_search_track.ariana_grande.tracks[4].id
           ]
}



