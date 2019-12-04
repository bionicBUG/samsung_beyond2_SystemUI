.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;
.super Ljava/lang/Object;
.source "ImageMotionEffectChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mIsSupportHomeWallpaperTiltEffect:Z

.field private mWallpaperTiltSettingEnabled:Z


# direct methods
.method static synthetic access$000(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mIsSupportHomeWallpaperTiltEffect:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mWallpaperTiltSettingEnabled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mWallpaperTiltSettingEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;)Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mCallback:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;

    return-object p0
.end method

.method private getTiltStatusSettingKey()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTiltStatusSettingKey, key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "wallpaper_tilt_status"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImageMotionEffectChecker"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public isTiltSettingEnabled()Z
    .locals 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTiltSettingEnabled,  mIsSupportHomeWallpaperTiltEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mIsSupportHomeWallpaperTiltEffect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Settings.System.getInt(mContext.getContentResolver(), getTiltStatusSettingKey(), 0) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->getTiltStatusSettingKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageMotionEffectChecker"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mIsSupportHomeWallpaperTiltEffect:Z

    if-nez v0, :cond_0

    return v3

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->getTiltStatusSettingKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0
.end method
