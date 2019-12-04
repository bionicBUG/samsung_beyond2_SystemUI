.class public Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;
.super Ljava/lang/Object;
.source "IndicatorMarqueeGardener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;
    }
.end annotation


# instance fields
.field private mHasSomethingChanged:Z

.field private mLastOrientation:I

.field private mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

.field mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mLastOrientation:I

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mHasSomethingChanged:Z

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMarqueeGardenValues()V

    return-void
.end method

.method private updateMarqueeGardenValues()V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getHorizontalShift()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getDirection()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setHorizontalShift(I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->needToReverseDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getDirection()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setDirection(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getVerticalShift()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setVerticalShift(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getVerticalShift()I

    move-result v0

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, -0x1

    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->copyShiftValues()Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getHorizontalShift()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftLeft(I)V

    .line 128
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftTop(I)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getHorizontalShift()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftRight(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setShiftBottom(I)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->hasSameShiftValues(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mHasSomethingChanged:Z

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    const-string v0, "updateMarqueeGardenValues()"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->printShiftValues(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getShiftBottom()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftBottom()I

    move-result p0

    return p0
.end method

.method public getShiftLeft()I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftLeft()I

    move-result p0

    return p0
.end method

.method public getShiftRight()I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftRight()I

    move-result p0

    return p0
.end method

.method public getShiftTop()I
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->getShiftTop()I

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 88
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMarqueeGardenValues()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 71
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMarqueeGardenValues()V

    .line 80
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mLastOrientation:I

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 94
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public popIsSomethingChanged()Z
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mHasSomethingChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    const-string v2, "popIfSomethingChanged()"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->printShiftValues(Ljava/lang/String;)V

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mHasSomethingChanged:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public updateMaxShiftSize(I)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->mMarqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->setMaxShiftSize(I)V

    return-void
.end method
