.class public Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
.super Landroid/widget/FrameLayout;
.source "KeyguardInfinityPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;
    }
.end annotation


# static fields
.field private static final AOD_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

.field private static final AOD_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.samsung.android.app.aodservice/cache/"

.field private static final DUMMY_HOME_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

.field private static final DUMMY_HOME_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

.field private static final DUMMY_LOCK_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/"

.field private static final HOME_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

.field private static final HOME_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/"

.field private static final LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

.field private static final LOCK_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/"

.field private static final LOCK_PREVIEW_URI:Ljava/lang/String; = "content://com.android.systemui.keyguard.image"

.field private static final MODE_AOD:I = 0x1

.field private static final MODE_HOME:I = 0x3

.field private static final MODE_LOCK:I = 0x2

.field private static final MODE_OFF:I = 0x0

.field private static final MSG_GO_NEXT_MODE:I = 0x63

.field private static final ORIGIN_VIEW_HEIGHT:I = 0xb90

.field private static final ORIGIN_VIEW_WIDTH:I = 0x5a0

.field private static final PREVIEW_ROOT:Ljava/lang/String; = "/storage/emulated/"

.field private static final TAG:Ljava/lang/String; = "KeyguardInfinityPreview"

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"


# instance fields
.field private mAodCapturedView:Landroid/widget/ImageView;

.field private mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

.field private mBackgroundView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

.field private mColorInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mCurrentPlusValue:F

.field private mDPlus:I

.field private mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

.field private mHandler:Landroid/os/Handler;

.field private mHomeBackgroundView:Landroid/widget/ImageView;

.field private mHomeCapturedView:Landroid/widget/ImageView;

.field private mIsAodAvailable:Z

.field private mIsChangeHolding:Z

.field private mIsShowing:Z

.field private mLockBackgroundView:Landroid/widget/ImageView;

.field private mLockCapturedView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mStartPlusValue:I

.field private mTarget:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;)V
    .locals 4

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, -0xc8

    .line 103
    iput v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    const/16 v0, 0x64

    .line 104
    iput v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mStartPlusValue:I

    .line 106
    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mStartPlusValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 107
    iput-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mTarget:[F

    .line 115
    new-instance v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    .line 134
    iput-boolean p5, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    .line 135
    iput-object p7, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    .line 137
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$layout;->keyguard_infinity_preview:I

    const/4 p5, 0x0

    invoke-static {p1, p2, p5}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    sget p1, Lcom/android/systemui/R$id;->root_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    .line 140
    sget p1, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    .line 141
    sget p1, Lcom/android/systemui/R$id;->aod_gradient_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/infinity/preview/GradientView;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    .line 142
    sget p1, Lcom/android/systemui/R$id;->lock_background_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    .line 143
    sget p1, Lcom/android/systemui/R$id;->home_background_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    .line 144
    sget p1, Lcom/android/systemui/R$id;->aod_captured_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    .line 145
    sget p1, Lcom/android/systemui/R$id;->lock_captured_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    .line 146
    sget p1, Lcom/android/systemui/R$id;->home_captured_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    .line 147
    sget p1, Lcom/android/systemui/R$id;->galaxy_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->isRTL()Z

    move-result p1

    const/high16 p2, 0x44b40000    # 1440.0f

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setPivotX(F)V

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setPivotY(F)V

    .line 155
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    int-to-float p7, p3

    div-float v0, p7, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    int-to-float v1, p4

    const/high16 v2, 0x45390000    # 2960.0f

    div-float v3, v1, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setPivotX(F)V

    .line 163
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    if-eqz p6, :cond_2

    div-float/2addr v1, p7

    mul-float/2addr v1, p2

    sub-float/2addr v2, v1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    .line 168
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 169
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setPivotY(F)V

    .line 173
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 176
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->initBackgroundView()V

    .line 177
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->initCapturedView(II)V

    .line 179
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    const-string p2, "orchid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    const-string/jumbo p2, "silver"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->setHorizontalLocation(I)V

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goNextMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/GalaxyViewCircle;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;F)F
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    return p1
.end method

