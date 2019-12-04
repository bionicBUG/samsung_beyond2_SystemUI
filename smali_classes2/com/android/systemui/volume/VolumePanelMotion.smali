.class public Lcom/android/systemui/volume/VolumePanelMotion;
.super Ljava/lang/Object;
.source "VolumePanelMotion.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    return-void
.end method

.method private getBackgroundAlphaAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/Animator;
    .locals 2

    if-eqz p2, :cond_0

    const/high16 p0, 0x437f0000    # 255.0f

    goto :goto_0

    :cond_0
    const p0, 0x43658000    # 229.5f

    .line 128
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p2, p0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p0, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 130
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$SNOlcfn4R0pa167EwEmAfU3Hd_g;

    invoke-direct {p2, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$SNOlcfn4R0pa167EwEmAfU3Hd_g;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBackgroundMotionAnimation(Landroid/view/ViewGroup;III)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p3, p3

    const/4 v1, 0x0

    aput p3, v0, v1

    int-to-float p3, p4

    const/4 p4, 0x1

    aput p3, v0, p4

    .line 142
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0x15e

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 143
    new-instance p4, Lcom/android/systemui/volume/VolumePanelMotion$3;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelMotion$3;-><init>(Lcom/android/systemui/volume/VolumePanelMotion;Landroid/view/ViewGroup;I)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    new-instance p0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$syFITCa4sf2CMoMcXiRCKqhgq6c;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$syFITCa4sf2CMoMcXiRCKqhgq6c;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    new-instance p0, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {p0}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3
.end method

.method private getRowsAlphaAnimation(Landroid/view/ViewGroup;ZIZ)Landroid/animation/AnimatorSet;
    .locals 14

    move-object v0, p1

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const-string v5, "alpha"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_4

    move v8, v6

    move v9, v8

    .line 179
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v8, v10, :cond_2

    .line 180
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 181
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    new-array v11, v4, [F

    .line 182
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v6

    aput v3, v11, v7

    invoke-static {v10, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v11, 0xc8

    .line 183
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v9, v9, 0x1

    int-to-long v11, v9

    .line 184
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 185
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    const/16 v5, 0x15e

    .line 191
    div-int/2addr v5, v9

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_2

    .line 193
    :cond_3
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/16 :goto_7

    .line 196
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v7

    move v9, v6

    :goto_3
    const/4 v10, -0x1

    if-le v8, v10, :cond_8

    .line 197
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 198
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    new-array v11, v4, [F

    .line 199
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v6

    aput v3, v11, v7

    invoke-static {v10, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0x32

    .line 200
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v9, v9, 0x1

    int-to-long v12, v9

    .line 201
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 202
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_5

    .line 203
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move/from16 v12, p3

    if-le v10, v12, :cond_7

    goto :goto_4

    :cond_5
    move/from16 v12, p3

    .line 204
    :goto_4
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move/from16 v12, p3

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 209
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    const-wide/16 v5, 0x1e

    .line 210
    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    mul-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_6

    .line 212
    :cond_9
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 215
    :goto_7
    new-instance v1, Lcom/android/systemui/volume/VolumePanelMotion$4;

    move-object v3, p0

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumePanelMotion$4;-><init>(Lcom/android/systemui/volume/VolumePanelMotion;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2
.end method

.method private getTitleViewAlphaAnimation(Landroid/widget/TextView;Z)Landroid/animation/Animator;
    .locals 3

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, p0

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    const-string p0, "alpha"

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 p0, 0xc8

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x32

    goto :goto_1

    :cond_1
    move-wide v1, p0

    .line 166
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 p0, 0x0

    .line 167
    :goto_2
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 168
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$getBackgroundAlphaAnimation$1(Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method static synthetic lambda$getBackgroundMotionAnimation$2(Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 155
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBottom(I)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$Ckh4Ik28N9uCWNxJ6ClYUhEZ1Xo;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$Ckh4Ik28N9uCWNxJ6ClYUhEZ1Xo;-><init>(Lcom/android/systemui/volume/VolumePanelMotion;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 121
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 27
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelMotion;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public disposeActionObserver()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_0
    return-void
.end method

.method public initDependencies(Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/store/VolumePanelStore;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumePanelMotion;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 55
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public synthetic lambda$dispatch$0$VolumePanelMotion(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 116
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startActiveRowAlphaAnimation(Lcom/android/systemui/volume/view/VolumeRowView;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 271
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 273
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    new-instance v0, Lcom/android/systemui/volume/VolumePanelMotion$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumePanelMotion$6;-><init>(Lcom/android/systemui/volume/VolumePanelMotion;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startDismissAnimation(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/view/animation/SineIn80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineIn80;-><init>()V

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumePanelMotion$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/VolumePanelMotion$2;-><init>(Lcom/android/systemui/volume/VolumePanelMotion;Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startExpandButtonRotateAnimation(Landroid/view/View;Z)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    if-eqz p2, :cond_0

    const/high16 p2, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    aput p2, p0, v0

    const-string p2, "rotation"

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

    .line 265
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    new-instance p1, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startExpandCollapseAnimation(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/TextView;ZZIIIZ)V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    .line 230
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/volume/VolumePanelMotion;->getBackgroundAlphaAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    :cond_0
    invoke-direct {p0, p1, p6, p7, p8}, Lcom/android/systemui/volume/VolumePanelMotion;->getBackgroundMotionAnimation(Landroid/view/ViewGroup;III)Landroid/animation/Animator;

    move-result-object p1

    .line 236
    iget-object p7, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p8, v2, [Landroid/animation/Animator;

    aput-object p1, p8, v1

    invoke-virtual {p7, p8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    xor-int/lit8 p1, p5, 0x1

    xor-int/lit8 p7, p4, 0x1

    and-int/2addr p1, p7

    .line 238
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/volume/VolumePanelMotion;->getTitleViewAlphaAnimation(Landroid/widget/TextView;Z)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p3, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p7, v2, [Landroid/animation/Animator;

    aput-object p1, p7, v1

    invoke-virtual {p3, p7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    if-eqz p5, :cond_2

    if-nez p4, :cond_2

    if-nez p9, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    .line 244
    :goto_0
    invoke-direct {p0, p2, p4, p6, p1}, Lcom/android/systemui/volume/VolumePanelMotion;->getRowsAlphaAnimation(Landroid/view/ViewGroup;ZIZ)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 245
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 247
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/systemui/volume/VolumePanelMotion$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/VolumePanelMotion$5;-><init>(Lcom/android/systemui/volume/VolumePanelMotion;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mPanelAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method

.method public startShowAnimation(Landroid/view/ViewGroup;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumePanelMotion$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumePanelMotion$1;-><init>(Lcom/android/systemui/volume/VolumePanelMotion;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
