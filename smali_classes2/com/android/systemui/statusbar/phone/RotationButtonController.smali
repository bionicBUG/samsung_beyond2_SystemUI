.class public Lcom/android/systemui/statusbar/phone/RotationButtonController;
.super Ljava/lang/Object;
.source "RotationButtonController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;,
        Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private final mCancelPendingRotationProposal:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mHoveringRotationSuggestion:Z

.field private mIsNavigationBarShowing:Z

.field private mLastRotationSuggestion:I

.field mLastUnknownRotationProposedTick:J

.field private mListenersRegistered:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavBarMode:I

.field private mPendingRotationSuggestion:Z

.field private final mRemoveRotationProposal:Ljava/lang/Runnable;

.field private mRotWatcherListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateHideAnimator:Landroid/animation/Animator;

.field private mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

.field private final mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

.field private mStyleRes:I

.field private mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

.field private final mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/RotationButton;)V
    .locals 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;Lcom/android/systemui/statusbar/phone/RotationButtonController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    .line 88
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$9GntNFTDdKoyCtcSVI_eBCW3dMQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$9GntNFTDdKoyCtcSVI_eBCW3dMQ;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 90
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$rLt402gKIdgNcqykKz16VIeLAMM;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$rLt402gKIdgNcqykKz16VIeLAMM;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    .line 96
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    .line 100
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastUnknownRotationProposedTick:J

    .line 101
    iput v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mNavBarMode:I

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    .line 139
    iput p2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 141
    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 142
    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 145
    new-instance p1, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;Lcom/android/systemui/statusbar/phone/RotationButtonController$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    .line 146
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$nGgIS1iCjy5uWWIfPZ9LUPKtUUc;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$nGgIS1iCjy5uWWIfPZ9LUPKtUUc;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$ITAepcsPx2pDX6xNt-4OEwYvoRc;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$ITAepcsPx2pDX6xNt-4OEwYvoRc;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 150
    const-class p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/RotationButtonController;I)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->shouldOverrideUserLockPrefs(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Ljava/util/function/Consumer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/phone/RotationButton;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    return-object p0
.end method

.method private computeRotationProposalTimeout()I
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 477
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mHoveringRotationSuggestion:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x3e80

    goto :goto_0

    :cond_0
    const/16 p0, 0x1388

    :goto_0
    const/4 v1, 0x4

    .line 476
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method static hasDisable2RotateSuggestionFlag(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private incrementNumAcceptedRotationSuggestionsIfNeeded()V
    .locals 3

    .line 489
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    .line 490
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    add-int/2addr v1, v2

    .line 495
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private isRotateSuggestionIntroduced()Z
    .locals 2

    .line 482
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "num_rotation_suggestions_accepted"

    .line 483
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isRotationAnimationCCW(II)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-nez p1, :cond_2

    if-ne p2, v2, :cond_2

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    return p0

    :cond_4
    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-ne p1, v1, :cond_7

    if-ne p2, v0, :cond_7

    return v0

    :cond_7
    if-ne p1, v1, :cond_8

    if-ne p2, v2, :cond_8

    return p0

    :cond_8
    if-ne p1, v2, :cond_9

    if-nez p2, :cond_9

    return p0

    :cond_9
    if-ne p1, v2, :cond_a

    if-ne p2, v0, :cond_a

    return v0

    :cond_a
    if-ne p1, v2, :cond_b

    if-ne p2, v1, :cond_b

    return v0

    :cond_b
    return p0
.end method

.method public static synthetic lambda$ITAepcsPx2pDX6xNt-4OEwYvoRc(Lcom/android/systemui/statusbar/phone/RotationButtonController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$nGgIS1iCjy5uWWIfPZ9LUPKtUUc(Lcom/android/systemui/statusbar/phone/RotationButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotateSuggestionClick(Landroid/view/View;)V

    return-void
.end method

.method private onRotateSuggestionClick(Landroid/view/View;)V
    .locals 1

    .line 408
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->resetUnknownRotationProposed()V

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x507

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->incrementNumAcceptedRotationSuggestionsIfNeeded()V

    .line 413
    iget p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastRotationSuggestion:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotationLockedAtAngle(I)V

    return-void
.end method

.method private onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 417
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 418
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mHoveringRotationSuggestion:Z

    .line 420
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->rescheduleRotationTimeout(Z)V

    return p2
.end method

.method private onRotationSuggestionsDisabled()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 426
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rescheduleRotationTimeout(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 463
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 465
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 469
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 471
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->computeRotationProposalTimeout()I

    move-result p0

    int-to-long v1, p0

    .line 471
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetUnknownRotationProposed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 220
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastUnknownRotationProposedTick:J

    return-void
.end method

.method private shouldOverrideUserLockPrefs(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showAndLogRotationSuggestion()V
    .locals 1

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->rescheduleRotationTimeout(Z)V

    .line 433
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x508

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method


# virtual methods
.method addRotationCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-void
.end method

.method getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    return-object p0
.end method

.method getStyleRes()I
    .locals 0

    .line 400
    iget p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    return p0
.end method

.method public isRotationLocked()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$RotationButtonController()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public synthetic lambda$new$1$RotationButtonController()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    return-void
.end method

.method onDisable2FlagChanged(I)V
    .locals 0

    .line 384
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotationSuggestionsDisabled()V

    :cond_0
    return-void
.end method

.method onNavigationBarWindowVisibilityChange(Z)V
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq v0, p1, :cond_0

    .line 390
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eqz p1, :cond_0

    .line 393
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz p1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_0
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mNavBarMode:I

    return-void
.end method

.method onRotationProposal(IIZ)V
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->acceptRotationProposal()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastUnknownRotationProposedTick:J

    .line 317
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_2
    if-ne p1, p2, :cond_4

    .line 331
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->resetUnknownRotationProposed()V

    .line 334
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    .line 339
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    sget-boolean p3, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p3, :cond_5

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastUnknownRotationProposedTick:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-eqz p3, :cond_5

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p3, v2, v0

    if-gtz p3, :cond_5

    const-string p1, "RotationButtonController"

    const-string p2, "onRotationProposal rotation time over"

    .line 343
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->resetUnknownRotationProposed()V

    return-void

    .line 349
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastRotationSuggestion:I

    .line 350
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotationAnimationCCW(II)Z

    move-result p3

    if-eqz p2, :cond_8

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    .line 355
    sget p3, Lcom/android/systemui/R$style;->RotateButtonCCWStart0:I

    goto :goto_1

    :cond_7
    sget p3, Lcom/android/systemui/R$style;->RotateButtonCWStart0:I

    goto :goto_1

    :cond_8
    :goto_0
    if-eqz p3, :cond_9

    .line 353
    sget p3, Lcom/android/systemui/R$style;->RotateButtonCCWStart90:I

    goto :goto_1

    :cond_9
    sget p3, Lcom/android/systemui/R$style;->RotateButtonCWStart90:I

    .line 357
    :goto_1
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_a

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_WIN_ROTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 360
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p2

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_ROTATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 358
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 363
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 366
    :cond_a
    iput p3, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    .line 367
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->updateIcon()V

    .line 369
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mNavBarMode:I

    .line 370
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 p1, 0x1

    .line 376
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 377
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 372
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->showAndLogRotationSuggestion()V

    :goto_3
    return-void
.end method

.method registerListeners()V
    .locals 3

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    .line 159
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mNavBarMode:I

    .line 161
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method setDarkIntensity(F)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->setDarkIntensity(F)V

    return-void
.end method

.method setRotateSuggestionButtonState(Z)V
    .locals 3

    .line 199
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :goto_0
    return-void
.end method

.method setRotateSuggestionButtonState(ZZ)V
    .locals 5

    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/RotationButton;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 243
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 244
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_7

    .line 249
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 255
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 258
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 259
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 260
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    .line 263
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotateSuggestionIntroduced()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;->start(Landroid/view/View;)V

    .line 266
    :cond_5
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_6

    .line 267
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->show()Z

    move-result p1

    if-nez p1, :cond_b

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->hide()Z

    .line 269
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->show()Z

    goto :goto_0

    .line 272
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->show()Z

    goto :goto_0

    .line 275
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;->stop()V

    if-eqz p2, :cond_9

    .line 279
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 280
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 282
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->hide()Z

    return-void

    .line 287
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p2, p1, v2

    const-string p2, "alpha"

    .line 289
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 290
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    new-instance p2, Lcom/android/systemui/statusbar/phone/RotationButtonController$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$3;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 300
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_b
    :goto_0
    return-void
.end method

.method setRotationLockedAtAngle(I)V
    .locals 1

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    return-void
.end method

.method unregisterListeners()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    .line 176
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V

    .line 178
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
