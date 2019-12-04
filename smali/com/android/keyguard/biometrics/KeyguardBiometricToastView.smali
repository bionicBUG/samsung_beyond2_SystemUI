.class public Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    }
.end annotation


# instance fields
.field private final mAnimHandler:Landroid/os/Handler;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBodyAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mIsAnimating:Z

.field private mIsShowing:Z

.field private mIsUpdating:Z

.field private mToastBodyView:Landroid/widget/LinearLayout;

.field private mToastGuideText:Landroid/widget/TextView;

.field private mToastIcon:Landroid/widget/ImageView;

.field private mToastProgressBar:Landroid/widget/ProgressBar;

.field private mToastRoot:Landroid/widget/FrameLayout;

.field private mUpdateAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;FFLandroid/view/View;J)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private appearAnimation(JI)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 121
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 122
    new-instance v2, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 125
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 128
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 129
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p2, v1, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object v2, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 130
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;

    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private appearAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
    .locals 7

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setText(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution()V

    .line 166
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {p2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v3, 0xc8

    .line 167
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 168
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {p2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    .line 171
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 174
    iget-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 175
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p2, v2, v1

    aput-object v3, v2, v0

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 176
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;ILcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeTextAnim(FFLandroid/view/View;J)V
    .locals 7

    .line 203
    sget-object v6, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method private changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 207
    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    .line 208
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 209
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$4;

    invoke-direct {p2, p0, p6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$4;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private disappearAnimation(J)V
    .locals 8

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 243
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 244
    iget-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;J)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    .line 247
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    new-instance v5, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 251
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 253
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 254
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 255
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object v5, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 256
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 279
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getTextWidth()I
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 470
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 471
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_toast_text_max_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method private hasGuideText()Z
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reset()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 318
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 324
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 329
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    .line 334
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsUpdating:Z

    return-void
.end method

.method private setViewAttribution()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 446
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->getTextWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_biometric_toast_inner_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_biometric_toast_image_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 448
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_biometric_toast_text_padding_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 449
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 450
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsUpdating:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$drawable;->ic_biometric_toast_result_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$drawable;->ic_biometric_toast_progress_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 458
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 459
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    .line 284
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;IILcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateToastView(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->updateAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->appearAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss() , force = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricToastView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 360
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    .line 370
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->disappearAnimation(J)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 374
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardBiometricToastView"

    const-string v1, "onFinishInflate()"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget v0, Lcom/android/keyguard/R$id;->toast_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 107
    sget v0, Lcom/android/keyguard/R$id;->toast_body_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    .line 108
    sget v0, Lcom/android/keyguard/R$id;->biometric_toast_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/android/keyguard/R$id;->biometric_toast_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/android/keyguard/R$id;->biometric_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_background_auth_unlock_instruction_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution()V

    .line 114
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    const/16 v0, 0x8

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBiometricToastView"

    const-string p1, "Icon view is null"

    .line 387
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show(JI)V
    .locals 2

    .line 340
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "KeyguardBiometricToastView"

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Do not show toast by video call"

    .line 346
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "show()"

    .line 349
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->appearAnimation(JI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 4

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update toast contents = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , already showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricToastView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$7;->$SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_4

    .line 429
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsUpdating:Z

    .line 430
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_1

    .line 431
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_tablet_unlock_failed_text:I

    goto :goto_0

    .line 432
    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_unlock_failed_text:I

    :goto_0
    move v1, v0

    .line 433
    sget v0, Lcom/android/keyguard/R$drawable;->ic_biometric_toast_lock_icon:I

    goto :goto_5

    .line 422
    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsUpdating:Z

    .line 423
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_3

    .line 424
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_tablet_unlock_failed_text:I

    goto :goto_1

    .line 425
    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_unlock_failed_text:I

    :goto_1
    move v1, v0

    .line 426
    sget v0, Lcom/android/keyguard/R$drawable;->ic_biometric_toast_lock_icon:I

    goto :goto_5

    .line 415
    :cond_4
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsUpdating:Z

    .line 416
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_5

    .line 417
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_tablet_fingerprint_unlock_successed_text:I

    goto :goto_2

    .line 418
    :cond_5
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_fingerprint_unlock_successed_text:I

    :goto_2
    move v1, v0

    .line 419
    sget v0, Lcom/android/keyguard/R$drawable;->ic_biometric_toast_unlock_icon:I

    goto :goto_5

    .line 408
    :cond_6
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsUpdating:Z

    .line 409
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_7

    .line 410
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_tablet_unlock_successed_text:I

    goto :goto_3

    .line 411
    :cond_7
    sget v0, Lcom/android/keyguard/R$string;->kg_background_auth_unlock_successed_text:I

    :goto_3
    move v1, v0

    .line 412
    sget v0, Lcom/android/keyguard/R$drawable;->ic_biometric_toast_unlock_icon:I

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v1

    .line 438
    :goto_5
    sget-object v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    if-eq p1, v2, :cond_9

    .line 439
    invoke-direct {p0, p1, v1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->updateToastView(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V

    :cond_9
    return-void
.end method
