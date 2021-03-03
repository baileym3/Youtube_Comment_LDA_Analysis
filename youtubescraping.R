library(tuber)
library(httr)
client_key = '918515854297-pge0c19nd0akrq5q6ilgemeedltmu8un.apps.googleusercontent.com'
client_secret = 'A9JWxFdtnroEXbaT3MuRB7oZ'
yt_oauth(app_id = client_key, app_secret = client_secret, token = '')
comments<- get_all_comments(video_id = "a-MU1rfiaHlFI")
write.csv(comments, file = 'youtubecomments.csv')
back <- read.csv('youtubecomments.csv')

