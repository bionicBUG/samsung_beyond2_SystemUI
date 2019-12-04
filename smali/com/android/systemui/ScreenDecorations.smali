.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;,
        Lcom/android/systemui/ScreenDecorations$CameraDeviceState;,
        Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
    }
.end annotation


# static fields
.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field private static sHideCutoutForGearVr:Z


# instance fields
.field protected cutout_thickness:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAssistHintBlocked:Z

.field private mAssistHintVisible:Z

.field private mBottomOverlay:Landroid/view/View;

.field private final mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

.field mCameraDeviceStateCallbackFilterPackage:[Ljava/lang/String;

.field mCameraDeviceStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/ScreenDecorations$CameraDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayDensity:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayMaxSize:I

.field private mDisplayMinSize:I

.field private mGearVrDocked:Z

.field private mGearVrEntered:Z

.field private mGearVrPersistentVrMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mInGesturalMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReceivingNavBarColor:Z

.field private mOverlay:Landroid/view/View;

.field private mPendingRotationChange:Z

.field private mRotation:I

.field protected mRoundedDefault:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mRoundedDefaultBottom:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mRoundedDefaultTop:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field protected mfront_camera_enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsReceivingNavBarColor:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mfront_camera_enable:Z

    const-string v0, "com.samsung.adaptivebrightnessgo"

    .line 163
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateCallbackFilterPackage:[Ljava/lang/String;

    .line 563
    new-instance v0, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 949
    new-instance v0, Lcom/android/systemui/ScreenDecorations$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object p0
.end method

.method private fade(Landroid/view/View;ZZ)V
    .locals 15

    move-object/from16 v8, p1

    const-wide/16 v0, 0xfa

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v9, 0x0

    if-eqz p2, :cond_2

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 267
    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x0

    .line 268
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 274
    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v3, :cond_1

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 277
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 278
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v5, 0x2ee

    .line 281
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ee66666    # 0.45f

    const v12, 0x3f2b851f    # 0.67f

    invoke-direct {v7, v9, v0, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v13

    .line 283
    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    invoke-direct {v14, v0, v9, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f7851ec    # 0.97f

    const-wide/16 v5, 0x190

    move-object v0, p0

    move-object v7, v14

    .line 284
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    const v2, 0x3f7851ec    # 0.97f

    const v3, 0x3f828f5c    # 1.02f

    .line 286
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v10

    const v2, 0x3f828f5c    # 1.02f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 288
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ScreenDecorations;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 290
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 291
    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 292
    invoke-virtual {v11, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 294
    :goto_1
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 296
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 298
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 299
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_2
    return-void
.end method

.method private getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 845
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "ScreenDecorOverlayBottom"

    .line 846
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 847
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x55

    .line 851
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x33

    .line 849
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    return-object v0
.end method

.method private hasRoundedCorners()Z
    .locals 1

    .line 762
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hideAssistHandles()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 638
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    :cond_0
    return-void
.end method

.method private isLandscape(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method public static synthetic lambda$aq1MVJyy_LkZ11q5t5cPVZOqbG0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method public static rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setSize(Landroid/view/View;I)V
    .locals 0

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 893
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 894
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 895
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupDecorations()V
    .locals 7

    .line 485
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners:I

    const/4 v2, 0x0

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    .line 487
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 489
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rounded_corners:I

    .line 491
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    .line 492
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v3, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 506
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 510
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 511
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    .line 513
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$uZ3_EBeyY03Q4m_N8Qx9CmU10zo;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$uZ3_EBeyY03Q4m_N8Qx9CmU10zo;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    new-instance v0, Lcom/android/systemui/ScreenDecorations$2;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v1, v3, v6}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 524
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 527
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 528
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 531
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 552
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->cutout_thickness:I

    .line 555
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->cutout_thickness:I

    if-lez v0, :cond_0

    .line 556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateMap:Ljava/util/HashMap;

    .line 557
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 558
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private setupStatusBarPadding(I)V
    .locals 3

    .line 795
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 798
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "sysui_rounded_content_padding"

    invoke-static {v0, v2, p1, v1}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    .line 801
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    .line 802
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->status_bar:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string v1, "CollapsedStatusBarFragment"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 804
    new-instance v0, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    const-string p1, "QS"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    :cond_1
    return-void
.end method

.method private setupStatusBarPaddingIfNeeded()V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPadding(I)V

    :cond_0
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 1

    .line 772
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->sHideCutoutForGearVr:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 777
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111008c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldHostHandles()Z
    .locals 0

    .line 382
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return p0
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 387
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldHostHandles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 393
    :cond_1
    new-instance v0, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateDisplayResolutionInfo()Z

    .line 436
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vr"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManager;

    if-eqz v0, :cond_2

    .line 445
    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$GNwyg0HIFaxI4YsxonVvp4DHGm8;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$GNwyg0HIFaxI4YsxonVvp4DHGm8;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/vr/GearVrManager;->registerGearVrListener(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method private updateAssistantHandleViews()V
    .locals 12

    .line 702
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 704
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 705
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 707
    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 709
    :goto_0
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v6, 0xb4

    const/16 v7, 0x55

    const/16 v8, 0x10e

    const/16 v9, 0x53

    const/16 v10, 0x8

    if-nez v5, :cond_1

    .line 710
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 711
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 712
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 713
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 714
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 715
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    if-ne v5, v11, :cond_2

    .line 717
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 718
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 719
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 720
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 721
    invoke-direct {p0, v1, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 722
    invoke-direct {p0, v3, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    const/4 v11, 0x3

    if-ne v5, v11, :cond_3

    .line 724
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 725
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 727
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 728
    invoke-direct {p0, v0, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 729
    invoke-direct {p0, v1, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x2

    if-ne v5, v11, :cond_4

    .line 731
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 732
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 733
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 735
    invoke-direct {p0, v0, v7, v6}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 736
    invoke-direct {p0, v2, v9, v8}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateColorInversion(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 579
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 581
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    .line 585
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    return-void
.end method

.method private updateDisplayResolutionInfo()Z
    .locals 6

    .line 167
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMinSize:I

    .line 168
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMaxSize:I

    .line 169
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayDensity:I

    .line 171
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 172
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 173
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMinSize:I

    .line 174
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMaxSize:I

    .line 175
    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v3, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayDensity:I

    .line 177
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMinSize:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayMaxSize:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayDensity:I

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateLayoutParams()V
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOrientation()V
    .locals 4

    .line 613
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must call on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 614
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateDisplayResolutionInfo()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_3

    .line 621
    :cond_2
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 623
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 624
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 626
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz v0, :cond_3

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hideAssistHandles()V

    .line 630
    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :cond_3
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 651
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050286

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 654
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 659
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 660
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 661
    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_rounded_size"

    .line 662
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateView(Landroid/view/View;II)V
    .locals 0

    .line 741
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float p0, p3

    .line 742
    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private updateViews()V
    .locals 14

    .line 667
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 669
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 670
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 672
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v5, 0xb4

    const/16 v6, 0x55

    const/16 v7, 0x10e

    const/16 v8, 0x53

    const/16 v9, 0x5a

    const/16 v10, 0x35

    const/4 v11, 0x0

    const/16 v12, 0x33

    if-nez v4, :cond_0

    .line 673
    invoke-direct {p0, v0, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 674
    invoke-direct {p0, v1, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 675
    invoke-direct {p0, v2, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 676
    invoke-direct {p0, v3, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    .line 678
    invoke-direct {p0, v0, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 679
    invoke-direct {p0, v1, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 680
    invoke-direct {p0, v2, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 681
    invoke-direct {p0, v3, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    const/4 v13, 0x3

    if-ne v4, v13, :cond_2

    .line 683
    invoke-direct {p0, v0, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 684
    invoke-direct {p0, v1, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 685
    invoke-direct {p0, v2, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 686
    invoke-direct {p0, v3, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    .line 688
    invoke-direct {p0, v0, v6, v5}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 689
    invoke-direct {p0, v1, v10, v9}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 690
    invoke-direct {p0, v2, v8, v7}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 691
    invoke-direct {p0, v3, v12, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 694
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateAssistantHandleViews()V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    .line 696
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method private updateWindowVisibilities()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    return-void
.end method

.method private updateWindowVisibility(Landroid/view/View;)V
    .locals 4

    .line 751
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$id;->display_cutout:I

    .line 752
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 753
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result p0

    .line 754
    sget v3, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    .line 755
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    if-nez p0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 757
    :cond_4
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 8

    const/high16 p0, 0x3f800000    # 1.0f

    const/high16 v0, 0x40000000    # 2.0f

    .line 237
    invoke-static {v0, p0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 238
    invoke-static {v0, p0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 239
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput p0, v3, v5

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 240
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v1, v6, v4

    aput p0, v6, v5

    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v1, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    .line 241
    invoke-static {v3, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p2

    .line 242
    invoke-static {v3, v1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    if-eqz p4, :cond_0

    const/4 p4, -0x1

    goto :goto_0

    :cond_0
    move p4, v5

    .line 244
    :goto_0
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    int-to-float p4, p4

    mul-float v6, p4, p2

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    aput v6, v3, v4

    mul-float/2addr p4, p3

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr p4, v6

    aput p4, v3, v5

    .line 244
    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 247
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p2, v3

    aput p2, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    aput p3, v2, v5

    .line 247
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 250
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 252
    sget-boolean p3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p3, :cond_1

    .line 253
    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 256
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 257
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 259
    :goto_1
    invoke-virtual {p2, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 260
    invoke-virtual {p2, p7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 811
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 821
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 824
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v0, :cond_0

    .line 825
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const-string v0, "ScreenDecorOverlay"

    .line 828
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 829
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    .line 833
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x55

    .line 831
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    const/4 v0, 0x1

    .line 835
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 836
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->isLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x2

    .line 837
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x1

    .line 838
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 840
    :cond_3
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method handleNavigationModeChange(I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$4F6CKqAgtSx8ZovPRT6WEWEYS4E;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eq v0, p1, :cond_1

    .line 218
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    .line 220
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez p1, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 222
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$handleNavigationModeChange$0$ScreenDecorations(I)V
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->handleNavigationModeChange(I)V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$5$ScreenDecorations()V
    .locals 1

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 600
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$onDarkIntensity$7$ScreenDecorations(F)V
    .locals 0

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->onDarkIntensity(F)V

    return-void
.end method

.method public synthetic lambda$onTuningChanged$6$ScreenDecorations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sysui_rounded_size"

    .line 865
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 866
    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 867
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 868
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eqz p2, :cond_1

    .line 871
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :catch_0
    :cond_1
    if-nez v0, :cond_2

    move v0, p1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    .line 883
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 884
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 885
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 886
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$setAssistHintBlocked$2$ScreenDecorations(Z)V
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintBlocked(Z)V

    return-void
.end method

.method public synthetic lambda$setAssistHintVisible$1$ScreenDecorations(Z)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    return-void
.end method

.method public synthetic lambda$setupDecorations$4$ScreenDecorations()V
    .locals 2

    .line 514
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$startOnScreenDecorationsThread$3$ScreenDecorations(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/16 v3, 0x40

    if-eq p1, v3, :cond_2

    const/16 v3, 0x80

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 463
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrEntered:Z

    :cond_1
    if-ne p2, v2, :cond_6

    .line 466
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrPersistentVrMode:Z

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    .line 455
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrEntered:Z

    :cond_3
    if-ne p2, v2, :cond_6

    .line 458
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrPersistentVrMode:Z

    goto :goto_0

    .line 451
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrDocked:Z

    goto :goto_0

    .line 448
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrDocked:Z

    .line 473
    :cond_6
    :goto_0
    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->sHideCutoutForGearVr:Z

    .line 474
    iget-boolean p2, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrDocked:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrEntered:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrPersistentVrMode:Z

    if-eqz p2, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->sHideCutoutForGearVr:Z

    .line 475
    sget-boolean p2, Lcom/android/systemui/ScreenDecorations;->sHideCutoutForGearVr:Z

    if-eq p2, p1, :cond_9

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 590
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$u2-DKz75Y1DFKYeQQOCZ63Y1RIU;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$u2-DKz75Y1DFKYeQQOCZ63Y1RIU;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDarkIntensity(F)V
    .locals 3

    .line 900
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$H58YcqHfTlqHUTnUqzBcpBlMcG8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$H58YcqHfTlqHUTnUqzBcpBlMcG8;-><init>(Lcom/android/systemui/ScreenDecorations;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 905
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 906
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 908
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 909
    invoke-virtual {v1, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 913
    sget v1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 915
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/CornerHandleView;

    .line 918
    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    .line 919
    invoke-virtual {p0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    :cond_2
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DDV7R8qUScHNgJnxXUvMQsh13LI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DDV7R8qUScHNgJnxXUvMQsh13LI;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAssistHintBlocked(Z)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$X65dAPl3paBdNr5xrYJHzDmgROE;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 368
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    .line 369
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :cond_1
    return-void
.end method

.method public setAssistHintVisible(Z)V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$v4Vg-fK79EV22k9HdjvuSqrLHx4;-><init>(Lcom/android/systemui/ScreenDecorations;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintBlocked:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    .line 327
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    if-eq v1, p1, :cond_7

    .line 328
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    .line 330
    sget p1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CornerHandleView;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CornerHandleView;

    .line 332
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CornerHandleView;

    .line 334
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/CornerHandleView;

    .line 337
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    goto :goto_0

    .line 351
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 352
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 347
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, p1, v0, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 348
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 343
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 344
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 339
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v1, p1, v5}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 340
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mAssistHintVisible:Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/ScreenDecorations;->fade(Landroid/view/View;ZZ)V

    .line 356
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    :cond_8
    :goto_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPaddingIfNeeded()V

    .line 204
    const-class v0, Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 205
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 206
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    new-instance v1, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v0

    .line 205
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mInGesturalMode:Z

    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 376
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "ScreenDecorations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 378
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
