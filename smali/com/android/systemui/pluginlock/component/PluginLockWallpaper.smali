.class public Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockWallpaper.java"


# instance fields
.field private mHints:Landroid/app/SemWallpaperColors;

.field private mRecovered:Z

.field private mUpdateStyle:I

.field private mWallpaperBitmap:Landroid/graphics/Bitmap;

.field private mWallpaperPath:Ljava/lang/String;

.field private mWallpaperRecoverType:I

.field private mWallpaperType:I

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    const/4 p2, 0x1

    .line 49
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    const/4 p2, -0x2

    .line 50
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecovered:Z

    return-void
.end method

.method private backupWallpaperSource()V
    .locals 4

    const-string v0, "lockscreen_wallpaper_transparent"

    const/4 v1, -0x1

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperSource() backupSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockWallpaper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(I)V

    .line 198
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private backupWallpaperType()V
    .locals 4

    const-string v0, "lockscreen_wallpaper"

    const/4 v1, -0x1

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperType() backupType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockWallpaper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const/4 v1, -0x3

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperTypeBackupValue(I)V

    const/4 v1, 0x1

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 p0, 0x0

    .line 255
    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 262
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 263
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 264
    :cond_1
    instance-of p2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_2

    .line 265
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 266
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 267
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 269
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    .line 270
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v0, v2, v2, p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v1

    goto :goto_0

    .line 275
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBitmap() unsupported "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginLockWallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private recoverWallpaperSource()V
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getWallpaperSourceBackupValue()I

    move-result v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoverWallpaperSource() backupWallpaperSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v1, "lockscreen_wallpaper_transparent"

    .line 216
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private recoverWallpaperType()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getWallpaperTypeBackupValue()I

    move-result v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoverWallpaperType() backupWallpaperType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "lockscreen_wallpaper"

    .line 207
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "apply()"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    .line 71
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->getRecoverType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    :cond_2
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecovered:Z

    return-void
.end method

.method public getUpdateStyle()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mUpdateStyle:I

    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWallpaperType()I
    .locals 2

    .line 233
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    return v1
.end method

.method public isDynamicWallpaper()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecovered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getWallpaperDynamicBackupValue()I

    move-result p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecoverRequiredWallpaper()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "lockscreen_wallpaper_transparent"

    .line 292
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result p0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecoverRequiredWallpaper() type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStickyRecoverType()Z
    .locals 1

    .line 288
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoWallpaper()Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "recover()"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecovered:Z

    const/4 v0, -0x2

    .line 89
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    const-string v1, "plugin_lock_wallpaper_type"

    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    return-void
.end method

.method public reset(Z)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "reset()"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 96
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHints:Landroid/app/SemWallpaperColors;

    if-nez p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperSource()V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recoverWallpaperType()V

    const/4 p1, -0x1

    .line 104
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue(III)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    if-eqz p1, :cond_1

    .line 108
    invoke-interface {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;->onWallpaperUpdate()V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    .line 112
    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    const-string v0, "plugin_lock_wallpaper_type"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecovered:Z

    return-void
.end method

.method public setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    :cond_0
    return-void
.end method

.method public setWallpaperHints(Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    return-void
.end method

.method public update(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update() wallpaperType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    .line 132
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    const-string v0, "plugin_lock_wallpaper_type"

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 p1, -0x2

    .line 148
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    .line 149
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 150
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    const/4 p1, -0x1

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperSourceBackupValue(I)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperTypeBackupValue(I)V

    goto :goto_0

    .line 141
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 142
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "couldn\'t load bitmap:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_1
    iput-object p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 156
    :goto_0
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperDynamicBackupValue(I)V

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mRecovered:Z

    .line 159
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperType()V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->backupWallpaperSource()V

    .line 164
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    if-eqz p0, :cond_4

    .line 165
    invoke-interface {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;->onWallpaperUpdate()V

    :cond_4
    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "apply()"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method

.method public updateHint()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    if-eqz v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mHints:Landroid/app/SemWallpaperColors;

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method
