.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;
.super Ljava/lang/Object;
.source "PhoneStatusBarClockManager.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    }
.end annotation


# instance fields
.field private mClockBlocked:Z

.field private mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field private mClockView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGrandParentView:Landroid/view/ViewGroup;

.field private mIsChangedClockPosition:Z

.field private mLeftContainer:Landroid/view/ViewGroup;

.field private mMiddleContainer:Landroid/view/ViewGroup;

.field private mRightContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method private addClockView(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private makeClockView()Landroid/widget/TextView;
    .locals 4

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;)V

    .line 150
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_clock_tag_home_indicator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 152
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$style;->IndicatorClock:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 p0, 0x11

    .line 155
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const p0, -0x42000001    # -0.12499999f

    .line 157
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    return-object v0
.end method

.method private removeClockView(Landroid/view/ViewGroup;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 p0, 0x8

    .line 137
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getClockPosition()Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-object p0
.end method

.method public getClockView()Landroid/view/View;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getClockWidth()I
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;

    if-eqz v0, :cond_0

    .line 187
    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTextMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 83
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "[QuickStar]PhoneStatusBarClockManager"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 85
    sget v1, Lcom/android/systemui/R$id;->left_clock_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->middle_clock_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->right_clock_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    goto :goto_0

    :cond_0
    const-string p0, "onAttachedToWindow(), mGrandParentView is null"

    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 97
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "[QuickStar]PhoneStatusBarClockManager"

    invoke-virtual {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 6

    .line 56
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isLeftClockPosition()Z

    move-result v0

    .line 57
    const-class v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isMiddleClockPosition()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 59
    :goto_0
    const-class v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isRightClockPosition()Z

    move-result v3

    .line 60
    const-class v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v5, "clock"

    invoke-virtual {v4, v5}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isBlocked(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateQuickStarStyle() left:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", middle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", right:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mClockBlocked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[QuickStar]PhoneStatusBarClockManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 66
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 68
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_1

    .line 70
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-eq v4, v0, :cond_4

    .line 73
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    :cond_4
    return-void
.end method

.method public updateResources()V
    .locals 4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateResources() mGrandParentView is null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChangedClockPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mClockPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockPosition()Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]PhoneStatusBarClockManager"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_2

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->removeClockView(Landroid/view/ViewGroup;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->removeClockView(Landroid/view/ViewGroup;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->removeClockView(Landroid/view/ViewGroup;)V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->makeClockView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    .line 113
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;->$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockPosition()Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    .line 128
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 130
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    :cond_4
    :goto_2
    return-void
.end method
