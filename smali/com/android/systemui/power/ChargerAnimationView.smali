.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "ChargerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    }
.end annotation


# instance fields
.field private mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

.field private mAnimationPlaying:Z

.field private mBackGroundAnim:Landroid/animation/AnimatorSet;

.field private mBackGroundView:Landroid/widget/LinearLayout;

.field private mBatteryChangeLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryTextAnim:Landroid/animation/AnimatorSet;

.field private mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mCurrentBatteryLevel:I

.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z

.field private mIsUltraFastCharging:Z

.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 65
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsScreenOn:Z

    .line 66
    iput-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsUltraFastCharging:Z

    .line 70
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 71
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentOrientation:I

    const/4 p2, 0x2

    .line 72
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    .line 86
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    return-void
.end method

.method private changeBatteryLevelText()V
    .locals 5

    .line 210
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 211
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    sub-int v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 218
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    .line 219
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/ChargerAnimationView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/power/ChargerAnimationView$3;-><init>(Lcom/android/systemui/power/ChargerAnimationView;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dp2px(F)F
    .locals 0

    .line 302
    iget p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    mul-float/2addr p0, p1

    return p0
.end method

.method private setBatteryLevelTextAnimation()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x2bc

    .line 172
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    .line 173
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 175
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 182
    new-instance v1, Lcom/android/systemui/power/ChargerAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/ChargerAnimationView$2;-><init>(Lcom/android/systemui/power/ChargerAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setChargerAnimation()V
    .locals 3

    .line 232
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x439b0000    # 310.0f

    .line 233
    invoke-direct {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 234
    invoke-direct {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v1, 0xd

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsUltraFastCharging:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "charging_superfast.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "charging_normal.json"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    .line 96
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    .line 98
    sget v0, Lcom/android/systemui/R$id;->charger_animation_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 100
    sget v0, Lcom/android/systemui/R$id;->backgroundArea:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 101
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->batteryLevel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 104
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelTextAnimation()V

    return-void
.end method

.method protected setBackGroundAnimation()V
    .locals 11

    .line 133
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const v6, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const/4 v8, 0x1

    aput v7, v3, v8

    const-string v7, "alpha"

    invoke-static {v1, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0x190

    .line 136
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 137
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    new-array v2, v2, [F

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    aput v6, v2, v4

    aput v5, v2, v8

    invoke-static {v3, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 141
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 142
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 144
    new-instance v1, Lcom/android/systemui/power/ChargerAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected setChargerAnimationViewVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-void
.end method

.method protected setWindowDisplay(Landroid/view/Display;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method protected startChargerAnimation(IZZ)V
    .locals 2

    .line 246
    iput-boolean p3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsUltraFastCharging:Z

    .line 248
    iget-boolean p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    const-string p3, "PowerUI.ChargerAnimationView"

    if-eqz p2, :cond_0

    const-string p0, "Animation is playing, return"

    .line 249
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_1

    .line 256
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 261
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimation()V

    .line 264
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 265
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const-string p1, "Animation Started"

    .line 267
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    .line 270
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/android/systemui/power/ChargerAnimationView$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/power/ChargerAnimationView$4;-><init>(Lcom/android/systemui/power/ChargerAnimationView;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method
