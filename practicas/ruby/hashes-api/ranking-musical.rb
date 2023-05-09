ranking = {
    "Baba O'riley - The Who" => 1,
    "Smoke on the Water - Deep Purple" => 2,
    "Confortably Numb - Pink Floyd" => 3,
    "Roadhouse Blues - The Doors" => 4,
    "Purple Haze - Jimi Hendrix" => 5,
    "Bohemian Rhapsody - Queen" => 6,
    "Another Brick On The Wall - Pink Floyd" => 7,
    "You Shook Me All Night - AC/DC" => 8,
    "Sweet Child O' Mine - Guns N' Roses" => 9,
    "Tom Sawyer - Rush" => 10
}

#puts ranking.invert[1]

ranking.each { |k,v|
    puts k.split(" - ")[1]
}