.method private getLegacyCapturedBitmap()Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "getLegacyCapturedBitmap()"

    .line 545
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 553
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v0, p0

    goto :goto_2

    .line 555
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCapturedImageView(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    .line 557
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 558
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 559
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 560
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v0, v3

    .line 564
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v0, v3

    .line 562
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v3
.end method

.method private getLockCapturedBitmap(II)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "getLockCapturedBitmap()"

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.android.systemui.keyguard.image"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "/custom?width=%d&height=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "uri : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 532
    :try_start_0
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 534
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->getLegacyCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private goAodMode()V
    .locals 12

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "goAodMode()"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x8fc

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 312
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 313
    new-instance v3, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$5;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x3e8

    .line 321
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 322
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 324
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 327
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    aput-object v3, v0, v1

    .line 328
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x190

    .line 329
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    .line 330
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 331
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 333
    iget-object v6, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    iget v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    int-to-float v2, v2

    add-float v7, v0, v2

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x7d0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V

    .line 335
    iput v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goHomeMode()V
    .locals 12

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "goHomeMode()"

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x8fc

    .line 387
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 392
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 393
    iget-object v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 395
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v1, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    aput-object v4, v6, v3

    .line 396
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0xc8

    .line 398
    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 399
    new-instance v2, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 402
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_3

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 403
    iget-object v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 404
    iget-object v5, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v3, [F

    fill-array-data v10, :array_5

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 405
    iget-object v6, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v3, [F

    fill-array-data v11, :array_6

    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 407
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v2, v11, v7

    aput-object v4, v11, v0

    aput-object v5, v11, v3

    aput-object v6, v11, v1

    .line 408
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    .line 410
    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 411
    invoke-virtual {v10, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 412
    new-instance v0, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 413
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 415
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    iget v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/high16 v2, 0x42480000    # 50.0f

    add-float v4, v0, v2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x7d0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V

    .line 417
    iput v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goLockMode()V
    .locals 13

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "goLockMode()"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x8fc

    .line 340
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    .line 342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$6;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v1, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 351
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 352
    new-instance v4, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    new-array v0, v1, [F

    .line 357
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 358
    new-instance v4, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$7;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 365
    new-instance v4, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x3e8

    .line 366
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v1, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 371
    iget-object v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v1, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 373
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v1, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v4, v6, v0

    .line 374
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 375
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 376
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 377
    new-instance v0, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 380
    iget-object v7, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    iget v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/high16 v2, 0x42480000    # 50.0f

    sub-float v8, v0, v2

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x7d0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V

    .line 382
    iput v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goNextMode()V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goNextMode(): mCurrentMode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardInfinityPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    if-nez v0, :cond_5

    .line 256
    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goOffMode()V

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goHomeMode()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V

    goto :goto_0

    .line 258
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    if-eqz v0, :cond_4

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goAodMode()V

    goto :goto_0

    .line 261
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V

    :cond_5
    :goto_0
    return-void
.end method

.method private goOffMode()V
    .locals 4

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "goOffMode()"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x258

    .line 279
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    .line 283
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$4;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 303
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private holdChangeMode(J)V
    .locals 2

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    .line 241
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initBackgroundView()V
    .locals 6

    const-string v0, "com.samsung.android.wallpaper.res"

    const-string v1, "KeyguardInfinityPreview"

    const-string v2, "initBackgroundView()"

    .line 438
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/preview/GradientView;->setGradientColor(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    const-string v2, "black"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "keyguard_default_wallpaper"

    const-string v3, "default_wallpaper"

    if-nez v1, :cond_0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 450
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v2, v1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 460
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 463
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 466
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private initCapturedView(II)V
    .locals 7

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "initCapturedView()"

    .line 471
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, " isn\'t exist"

    const-string v5, "initCapturedView(): "

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 479
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 481
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 484
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 485
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->getLockCapturedBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 491
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v6, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 492
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 499
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object p2, p1

    goto :goto_3

    .line 501
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p1, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

    .line 503
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 505
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 506
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p2, v6

    .line 510
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p2, v6

    .line 508
    :goto_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    if-eqz p2, :cond_4

    .line 514
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 515
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method private isRTL()Z
    .locals 1

    .line 584
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 421
    iget v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 422
    new-instance v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;Lcom/android/systemui/infinity/preview/GalaxyViewCircle;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 431
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 432
    invoke-virtual {p2, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    new-instance p0, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {p0}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "onPause()"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    .line 207
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "onResume()"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public reset()V
    .locals 3

    const-string v0, "KeyguardInfinityPreview"

    const-string v1, "reset()"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    .line 215
    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mStartPlusValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    .line 217
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->changePlusValue(F)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->changeAlpha(F)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 236
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setHomeSensorEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setIsAodAvailable(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    return-void
.end method
