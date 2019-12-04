.class public Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;
.super Ljava/lang/Object;
.source "AppDockAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;
    }
.end annotation


# static fields
.field public static final easeOutCirc:Landroid/view/animation/Interpolator;

.field public static final exitInterpolator:Landroid/view/animation/Interpolator;

.field public static mIsLayoutChangeAnimRunning:Z

.field private static sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->easeOutCirc:Landroid/view/animation/Interpolator;

    .line 22
    sget-object v0, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->exitInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 20
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->sListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addListener(Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static isIsLayoutChangeAnimRunning()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return v0
.end method

.method public static requestLayoutChangeAnimation(Landroid/view/View;)V
    .locals 5

    .line 31
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 32
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 33
    new-instance v1, Landroid/transition/Fade;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 34
    new-instance v1, Landroid/transition/Fade;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v3, 0x15e

    .line 35
    invoke-virtual {v0, v3, v4}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 36
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 37
    new-instance v1, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$1;

    invoke-direct {v1}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 49
    sput-boolean v2, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method

.method public static setIsLayoutChangeAnimRunning(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method
