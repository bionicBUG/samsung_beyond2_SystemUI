.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;
.super Landroid/os/AsyncTask;
.source "KeyguardVideoWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoFileCopyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentWhich:I

.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 1100
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    const/4 p1, 0x2

    .line 1101
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mCurrentWhich:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;)V
    .locals 0

    .line 1098
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V

    return-void
.end method


# virtual methods
.method cancelTask()V
    .locals 1

    const/4 v0, 0x1

    .line 1104
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .line 1117
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object p1

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$600(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mCurrentWhich:I

    .line 1121
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "themePkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mCurrentWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    return-object v3

    .line 1123
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const-string v4, "android"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1500(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mCurrentWhich:I

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1126
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string p1, "VideoFileCopyTask.doInBackground() set completed from theme"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1128
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1600(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 1133
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1700(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mCurrentWhich:I

    invoke-virtual {p1, v4, v6, v7}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->setupAdditionalFileInfo(Ljava/lang/String;II)V

    .line 1134
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1135
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    .line 1137
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz p1, :cond_3

    return-object v3

    .line 1139
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1140
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string p1, "doInBackground() return false - copy fail"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1144
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1145
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->deleteVideoFile(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1146
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v0, "VideoFileCopyTask.doInBackground() delete file complete"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz p1, :cond_6

    return-object v3

    .line 1152
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->renameVideoFile()Z

    move-result p1

    .line 1153
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->setVideoLockscreenWallpaperAsOwner()V

    .line 1154
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoFileCopyTask.doInBackground() set completed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", time = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1129
    :cond_7
    :goto_1
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string p1, "doInBackground() return false - service is not bounded"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1098
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 6

    .line 1182
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "VideoFileCopyTask.onCancelled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1700(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result v0

    .line 1185
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->renameVideoFile()Z

    move-result v0

    .line 1188
    sget-object v3, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoFileCopyTask.onCancelled() forced set video because origin file is lost, success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 1192
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->deleteVideoFile(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1193
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v0, "VideoFileCopyTask.onCancelled() delete file complete"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .line 1160
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v0

    .line 1161
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoFileCopyTask.onPostExecute() success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , isSubDisplay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1163
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1164
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    const-string v3, "sub_display_lockscreen_wallpaper_transparency"

    invoke-static {v0, v3, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1800(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z

    .line 1168
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const-string v0, "lockscreen_wallpaper_sub"

    invoke-static {p1, v0, v2, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1900(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z

    goto :goto_2

    .line 1170
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    const-string v3, "lockscreen_wallpaper_transparent"

    invoke-static {v0, v3, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1800(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z

    .line 1171
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const-string v0, "lockscreen_wallpaper"

    invoke-static {p1, v0, v2, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1900(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z

    .line 1174
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$2000(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1175
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 1176
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1098
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1109
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    .line 1111
    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1300(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1300(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
