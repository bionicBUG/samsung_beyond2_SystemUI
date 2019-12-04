.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;
.super Ljava/lang/Object;
.source "ImageDarkModeFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageDarkModeFilter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getNightFilterColor(Z)[F
    .locals 6

    if-eqz p0, :cond_0

    const-string p0, "#40642716"

    .line 50
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "#2C000000"

    .line 52
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 55
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 56
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 58
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v0, v0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v0, v5

    aput v0, v3, v4

    const/4 v0, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v5

    aput v1, v3, v0

    const/4 v0, 0x2

    int-to-float v1, v2

    div-float/2addr v1, v5

    aput v1, v3, v0

    const/4 v0, 0x3

    int-to-float p0, p0

    div-float/2addr p0, v5

    aput p0, v3, v0

    return-object v3
.end method

.method public static isApplyToWallpaper(Landroid/content/Context;)Z
    .locals 3

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "display_night_theme_wallpaper"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isApplyToWallpaper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 6

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "display_night_theme"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    .line 34
    :goto_1
    sget-object v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNightMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ui_mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->mStatus:I

    return p0
.end method

.method public setStatus(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->mStatus:I

    return-void
.end method
