.class public Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardAnimatedWallpaper.java"


# instance fields
.field private mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field private mContext:Landroid/content/Context;

.field private mCurrentWhich:I

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDlsViewMode:I

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field private mHasWindowFocus:Z

.field private mIsPlayingAnimation:Z

.field private mIsPreview:Z

.field private mLastMobileKeyboardCoverd:I

.field private mPackageName:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowing:Z

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v7, p4

    .line 99
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V
    .locals 1

    .line 104
    invoke-direct {p0, p1, p6, p3}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V

    const/4 p6, 0x0

    .line 61
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 63
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    const/4 v0, 0x2

    .line 64
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 65
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 66
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 82
    iput p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    .line 85
    new-instance p6, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)V

    iput-object p6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    .line 107
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    .line 108
    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    .line 109
    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    .line 110
    iput p7, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 111
    new-instance p1, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 112
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    return p1
.end method

.method private getContextOf(Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    .line 116
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XmlName = animation;Default package name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardAnimatedWallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, -0x1000000

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 125
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getContextOf(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 134
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 132
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception p0

    .line 128
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "cleanUp"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 304
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    .line 239
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;-><init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->generateAnimationFromXml()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 184
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onAttachedToWindow()V

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string v0, "WAKE_LOCK"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCREEN_TURNED_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    goto :goto_0

    .line 149
    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 309
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 315
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    .line 316
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz p1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 2

    .line 270
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    if-eq v0, p1, :cond_1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDlsViewModeChanged(), mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_1

    .line 277
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "onPause() - screenTurnedOff"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "onResume() - screenTurningOn"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 166
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_1

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 170
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public playAnimation()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    const-string v1, "KeyguardAnimatedWallpaper"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string p0, "playAnimation() skip by DLS"

    .line 203
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "playAnimation"

    .line 207
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 209
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->playAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "stopAnimation"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 228
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->stopAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "update New wallpaper!"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->cleanUp()V

    .line 291
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
