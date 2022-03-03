library(tuber)
library(httr)
client_key = '918515854297-pk19g9dec3hosqehh7ja2nvul4odia7i.apps.googleusercontent.com'
client_secret = '9FT35k9lCznqDg8Fq2LN14lQ'
yt_oauth(app_id = client_key, app_secret = client_secret, token = '')
video_ids <- read.csv('youtube_scraping_urls_5121.csv')$Video_ID
#assumes file has at least one video id
count <- 0
tryCatch(
  expr = {
    df <- get_all_comments(video_id = video_ids[1])
  }
)
#df <- data.frame()
for (id in (2:length(video_ids))) {
  tryCatch(
    expr = {
      comments <- get_all_comments(video_id = video_ids[id])
      df <- rbind(df, comments)
    },
    error = function(e){
      count <- count + 1
    }
  )
}
print(nrow(df))
write.csv(df, file = 'youtubecomments_5121.csv')
back <- read.csv('youtubecomments.csv')

comments1 <- get_all_comments(video_id = video_ids[1])
comments2 <- get_all_comments(video_id = video_ids[4])
comments3 <- get_all_comments(video_id = video_ids[5])

df <- rbind(comments1, comments2)
df <- rbind(df, comments3)
write.csv(df, file = 'test.csv')
