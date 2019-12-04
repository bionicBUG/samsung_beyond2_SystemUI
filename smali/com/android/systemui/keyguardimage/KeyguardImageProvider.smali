.class public Lcom/android/systemui/keyguardimage/KeyguardImageProvider;
.super Landroid/content/ContentProvider;
.source "KeyguardImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWallpaperWriter;,
        Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;
    }
.end annotation


# instance fields
.field private mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field private mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field private mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field private final mHandler:Landroid/os/Handler;

.field private mIsClockViewOnlyType:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getImageCreator(Landroid/content/Context;)[Lcom/android/systemui/keyguardimage/ImageCreator;
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 171
    new-instance v3, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    invoke-direct {v3, p1}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 173
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 176
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mIsClockViewOnlyType:Z

    if-eqz v0, :cond_2

    .line 177
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

    return-object p0

    .line 180
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->isShortcutEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

    return-object p0

    .line 185
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->isFloatingShortcutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v0, :cond_5

    .line 187
    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v0, :cond_4

    new-array v0, v3, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 189
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    new-instance v2, Lcom/android/systemui/keyguardimage/FloatingShortcutImageCreator;

    invoke-direct {v2, p1}, Lcom/android/systemui/keyguardimage/FloatingShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 193
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 196
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    goto :goto_3

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v0, :cond_8

    .line 199
    monitor-enter p0

    .line 200
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v0, :cond_7

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 201
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreatorOnly:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object v4, v4, v2

    aput-object v4, v0, v2

    new-instance v2, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;

    invoke-direct {v2, p1}, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 204
    :cond_7
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 206
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    :goto_3
    return-object p0
.end method

.method private static isFloatingShortcutType(Landroid/content/Context;)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_shortcut_type"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "floating"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isShortcutEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "lockscreen_show_shortcut"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$openFile$0([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V
    .locals 8

    const/4 v0, -0x1

    .line 129
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    .line 130
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    .line 132
    :try_start_0
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p0, v4

    .line 133
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 134
    new-instance v7, Landroid/util/Pair;

    invoke-interface {v5, p1, v6}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v7, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "KeyguardImageProvider"

    const-string p2, "%d images were created"

    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "image/png"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    .line 61
    sget-boolean p0, Lcom/android/systemui/Rune;->LOCKUI_CAPTURE_CLOCK_AND_SHORTCUTS:Z

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string p2, ""

    const-string v0, "operation failed"

    const-string v1, "openFile failed "

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "KeyguardImageProvider"

    const-string v7, "openFile() %s / pid: %d"

    invoke-static {v4, v7, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 100
    invoke-static {v3, p1}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openFile() imageOption "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v8, v7, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-ne v8, v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mIsClockViewOnlyType:Z

    .line 112
    iget v2, v7, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-ne v2, v6, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 114
    new-instance p2, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    invoke-direct {p2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>()V

    invoke-virtual {p2, v7, v8}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p2

    move-object v9, p2

    goto/16 :goto_4

    .line 117
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->getImageCreator(Landroid/content/Context;)[Lcom/android/systemui/keyguardimage/ImageCreator;

    move-result-object v3

    .line 119
    iget-boolean v9, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mIsClockViewOnlyType:Z

    if-eqz v9, :cond_3

    .line 120
    aget-object p2, v3, v5

    invoke-interface {p2, v7, v8}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v1, p2, v3, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v9, v0

    goto :goto_4

    .line 125
    :cond_3
    iget v5, v7, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v9, v7, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 126
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    new-instance v10, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v10, v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 128
    iget-object v6, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/systemui/keyguardimage/-$$Lambda$KeyguardImageProvider$1KqyyCATzSNWZxN6YjfoJSm1j20;

    invoke-direct {v11, v3, v7, v10}, Lcom/android/systemui/keyguardimage/-$$Lambda$KeyguardImageProvider$1KqyyCATzSNWZxN6YjfoJSm1j20;-><init>([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V

    invoke-virtual {v6, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v6, 0xbb8

    .line 146
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v6, v7, v3}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    .line 147
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 148
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 149
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Bitmap;

    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v9, v10, v11, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 151
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_5
    :goto_3
    if-eqz v3, :cond_8

    move-object v9, v5

    :goto_4
    if-eqz v2, :cond_6

    const-string p2, "image/jpeg"

    goto :goto_5

    :cond_6
    const-string p2, "image/png"

    :goto_5
    move-object v7, p2

    const/4 p2, 0x0

    if-eqz v2, :cond_7

    .line 164
    new-instance v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWallpaperWriter;

    invoke-direct {v0, v8}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWallpaperWriter;-><init>(Lcom/android/systemui/keyguardimage/KeyguardImageProvider$1;)V

    goto :goto_6

    :cond_7
    new-instance v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;

    invoke-direct {v0, v8}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;-><init>(Lcom/android/systemui/keyguardimage/KeyguardImageProvider$1;)V

    :goto_6
    move-object v10, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    .line 163
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 157
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    move-object v3, v8

    :goto_7
    if-nez v3, :cond_9

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    throw p0

    :catch_0
    move-exception p0

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string/jumbo p0, "wrong uri"

    .line 102
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string p0, "not prepared"

    .line 95
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "illegal state"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
