.class public Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;
.super Ljava/lang/Object;
.source "VideoFileSaveServiceWrapper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;


# instance fields
.field private mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public deleteVideoFile(Z)Z
    .locals 0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->deleteVideoFile(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isVideoFileExists(Z)Z
    .locals 0

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->isVideoFileExists(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public renameVideoFile()Z
    .locals 0

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->renameVideoFile()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setVideoLockscreenWallpaperAsOwner()V
    .locals 0

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->setVideoLockscreenWallpaperAsOwner()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setupAdditionalFileInfo(Ljava/lang/String;II)V
    .locals 0

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->mService:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;->setupAdditionalFileInfo(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
