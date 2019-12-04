.class public Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public static final TAG_FRESH_DRAWABLE:I

.field public static final TAG_IS_APP_COLOR:I

.field public static final TAG_IS_PERSONA:I

.field public static final TAG_SHADOW_BITMAP:I


# instance fields
.field private mAlphaByQsExpansion:F

.field private mAnimationRunningVisibility:I

.field private mBouncerShowing:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentNotificationType:I

.field private mDarkAmount:F

.field private mDragListener:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$LockscreenNotificationIconsOnlyContainerCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

.field private mIsDozing:Z

.field private mMoreText:Landroid/widget/TextView;

.field private mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mVisibilityAnimatorListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget v0, Lcom/android/keyguard/R$id;->tag_fresh_drawable:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_FRESH_DRAWABLE:I

    .line 66
    sget v0, Lcom/android/keyguard/R$id;->tag_is_persona:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_IS_PERSONA:I

    .line 67
    sget v0, Lcom/android/keyguard/R$id;->tag_is_appcolor:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_IS_APP_COLOR:I

    .line 68
    sget v0, Lcom/android/keyguard/R$id;->tag_shadow_bitmap:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_SHADOW_BITMAP:I

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDarkAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDragListener:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$LockscreenNotificationIconsOnlyContainerCallback;

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mVisibilityAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mClickListener:Landroid/view/View$OnClickListener;

    .line 194
    sget-object v0, Lcom/android/systemui/statusbar/iconsOnly/-$$Lambda$LockscreenNotificationIconsOnlyController$Yij96f3APkrr2R_uu5wHN-x9mZs;->INSTANCE:Lcom/android/systemui/statusbar/iconsOnly/-$$Lambda$LockscreenNotificationIconsOnlyController$Yij96f3APkrr2R_uu5wHN-x9mZs;

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 244
    new-instance p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;IZ)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setContainerVisibility(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateContainerAlpha()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->openDetailNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$LockscreenNotificationIconsOnlyContainerCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDragListener:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$LockscreenNotificationIconsOnlyContainerCallback;

    return-object p0
.end method

.method static synthetic lambda$new$0()V
    .locals 2

    const-string v0, "N.I.O."

    const-string v1, "mTimeoutRunnable"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openDetailNotification()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v1, v2, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    const-wide/16 v0, 0x320

    .line 163
    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 164
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private setContainerVisibility(IZ)V
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, p1, :cond_2

    .line 300
    iget p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    if-ne p2, v2, :cond_1

    return-void

    .line 303
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    move p2, v1

    .line 307
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    if-ne v0, p1, :cond_4

    if-eqz p2, :cond_3

    return-void

    .line 312
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    .line 316
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContainerVisibility() visibility = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", animate = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "N.I.O."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_7

    .line 321
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    .line 322
    iget-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    const/4 v2, 0x0

    if-nez p1, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    move v3, v0

    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 323
    iget-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v3, 0x0

    .line 325
    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    .line 326
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mVisibilityAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 328
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 330
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 332
    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    :goto_2
    return-void
.end method

.method private setMoreText(I)V
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->over_flow_number:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateTextAppearance()V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 441
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateContainerAlpha()V
    .locals 2

    .line 552
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAnimationRunningVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 559
    :cond_0
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private updateIconContentDescription()V
    .locals 0

    return-void
.end method


# virtual methods
.method public calculateAlphaByQsExpansion(FZII)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    int-to-float p2, p4

    sub-float/2addr p1, p2

    sub-int/2addr p3, p4

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 530
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpl-float p2, p1, v1

    if-nez p2, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const p2, 0x3e99999a    # 0.3f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    .line 536
    :goto_0
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    .line 542
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateContainerAlpha()V

    return-void
.end method

.method public createImageViewIconArray(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    sget v1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_FRESH_DRAWABLE:I

    sget v2, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_IS_APP_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->setTagKeys(II)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->getIconArraySize()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->clearAllImageViewIcon()V

    :cond_1
    const/4 v0, 0x0

    .line 267
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 268
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 269
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 270
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 271
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->setKey(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateNotificationPreviewList(Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;)V

    return-void
.end method

.method public getCallbockInLockscreenNotificationManager()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;
    .locals 0

    return-object p0
.end method

.method public getIconContainer()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-object p0
.end method

.method public getNotificationIconsOnlyContainerHeight()I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public hasLockNotiIcons()Z
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inflateNotificationIconsOnlyContainer(Landroid/view/ViewStub;)V
    .locals 1

    .line 171
    sget v0, Lcom/android/systemui/R$layout;->notification_icons_only_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 172
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 182
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method public isIconContainerVisibility()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 492
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconContainerVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconsOnlyTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconContainerVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 501
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->createImageViewIconArray(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onNotificationTypeChanged(I)V
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateIconContainerVisibility(I)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mBouncerShowing:Z

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 548
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDarkAmount:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsDozing:Z

    return-void
.end method

.method public setOnClickEvent()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setOnClickEvent(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setStackScrollLayout(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public setSwipeAnimator(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    .line 416
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setIconSlotView(Landroid/view/View;)V

    return-void
.end method

.method public updateIconContainerVisibility(I)V
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 281
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mBouncerShowing:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 282
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setContainerVisibility(IZ)V

    goto :goto_3

    .line 283
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsDozing:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDarkAmount:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 286
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setContainerVisibility(IZ)V

    goto :goto_3

    .line 284
    :cond_4
    :goto_2
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setContainerVisibility(IZ)V

    .line 288
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setNIOType(I)V

    .line 289
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mCurrentNotificationType:I

    :cond_5
    return-void
.end method

.method public updateNotificationIconsOnlyPosition(ILcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->isCenterAlignClockType:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 450
    :cond_1
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result v0

    iget v1, p2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    add-int/2addr v0, v1

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result v0

    sub-int v0, p1, v0

    .line 457
    :cond_2
    iget p1, p2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    float-to-int p1, p1

    .line 460
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p2

    .line 461
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNotiIconPaddingStart()I

    move-result v1

    .line 463
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNotiIconPaddingTop()I

    move-result v2

    .line 464
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNotiIconPaddingStartOffset()I

    move-result v3

    .line 465
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNotiIconPaddingTopOffset()I

    move-result p2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    if-eq v3, v4, :cond_4

    add-int/2addr v0, v1

    :cond_4
    :goto_1
    if-eq v2, v4, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    if-eq p2, v4, :cond_6

    add-int/2addr p1, p2

    .line 482
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p1, p1

    sget-object v2, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const/4 v3, 0x0

    invoke-static {p2, v1, p1, v2, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, v0

    sget-object v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, p1, p2, v0, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method

.method public updateNotificationPreviewList(Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;)V
    .locals 6

    .line 342
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->getIconArraySize()I

    move-result v0

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 349
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->getIconArrayChild(I)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v3

    .line 353
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 354
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 355
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroid/widget/ImageView;

    if-nez v5, :cond_2

    .line 356
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 361
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    if-lez p1, :cond_e

    const/4 v0, 0x4

    if-gt p1, v0, :cond_8

    move v0, v3

    :goto_3
    if-ge v0, p1, :cond_6

    .line 367
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 368
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_5

    .line 369
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v3, p1, :cond_e

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_e

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v0, v2, :cond_7

    goto :goto_5

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;I)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_6
    if-ge v2, p1, :cond_a

    if-ge v2, v0, :cond_a

    .line 385
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 386
    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_9

    .line 387
    iget-object v5, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    const/4 v0, 0x3

    if-ge v3, v0, :cond_c

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v0, v2, :cond_b

    goto :goto_8

    .line 398
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;I)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 402
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-lt v1, v0, :cond_d

    .line 403
    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_d
    sub-int/2addr p1, v0

    .line 407
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setMoreText(I)V

    .line 408
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIconContainer:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;)V

    .line 411
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateIconContentDescription()V

    return-void
.end method

.method public updateTextAppearance()V
    .locals 2

    .line 428
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mCurrentNotificationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 430
    sget v0, Lcom/android/keyguard/R$style;->small_notification_preview_more_text_style:I

    goto :goto_1

    .line 431
    :cond_1
    sget v0, Lcom/android/keyguard/R$style;->notification_preview_more_text_style:I

    .line 429
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method
