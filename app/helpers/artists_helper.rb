module ArtistsHelper

    def display_artist(arg)

    end

    def display_link
        if @song.artist != nil
            #display link
        else
            link_to @song.artist artist_path(@song.artist)
        end
    end
end
