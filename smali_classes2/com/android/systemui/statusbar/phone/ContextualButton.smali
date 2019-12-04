.class public Lcom/android/systemui/statusbar/phone/ContextualButton;
.super Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.source "ContextualButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;
    }
.end annotation


# instance fields
.field private mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

.field protected final mIconResId:I

.field private mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field private mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 52
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    return-void
.end method

.method public constructor <init>(ILcom/samsung/systemui/splugins/navigationbar/IconType;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    return-void
.end method


# virtual methods
.method attachToGroup(Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method protected getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2

    .line 133
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->getKeyButtonMapper()Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hide()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    return v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setListener(Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->clearAnimationCallbacks()V

    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;->onVisibilityChanged(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V

    :cond_2
    return-void
.end method

.method public show()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    return v2

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public updateIcon()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDarkIntensity()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 75
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    :cond_2
    :goto_0
    return-void
.end method
