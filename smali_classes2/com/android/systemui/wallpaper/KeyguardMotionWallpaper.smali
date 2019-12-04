.class public Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAngularSum:F

.field private mAnimatedAngularSum:F

.field private mAsyncTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapListInitFinished:Z

.field private mBlendingPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mCurrentWhich:I

.field private mDeltaOfAngularSum:F

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mInterruptedGyro:Landroid/hardware/Sensor;

.field private mIsSensorRegistered:Z

.field private mLastHeight:I

.field private mLastParsedPackage:Ljava/lang/String;

.field private mLastParsedXml:I

.field private mLastWidth:I

.field private mMotionBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPkgContext:Landroid/content/Context;

.field private mPkgName:Ljava/lang/String;

.field private mPrevAngularSum:F

.field private mPrevAnimatedAngularSum:F

.field private mPrevStartAngularSum:F

.field private mRangeOfRotation:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimestamp:F

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 123
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 128
    invoke-direct {p0, p1, p2, p5}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V

    const/4 p5, 0x0

    .line 107
    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mOrientation:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    .line 113
    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    .line 114
    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    const/4 v0, 0x2

    .line 115
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mCurrentWhich:I

    .line 179
    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    .line 742
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 752
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 835
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 836
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    .line 837
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 130
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 131
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    .line 132
    iput p6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mCurrentWhich:I

    .line 133
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string p5, "wallpaper"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 134
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string p5, "sensor"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 135
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    const p5, 0x1002b

    invoke-virtual {p1, p5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    .line 136
    new-instance p1, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 139
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    .line 140
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 144
    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    .line 147
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 149
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 151
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;[F)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->handleInvalidate([F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mCurrentWhich:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "cropBitmap"

    .line 487
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 492
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 493
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    int-to-float v7, v3

    div-float v8, v7, v5

    .line 500
    iget v9, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    mul-int v10, v2, v9

    iget v11, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    mul-int v12, v11, v3

    const/high16 v13, 0x3f800000    # 1.0f

    if-le v10, v12, :cond_1

    int-to-float v4, v9

    div-float/2addr v4, v7

    mul-float/2addr v4, v13

    goto :goto_0

    :cond_1
    int-to-float v7, v11

    div-float/2addr v7, v4

    mul-float v4, v7, v13

    .line 505
    :goto_0
    iput v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mCroppedScale:F

    .line 508
    iget v7, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v13

    div-float/2addr v7, v4

    .line 509
    iget v9, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v13

    div-float/2addr v9, v4

    div-float v4, v7, v5

    sub-float/2addr v6, v4

    const/4 v4, 0x0

    cmpg-float v10, v6, v4

    if-gez v10, :cond_2

    move v6, v4

    :cond_2
    div-float v5, v9, v5

    sub-float v5, v8, v5

    cmpg-float v8, v5, v4

    if-gez v8, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    .line 531
    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-nez v5, :cond_4

    .line 532
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-ne v2, v5, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-ne v3, v5, :cond_4

    const-string p0, "It doesn\'t need to crop bitmap"

    .line 533
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 535
    :cond_4
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v8, 0x1

    if-lt v5, v8, :cond_8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-lt v5, v8, :cond_8

    iget v5, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    if-lt v5, v8, :cond_8

    iget p0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    if-ge p0, v8, :cond_5

    goto :goto_3

    .line 538
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr p0, v5

    if-gt p0, v2, :cond_7

    .line 539
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr p0, v2

    if-le p0, v3, :cond_6

    goto :goto_2

    :cond_6
    const-string p0, "Cropping..."

    .line 543
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 545
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 544
    invoke-static {p1, p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    const-string p0, "Calculated crop size error"

    .line 540
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_8
    :goto_3
    const-string p0, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    .line 536
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-object v1
.end method

.method private handleInvalidate([F)V
    .locals 4

    const/4 v0, 0x0

    .line 764
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 765
    aget p1, p1, v2

    .line 766
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 767
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 769
    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    goto :goto_0

    .line 772
    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 8

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "init()"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 557
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "bitmapLoaded == false"

    .line 558
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v1, p0, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    .line 565
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastWidth:I

    .line 566
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastHeight:I

    return-void

    .line 570
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    .line 571
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v3, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    .line 572
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    if-nez v1, :cond_4

    goto/16 :goto_3

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRangeOfRotation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 581
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 582
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    .line 583
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 584
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    .line 586
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 587
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 588
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 592
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    mul-int v4, v0, v3

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    mul-int v6, v5, v1

    const/high16 v7, 0x3f800000    # 1.0f

    if-le v4, v6, :cond_5

    int-to-float v3, v3

    int-to-float v4, v1

    goto :goto_2

    :cond_5
    int-to-float v3, v5

    int-to-float v4, v0

    :goto_2
    div-float/2addr v3, v4

    mul-float/2addr v3, v7

    .line 597
    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    int-to-float v4, v4

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float/2addr v4, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    .line 598
    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    int-to-float v5, v5

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v5, v1

    mul-float/2addr v5, v0

    .line 600
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 601
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 604
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 605
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 606
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->init()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 608
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_7
    :goto_3
    const-string p0, "mViewWidth == 0 || mViewHeight == 0"

    .line 573
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_4
    const-string p0, "mMotionBitmapList == null || mMotionBitmapList.size() == 0"

    .line 552
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    const-string v4, "layer"

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 452
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    const-string v3, "type"

    .line 444
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setType(I)V

    goto :goto_1

    :cond_3
    const-string v3, "id_path_image"

    .line 446
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPath(Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 457
    :cond_5
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private registerSensor()V
    .locals 3

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "registerSensor"

    .line 731
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 733
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private startAlphaAnimator(FFZ)V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "mAlphaAnimator starts"

    .line 784
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 790
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 791
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    goto :goto_0

    .line 793
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 794
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 797
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 798
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x41800000    # 16.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 799
    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 802
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 826
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 832
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private unregisterSensor()V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "unregisterSensor"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private updateWallpaper()V
    .locals 2

    .line 184
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    .line 423
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "cleanUp"

    .line 681
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAsyncTaskList size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 687
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->recycleBitmap()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1112
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: prev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mOrientation:I

    .line 1115
    sget-boolean p1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    if-nez p1, :cond_0

    .line 1116
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 917
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 918
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 921
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_1

    .line 922
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onDraw()"

    .line 613
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 620
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "bitmapLoaded == false"

    .line 621
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move v0, v2

    .line 628
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 629
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 630
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 631
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 639
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 640
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v0

    .line 641
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 642
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 650
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_7
    :goto_3
    const-string p0, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    .line 615
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 157
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayout called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KeyguardMotionWallpaper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastWidth:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastHeight:I

    if-eq p1, v1, :cond_1

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    .line 165
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastWidth:I

    .line 166
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastHeight:I

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 723
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onPause()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onPause()"

    .line 724
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 707
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onResume()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onResume()"

    .line 708
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 842
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1002b

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 844
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 845
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 846
    aget v4, v0, v3

    const/4 v5, 0x2

    .line 847
    aget v0, v0, v5

    .line 855
    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mOrientation:I

    if-ne v6, v5, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    const-string v7, "KeyguardMotionWallpaper"

    if-nez v6, :cond_3

    .line 857
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    :cond_2
    const-string p0, "axisY is not biggest, stop animation"

    .line 858
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz v6, :cond_5

    .line 862
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v0, v0, v8

    if-lez v0, :cond_5

    :cond_4
    const-string p0, "axisX is not biggest, stop animation"

    .line 863
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 867
    :cond_5
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    if-eqz v6, :cond_6

    add-float/2addr v0, v2

    .line 869
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    goto :goto_1

    :cond_6
    add-float/2addr v0, v4

    .line 871
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    .line 873
    :goto_1
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    new-array v0, v5, [F

    .line 875
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    aput v2, v0, v1

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    aput v2, v0, v3

    .line 879
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 880
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    .line 881
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPrevAlpha(I)V

    .line 882
    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 884
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPrevAlpha()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v2

    if-eq v4, v2, :cond_9

    .line 885
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_8

    .line 887
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_7

    .line 888
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "mAlphaAnimator isRunning"

    .line 889
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 893
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 896
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 902
    :cond_a
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    :goto_4
    return-void
.end method

.method public onUnlock()V
    .locals 2

    .line 661
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onUnlock()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onUnlock()"

    .line 662
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_0
    return-void
.end method

.method public recycleBitmap()V
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 696
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    .line 698
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 701
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 670
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->reset()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "reset()"

    .line 671
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    .line 676
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "update()"

    .line 655
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method
