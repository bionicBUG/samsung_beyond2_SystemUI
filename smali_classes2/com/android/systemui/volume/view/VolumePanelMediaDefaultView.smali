.class public Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;
.super Landroid/widget/LinearLayout;
.source "VolumePanelMediaDefaultView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private final mContext:Landroid/content/Context;

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

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchTextDescription:Landroid/widget/TextView;

.field private mSwitchTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mObservers:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 77
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelMediaDefaultView$FGyZ9VXinG1UTvD58A0cPDrmshM;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelMediaDefaultView$FGyZ9VXinG1UTvD58A0cPDrmshM;-><init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 84
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Z)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 45
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 46
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 48
    sget p1, Lcom/android/systemui/R$id;->volume_DefaultVolumeControlSwitch:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitch:Landroid/widget/Switch;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitch:Landroid/widget/Switch;

    new-instance p2, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;-><init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    sget p1, Lcom/android/systemui/R$id;->volume_DefaultVolumeControlSwitchTitle:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitchTextTitle:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitchTextTitle:Landroid/widget/TextView;

    new-instance p2, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;-><init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->tw_volume_title_color_light:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10603eb

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 60
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitchTextTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    sget p1, Lcom/android/systemui/R$id;->volume_DefaultVolumeControlSwitchDescription:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitchTextDescription:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitchTextDescription:Landroid/widget/TextView;

    new-instance p2, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;-><init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->updateVisibility(Z)V

    return-void
.end method

.method public synthetic lambda$dispatch$0$VolumePanelMediaDefaultView(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 79
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 107
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 100
    :cond_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 94
    :cond_2
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 95
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->updateVisibility(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 126
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 130
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_1
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

    .line 70
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
