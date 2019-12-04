.class Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;
.super Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;
.source "VideoFileSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/video/VideoFileSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;-><init>()V

    return-void
.end method

.method private getVideoFilePath(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$000(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$300(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$000(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$400(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public deleteVideoFile(Z)Z
    .locals 1

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->getVideoFilePath(Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 97
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This service must be run from the owner("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$000(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$300(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x3c000000    # 0.0078125f

    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This service must be run from the owner("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVideoFileExists(Z)Z
    .locals 1

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->getVideoFilePath(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This service must be run from the owner("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public renameVideoFile()Z
    .locals 4

    .line 106
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$000(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$300(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$000(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$400(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This service must be run from the owner("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVideoLockscreenWallpaperAsOwner()V
    .locals 7

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->getVideoFilePath(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v5

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 116
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This service must be run from the owner("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setupAdditionalFileInfo(Ljava/lang/String;II)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$002(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$102(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;I)I

    .line 67
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoFileSaveService;

    invoke-static {p0, p3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->access$202(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;I)I

    return-void
.end method
