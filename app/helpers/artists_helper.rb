module ArtistsHelper

    def display_artist
        if @song.artist != nil
            @song.artist_name
        else
            ""
        end
    end

    def display_link
        if display_artist != ""
            link_to @song.artist_name, artist_path(@song.artist)
        else
            link_to "Add Artist", edit_song_url(@song)
        end
    end
end
