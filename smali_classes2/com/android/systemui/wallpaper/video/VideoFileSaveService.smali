.class public Lcom/android/systemui/wallpaper/video/VideoFileSaveService;
.super Landroid/app/Service;
.source "VideoFileSaveService.java"


# instance fields
.field private final mBinder:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;

.field private mCurentWhich:I

.field private mUserId:I

.field private mVideoFileExt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "mp4"

    .line 52
    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    const/4 v0, 0x2

    .line 54
    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    .line 61
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mBinder:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->getTempFilePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->getSavedFilePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSavedFilePath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "VideoFileCopyService"

    const-string v0, "getSavedFilePath() file is null"

    .line 133
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/data/user_de/0/com.android.systemui/files"

    .line 135
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "video_wallpaper"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTempFilePath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "VideoFileCopyService"

    const-string v0, "getTempFilePath() file is null"

    .line 144
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/data/user_de/0/com.android.systemui/files"

    .line 146
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "video_wallpaper"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_temp."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mBinder:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;

    return-object p0
.end method
