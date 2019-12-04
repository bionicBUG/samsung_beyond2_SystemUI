.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;
.super Ljava/lang/Object;
.source "ParserData.java"


# instance fields
.field private mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field private mApkContext:Landroid/content/Context;

.field private mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

.field private mImageViewHeight:I

.field private mImageViewWidth:I

.field private mIsPreview:Z

.field private mIsScaled:Z

.field private mIsStartTag:Z

.field private mIsWallpaper:Z

.field private mMetricsHeight:I

.field private mMetricsWidth:I

.field private mMobileKeyboardCovered:I

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageWidth:F

.field private mPkgName:Ljava/lang/String;

.field private mRootView:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

.field private mScaledDx:F

.field private mScaledDy:F

.field private mScaledRatio:F

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mXpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x44200000    # 640.0f

    .line 31
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    .line 32
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 33
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageDensity:F

    .line 35
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 39
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    .line 40
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    .line 41
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    .line 53
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    const/4 v0, -0x2

    .line 54
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    .line 55
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    .line 67
    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    .line 71
    iput p5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewWidth:I

    .line 72
    iput p6, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewHeight:I

    .line 73
    iput-boolean p7, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    .line 74
    iput p8, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMobileKeyboardCovered:I

    .line 75
    iput-object p9, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 88
    iget v0, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 90
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    .line 91
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    .line 94
    iget v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    .line 97
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMobileKeyboardCovered:I

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->setRealMetrics(Landroid/content/Context;III)V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    if-eqz v0, :cond_3

    .line 106
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    .line 107
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    .line 110
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    .line 113
    :goto_0
    new-instance v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setFrameImageView(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    .line 114
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    .line 115
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setComplexAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;)V

    return-void
.end method


# virtual methods
.method public getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    return-object p0
.end method

.method public getApkContext()Landroid/content/Context;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkContext:Landroid/content/Context;

    return-object p0
.end method

.method public getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCoordinateX(F)F
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    add-float/2addr p1, p0

    return p1
.end method

.method public getCoordinateY(F)F
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    add-float/2addr p1, p0

    return p1
.end method

.method public getDeviceDensity()F
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    return p0
.end method

.method public getDeviceHeight()F
    .locals 0

    .line 269
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    return p0
.end method

.method public getDevicePixelX(F)F
    .locals 1

    .line 199
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    mul-float/2addr p1, v0

    .line 200
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getDevicePixelY(F)F
    .locals 1

    .line 204
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    mul-float/2addr p1, v0

    .line 205
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getDeviceWidth()F
    .locals 0

    .line 265
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    return p0
.end method

.method public getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    return-object p0
.end method

.method public getImageViewHeight()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    return p0
.end method

.method public getImageViewWidth()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    return p0
.end method

.method public getPackgeHeight()F
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    return p0
.end method

.method public getPackgeWidth()F
    .locals 0

    .line 233
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    return p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    return-object p0
.end method

.method public getScaledDx()F
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    return p0
.end method

.method public getScaledDy()F
    .locals 0

    .line 305
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    return p0
.end method

.method public getUpdateBitmapCallback()Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object p0
.end method

.method public getXpp()Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    return-object p0
.end method

.method public isPreview()Z
    .locals 0

    .line 253
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    return p0
.end method

.method public isScaled()Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    return p0
.end method

.method public isStartTag()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    return p0
.end method

.method public isWallpaperView()Z
    .locals 0

    .line 273
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    return p0
.end method

.method public setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    return-void
.end method

.method public setComplexAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    return-void
.end method

.method public setFrameImageView(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    return-void
.end method

.method public setImageViewHeight(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    return-void
.end method

.method public setImageViewWidth(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    return-void
.end method

.method public setPackgeDensity(F)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageDensity:F

    return-void
.end method

.method public setPackgeHeight(F)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    return-void
.end method

.method public setPackgeWidth(F)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    return-void
.end method

.method public setScaled(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    return-void
.end method

.method public setScaledDx(F)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    return-void
.end method

.method public setScaledDy(F)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    return-void
.end method

.method public setScaledRatio(F)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    return-void
.end method

.method public setStartTag(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    return-void
.end method

.method public setWallpaperView(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    return-void
.end method

.method public setXpp(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method
