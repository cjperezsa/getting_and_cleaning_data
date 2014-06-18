
xvals.train <- read.table("UCI HAR Dataset/train/X_train.txt")
  yvals.train <- read.table("UCI HAR Dataset/train/y_train.txt")
  features <- read.table('UCI HAR Dataset/features.txt')
  subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
  colnames(xvals.train) <- features[,2]
  
  xvals.train.msd = subset(xvals.train, select=(names(xvals.train)[grep('mean|std',names(xvals.train))]))
  yvals.train <- yvals.train[,1]
  yvals.train[yvals.train==1]="walking"
  yvals.train[yvals.train==2]="walking up"
  yvals.train[yvals.train==3]="walking down"
  yvals.train[yvals.train==4]="sitting"
  yvals.train[yvals.train==5]="standing"
  yvals.train[yvals.train==6]="laying"
  
  xvals.train.msd$subject <- subject.train[,1]
  xvals.train.msd$activity <- yvals.train
  
  str(xvals.train.msd)
  
  xvals.test <- read.table("UCI HAR Dataset/test/X_test.txt")
  yvals.test <- read.table("UCI HAR Dataset/test/y_test.txt")
  subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
  
  
  colnames(xvals.test) <- features[,2]
  
  xvals.test.msd = subset(xvals.test, select=(names(xvals.test)[grep('mean|std',names(xvals.test))]))
  yvals.test <- yvals.test[,1]
  yvals.test[yvals.test==1]="walking"
  yvals.test[yvals.test==2]="walking up"
  yvals.test[yvals.test==3]="walking down"
  yvals.test[yvals.test==4]="sitting"
  yvals.test[yvals.test==5]="standing"
  yvals.test[yvals.test==6]="laying"
  
  xvals.test.msd$subject <- subject.test[,1]
  xvals.test.msd$activity <- yvals.test
  
  str(xvals.test.msd)
  vals.merged = rbind(xvals.train.msd,xvals.test.msd)
  str(vals.merged)
  library(reshape2)
  vals.melted = melt(vals.merged, id=c('subject','activity'), measure.vars=c(1:79))
  head(vals.melted, n=3)
  tail(vals.melted, n=3)
  vals.mean = dcast(vals.melted, subject + activity ~ ..., mean)
  str(vals.mean)

write.csv(file="project_out.csv", vals.mean)
