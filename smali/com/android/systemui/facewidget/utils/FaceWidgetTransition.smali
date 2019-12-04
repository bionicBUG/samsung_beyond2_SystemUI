.class public Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;
.super Ljava/lang/Object;
.source "FaceWidgetTransition.java"


# static fields
.field private static FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private mAdditionalTag:Ljava/lang/String;

.field private mAnimationState:I

.field private mAnimations:Landroid/animation/AnimatorSet;

.field private mContainer:Landroid/view/ViewGroup;

.field private mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

.field private final mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mSourceRootViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceRootViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mSubOptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetRootView:Landroid/view/View;

.field private mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mTransitionSourceViewNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionSourceViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSubOptionMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimationState:I

    .line 73
    new-instance v1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$1;-><init>(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 86
    new-instance v1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;-><init>(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 118
    iput-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FaceWidgetTransition "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetTransition"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->SCREEN_WIDTH:I

    .line 125
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->SCREEN_HEIGHT:I

    .line 127
    iput-object p3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    .line 128
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    if-nez p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 130
    :goto_0
    invoke-static {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateDefaultOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    .line 133
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 134
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->searchTransitionName(Landroid/view/View;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 137
    iget-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    new-instance p3, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;

    invoke-direct {p3, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->handleTransitionFinished(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimationState:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimationState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->removePreDrawListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/view/ViewGroup;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->buildAnimations()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;",
            "Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 753
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;Landroid/view/animation/Interpolator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;",
            "Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 761
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 762
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 763
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getStartDelay()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 765
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasCustomInterpolator()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getCustomInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 768
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private addFadeAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 5

    if-nez p5, :cond_0

    return-void

    .line 732
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x0

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 733
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p4, v2, v3

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object p2, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1, p5, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;Landroid/view/animation/Interpolator;)V

    .line 741
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_2

    .line 742
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result p2

    if-nez p2, :cond_2

    .line 743
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p3, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    .line 745
    sget-object p2, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1, p5, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;Landroid/view/animation/Interpolator;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addMoveAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 10

    if-eqz p2, :cond_9

    if-nez p5, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x2

    new-array v0, p1, [I

    new-array v1, p1, [I

    .line 542
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    if-nez p4, :cond_1

    .line 545
    new-instance p4, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;

    invoke-direct {p4, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;-><init>(Landroid/view/View;)V

    .line 548
    :cond_1
    iget v2, p4, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->locationOnScreenX:F

    float-to-int v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 549
    iget p4, p4, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->locationOnScreenY:F

    float-to-int p4, p4

    const/4 v2, 0x1

    aput p4, v0, v2

    new-array p4, p1, [I

    new-array v4, p1, [I

    if-eqz p3, :cond_6

    .line 555
    invoke-virtual {p3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 556
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getMovePivot()I

    move-result v5

    and-int/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v5, :cond_2

    .line 557
    aget v5, p4, v3

    aget v7, v0, v3

    sub-int/2addr v5, v7

    aput v5, v4, v3

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getMovePivot()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_3

    .line 559
    aget v5, p4, v3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v5, v7

    aget v7, v0, v3

    .line 560
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    aput v5, v4, v3

    goto :goto_0

    .line 562
    :cond_3
    aget v5, p4, v3

    int-to-float v5, v5

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    aget v7, v0, v3

    int-to-float v7, v7

    .line 563
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float/2addr v8, v9

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v5, v7

    aput v5, v4, v3

    .line 566
    :goto_0
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getMovePivot()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 567
    aget p4, p4, v2

    aget v5, v0, v2

    sub-int/2addr p4, v5

    aput p4, v4, v2

    goto :goto_1

    .line 568
    :cond_4
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getMovePivot()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    .line 569
    aget p4, p4, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr p4, v5

    aget v5, v0, v2

    .line 570
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    sub-int/2addr p4, v5

    aput p4, v4, v2

    goto :goto_1

    .line 572
    :cond_5
    aget p4, p4, v2

    int-to-float p4, p4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float/2addr v5, v7

    mul-float/2addr v5, v6

    add-float/2addr p4, v5

    float-to-int p4, p4

    aget v5, v0, v2

    int-to-float v5, v5

    .line 573
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    sub-int/2addr p4, v5

    aput p4, v4, v2

    :cond_6
    :goto_1
    new-array p4, p1, [I

    .line 578
    aget v5, v0, v3

    aget v6, v1, v3

    sub-int/2addr v5, v6

    aput v5, p4, v3

    .line 579
    aget v0, v0, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    aput v0, p4, v2

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    aget v5, p4, v3

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 584
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v5

    aget v6, p4, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 586
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v6

    aget v7, p4, v3

    int-to-float v7, v7

    add-float/2addr v6, v7

    aget v7, v4, v3

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 587
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v7

    aget p4, p4, v2

    int-to-float p4, p4

    add-float/2addr v7, p4

    aget p4, v4, v2

    int-to-float p4, p4

    add-float/2addr v7, p4

    .line 589
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result p4

    if-nez p4, :cond_7

    .line 590
    sget-object p4, Landroid/view/View;->X:Landroid/util/Property;

    new-array v8, p1, [F

    aput v1, v8, v3

    aput v6, v8, v2

    invoke-static {p2, p4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 592
    sget-object p4, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v1, p1, [F

    aput v5, v1, v3

    aput v7, v1, v2

    invoke-static {p2, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    if-eqz p3, :cond_8

    .line 601
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p2

    aget p4, v4, v3

    int-to-float p4, p4

    sub-float/2addr p2, p4

    .line 602
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p4

    aget v1, v4, v2

    int-to-float v1, v1

    sub-float/2addr p4, v1

    .line 604
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v1

    .line 605
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v4

    .line 607
    invoke-virtual {p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v5

    if-nez v5, :cond_8

    .line 608
    sget-object v5, Landroid/view/View;->X:Landroid/util/Property;

    new-array v6, p1, [F

    aput p2, v6, v3

    aput v1, v6, v2

    invoke-static {p3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 610
    sget-object p2, Landroid/view/View;->Y:Landroid/util/Property;

    new-array p1, p1, [F

    aput p4, p1, v3

    aput v4, p1, v2

    invoke-static {p3, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 635
    :cond_8
    invoke-direct {p0, v0, p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private addScaleAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez p4, :cond_1

    .line 649
    new-instance v3, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;

    invoke-direct {v3, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p4

    .line 652
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v5

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getScaleY()F

    move-result v7

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    .line 660
    iget v10, v3, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->w:F

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v12, :cond_2

    move v8, v13

    goto :goto_1

    :cond_2
    div-float/2addr v8, v10

    .line 661
    :goto_1
    iget v3, v3, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->h:F

    cmpl-float v10, v3, v11

    if-nez v10, :cond_3

    move v3, v13

    goto :goto_2

    :cond_3
    div-float v3, v9, v3

    :goto_2
    cmpl-float v9, v8, v11

    if-nez v9, :cond_4

    move v9, v13

    goto :goto_3

    :cond_4
    div-float v9, v13, v8

    :goto_3
    cmpl-float v10, v3, v11

    if-nez v10, :cond_5

    move v10, v13

    goto :goto_4

    :cond_5
    div-float v10, v13, v3

    .line 665
    :goto_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScaleRestrict()I

    move-result v12

    const/4 v14, 0x1

    and-int/2addr v12, v14

    if-eqz v12, :cond_6

    move v8, v13

    move v9, v8

    .line 668
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScaleRestrict()I

    move-result v12

    const/4 v15, 0x2

    and-int/2addr v12, v15

    if-eqz v12, :cond_7

    move v10, v13

    goto :goto_5

    :cond_7
    move v13, v3

    .line 672
    :goto_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScalePivot()I

    move-result v3

    and-int/2addr v3, v14

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v3, :cond_8

    .line 673
    invoke-virtual {v0, v11}, Landroid/view/View;->setPivotX(F)V

    .line 674
    invoke-virtual {v1, v11}, Landroid/view/View;->setPivotX(F)V

    goto :goto_6

    .line 675
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScalePivot()I

    move-result v3

    and-int/2addr v3, v15

    if-eqz v3, :cond_9

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    goto :goto_6

    .line 679
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 683
    :goto_6
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScalePivot()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_a

    .line 684
    invoke-virtual {v0, v11}, Landroid/view/View;->setPivotY(F)V

    .line 685
    invoke-virtual {v1, v11}, Landroid/view/View;->setPivotY(F)V

    goto :goto_7

    .line 686
    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScalePivot()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_b

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_7

    .line 690
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 694
    :goto_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 696
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_c

    .line 697
    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v15, [F

    aput v4, v14, v12

    mul-float/2addr v4, v8

    const/4 v8, 0x1

    aput v4, v14, v8

    invoke-static {v0, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v15, [F

    aput v5, v11, v12

    mul-float/2addr v5, v13

    aput v5, v11, v8

    invoke-static {v0, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_c
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v0

    if-nez v0, :cond_d

    mul-float/2addr v9, v6

    .line 702
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleX(F)V

    mul-float/2addr v10, v7

    .line 703
    invoke-virtual {v1, v10}, Landroid/view/View;->setScaleY(F)V

    .line 704
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v15, [F

    aput v9, v4, v12

    const/4 v5, 0x1

    aput v6, v4, v5

    invoke-static {v1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v15, [F

    aput v10, v4, v12

    aput v7, v4, v5

    invoke-static {v1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v0, p0

    .line 716
    invoke-direct {v0, v3, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    :cond_e
    :goto_8
    return-void
.end method

.method private buildAnimations()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V

    .line 424
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->consumeRemainedTransitionName(Ljava/util/Set;)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty animations. Ignore transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceWidgetTransition"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 433
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private consumeRemainedTransitionName(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setAnimations(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getClipBounds(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_1

    return-object v0

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 216
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 218
    new-instance p1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    neg-int v4, v4

    const/4 v5, 0x1

    aget v6, v1, v5

    neg-int v6, v6

    iget v7, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->SCREEN_WIDTH:I

    aget v3, v1, v3

    sub-int/2addr v7, v3

    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->SCREEN_HEIGHT:I

    aget v1, v1, v5

    sub-int/2addr p0, v1

    invoke-direct {p1, v4, v6, v7, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_3

    .line 220
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_4

    .line 224
    iget p0, v0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_5

    .line 228
    iget p0, v0, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_5
    and-int/lit8 p0, p2, 0x8

    if-eqz p0, :cond_6

    .line 232
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    return-object p1

    :cond_7
    :goto_0
    return-object v0
.end method

.method private handleTransitionFinished(Z)V
    .locals 2

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handle transition finished. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceWidgetTransition"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 389
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_holder:I

    if-eq p1, v0, :cond_1

    .line 398
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClipOnChildren(Landroid/view/View;Z)V

    :cond_1
    const/4 p1, 0x0

    .line 401
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimationState:I

    return-void
.end method

.method private hasFadeInSubOptions()Z
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    .line 300
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->isFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isReadyToPreDraw()Z
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "FaceWidgetTransition"

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target view is null. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 790
    :cond_0
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimationState:I

    if-eqz v0, :cond_1

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation already started. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 353
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setAnimations(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 356
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 360
    :cond_1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-void

    .line 364
    :cond_2
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 366
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 367
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removePreDrawListener()V
    .locals 3

    .line 803
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    const-string v1, "FaceWidgetTransition"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root view observer removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root view observer cannot removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    .line 811
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target view observer removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 815
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target view observer cannot removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private searchTransitionName(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;

    invoke-direct {v2, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-void

    .line 253
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 255
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    invoke-direct {p0, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->searchTransitionName(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setAnimations(Landroid/view/View;Landroid/view/View;)V
    .locals 10

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 453
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz p1, :cond_5

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v7, v1

    goto :goto_2

    :cond_5
    move v7, v3

    .line 470
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    if-nez v3, :cond_6

    .line 473
    iget-object v3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    goto :goto_3

    .line 475
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-static {v4, v3}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->combineOptions(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v3

    :goto_3
    move-object v8, v3

    .line 478
    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getClipFace()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClip(Landroid/view/View;ZI)V

    .line 479
    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getClipFace()I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClip(Landroid/view/View;ZI)V

    .line 480
    iget-object v3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;

    .line 482
    iget-object v3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getSourceViewCustomAnimator()Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScalePivot()I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 483
    iget-object v3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getTargetViewCustomAnimator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getScalePivot()I

    move-result v5

    invoke-direct {p0, p2, v4, v5}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 485
    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->needToTransition()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 489
    :cond_7
    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->isMoveEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v7, :cond_8

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object v6, v8

    .line 490
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addMoveAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    .line 493
    :cond_8
    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->isScaleEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v7, :cond_9

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object v6, v8

    .line 494
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addScaleAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    .line 497
    :cond_9
    invoke-virtual {v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->isFadeEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object v6, v8

    .line 498
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addFadeAnimation(Ljava/lang/String;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    :cond_a
    return-void
.end method

.method private setClip(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClip(Landroid/view/View;ZI)V

    return-void
.end method

.method private setClip(Landroid/view/View;ZI)V
    .locals 2

    if-eqz p1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->hasBlackList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->getClipBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 190
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    return-void

    .line 194
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;
    .locals 2

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 p0, p3, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 508
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_2

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    and-int/lit8 p0, p3, 0x8

    if-eqz p0, :cond_3

    .line 516
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_3
    and-int/lit8 p0, p3, 0x10

    if-eqz p0, :cond_4

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 520
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    .line 523
    :goto_1
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-object p2

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;
    .locals 0

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->addOption(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    return-object p0
.end method

.method public addOption(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 1

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceled. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetTransition"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->removePreDrawListener()V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 411
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->handleTransitionFinished(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 414
    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 418
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    const-string v1, "FaceWidgetTransition"

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "go targetView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    .line 317
    iput-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->isReadyToPreDraw()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "go not isReadyToPreDraw"

    .line 320
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->hasFadeInSubOptions()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mGlobalOption:Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->getTransitionType()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    const-string/jumbo p1, "source view gone instantly because FADE option is not enabled"

    .line 325
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/16 v0, 0x8

    .line 327
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 332
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Predraw listener added. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 335
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->handleTransitionFinished(Z)V

    .line 336
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 337
    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 341
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_5
    :goto_2
    const-string p0, "go mContainer or targetView is null"

    .line 310
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isReadyState()Z
    .locals 2

    .line 776
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimationState:I

    if-eqz v0, :cond_0

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isReadyState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAnimationState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceWidgetTransition"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAdditionalTag(Ljava/lang/String;)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->mAdditionalTag:Ljava/lang/String;

    return-void
.end method

.method public setClipOnAll(Landroid/view/View;Z)V
    .locals 0

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClipOnParents(Landroid/view/View;Z)V

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClipOnChildren(Landroid/view/View;Z)V

    return-void
.end method

.method public setClipOnChildren(Landroid/view/View;Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 167
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClip(Landroid/view/View;Z)V

    .line 173
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClipOnChildren(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setClipOnParents(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClip(Landroid/view/View;Z)V

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClipOnParents(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method
