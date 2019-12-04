.class public Lcom/android/systemui/volume/util/ConfigurationWrapper;
.super Ljava/lang/Object;
.source "ConfigurationWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDensity:I

.field private mFontScale:F

.field private mLocale:Ljava/util/Locale;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    .line 16
    iget-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mOrientation:I

    .line 17
    iget-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDensity:I

    .line 18
    iget-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mFontScale:F

    .line 19
    iget-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public isDensityOrFontScaleChanged()Z
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 33
    iget-object v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 34
    iget-object v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 35
    iget v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDensity:I

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mFontScale:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mLocale:Ljava/util/Locale;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 36
    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDensity:I

    .line 37
    iput v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mFontScale:F

    .line 38
    iput-object v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mLocale:Ljava/util/Locale;

    const/4 p0, 0x1

    return p0
.end method

.method public isOrientationChanged()Z
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 24
    iget v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 25
    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mOrientation:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
