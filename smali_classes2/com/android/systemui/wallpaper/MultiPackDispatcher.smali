.class public Lcom/android/systemui/wallpaper/MultiPackDispatcher;
.super Ljava/lang/Object;
.source "MultiPackDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiPackDispatcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFullPath:Ljava/lang/String;

.field private mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

.field private mIsCustom:Z

.field private mIsMigration:Z

.field private mIsSubDisplay:Z

.field private mLoadedSubUri:Ljava/lang/String;

.field private mLoadedUri:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->isSubUser()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->requestImageWallpaper()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->request2DLS()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getFirstImage()Landroid/graphics/Bitmap;
    .locals 7

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mFullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v0, "getFirstImage list is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_4

    .line 121
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v0, "getFirstImage firstFile is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 124
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstImage mFullPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mFullPath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",path"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    .line 129
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 131
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :cond_5
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v0, "getFirstImage return null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isAlreadyCalled()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoadedSubUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoadedUri:Ljava/lang/String;

    .line 266
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSubUser()Z
    .locals 0

    .line 75
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private load()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "WPaperLastDlsUri"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, ";"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 247
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoadedUri:Ljava/lang/String;

    .line 248
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoadedSubUri:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static makePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/overlays/homewallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private request2DLS()Z
    .locals 9

    .line 199
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMultiLockWallpaper2DLS path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mFullPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isSubDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 204
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 205
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsCustom:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "name"

    if-eqz v4, :cond_0

    :try_start_1
    const-string v4, "USER.PACK.01"

    .line 206
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "MULTI.PACK.01"

    .line 208
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v4, "wallpaper_path"

    .line 210
    iget-object v5, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mFullPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "screen"

    .line 211
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "isMigration"

    .line 212
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsMigration:Z

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    iget-object v4, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.dynamiclock.provider"

    .line 216
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "user_pack"

    const/4 v8, 0x0

    .line 215
    invoke-virtual {v4, v5, v7, v8, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "result"

    .line 222
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v6

    :goto_3
    if-nez v4, :cond_4

    const-string v4, "reason"

    .line 225
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    sget-object v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMultiLockWallpaper2DLS fail."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 230
    :try_start_2
    sget-object v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "setMultiLockWallpaper2DLS success."

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->save()V

    return v2

    .line 232
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private requestImageWallpaper()Z
    .locals 7

    .line 84
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "requestImageWallpaper for subuser."

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->getFirstImage()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 p0, 0x0

    if-nez v2, :cond_0

    .line 88
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "requestImageWallpaper bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 92
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "requestImageWallpaper setBitmap"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 93
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return p0
.end method

.method private save()V
    .locals 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    const-string v2, ";"

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoadedUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoadedSubUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPaperLastDlsUri"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "MultiPackDispatcher"

    .line 188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUri="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    const-string p1, "WPaperLastDlsUri"

    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pref_uri="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public start(ZZ)V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 148
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    sget-object p1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start : mIsSubDisplay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " uri is null.,uid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    if-nez v1, :cond_2

    .line 155
    new-instance v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;-><init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Lcom/android/systemui/wallpaper/MultiPackDispatcher$1;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    .line 158
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->makePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isMigration"

    .line 160
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsMigration:Z

    const-string v3, "isCustom"

    .line 161
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsCustom:Z

    .line 162
    iput-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mUri:Landroid/net/Uri;

    .line 163
    iput-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mFullPath:Ljava/lang/String;

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    .line 165
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 168
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->load()V

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->isAlreadyCalled()Z

    move-result p1

    const-string v1, ",mIsSubDisplay="

    const-string v3, ",mFullPath="

    const-string v4, "start uri="

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 170
    sget-object p1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mFullPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", arealdy called."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 173
    :cond_4
    sget-object p1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mFullPath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mIsSubDisplay:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",forced="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
