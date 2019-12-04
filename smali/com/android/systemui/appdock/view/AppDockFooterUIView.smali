.class public Lcom/android/systemui/appdock/view/AppDockFooterUIView;
.super Landroid/widget/FrameLayout;
.source "AppDockFooterUIView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;
    }
.end annotation


# instance fields
.field private mEditCancelButton:Landroid/widget/Button;

.field private mEditContainer:Landroid/view/View;

.field private mEditSaveButton:Landroid/widget/Button;

.field private mEditTrayButton:Landroid/widget/Button;

.field private mFooterState:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

.field private mToggleExpandButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object p1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_LIST:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mFooterState:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    .line 32
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private fade(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 188
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateText()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditCancelButton:Landroid/widget/Button;

    sget v1, Lcom/android/systemui/R$string;->appdock_footer_edit_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditSaveButton:Landroid/widget/Button;

    sget v1, Lcom/android/systemui/R$string;->appdock_footer_edit_save:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    sget v0, Lcom/android/systemui/R$string;->appdock_footer_edit_tray:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishInflate$0$AppDockFooterUIView(Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/AppDockStateManager;->isGridViewPagerScrolling()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "isGridViewPagerScrolling : cannot change to edit mode."

    .line 46
    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_START:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    .line 50
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$AppDockFooterUIView(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_CANCEL:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    .line 55
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$AppDockFooterUIView(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_SAVE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    .line 60
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$3$AppDockFooterUIView(Landroid/view/View;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/AppDockStateManager;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/AppDockStateManager;->setExpanded(Z)V

    .line 65
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 124
    iget-object v2, p1, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;->action:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AppDockEditStateChangeEvent : action=%s"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    sget-object v1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

    iget-object p1, p1, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;->action:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    sget-object p1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_EXPANDED:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V

    goto :goto_0

    .line 127
    :cond_1
    sget-object p1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_EDIT:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V

    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;)V
    .locals 0

    .line 116
    iget-boolean p1, p1, Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;->toExpand:Z

    if-eqz p1, :cond_0

    .line 117
    sget-object p1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_EXPANDED:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V

    goto :goto_0

    .line 119
    :cond_0
    sget-object p1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_LIST:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "last=%d, new=%d, app=%d, measure size=[%d, %d]"

    .line 71
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateText()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 38
    sget v0, Lcom/android/systemui/R$id;->appdock_footer_edit_tray:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    .line 39
    sget v0, Lcom/android/systemui/R$id;->appdock_footer_edit_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->appdock_footer_edit_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditCancelButton:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->appdock_footer_edit_save:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditSaveButton:Landroid/widget/Button;

    .line 42
    sget v0, Lcom/android/systemui/R$id;->appdock_footer_toggle_expand:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$kR4_qFawf8tXmIpwGcvm0O03Lds;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$kR4_qFawf8tXmIpwGcvm0O03Lds;-><init>(Lcom/android/systemui/appdock/view/AppDockFooterUIView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/android/systemui/R$id;->appdock_footer_edit_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$VTZjgvqbesvmEA968LHFPiOLHEg;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$VTZjgvqbesvmEA968LHFPiOLHEg;-><init>(Lcom/android/systemui/appdock/view/AppDockFooterUIView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/android/systemui/R$id;->appdock_footer_edit_save:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$M1hO1ntFtf-uzp0uOkwIqhY-tJU;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$M1hO1ntFtf-uzp0uOkwIqhY-tJU;-><init>(Lcom/android/systemui/appdock/view/AppDockFooterUIView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$2bU2SQrxfHpmc3d0S5rB9zlp-vM;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockFooterUIView$2bU2SQrxfHpmc3d0S5rB9zlp-vM;-><init>(Lcom/android/systemui/appdock/view/AppDockFooterUIView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, p1, v1

    const-string p2, "app=%d, measure size=[%d, %d], insetConsumed=%b"

    .line 91
    invoke-static {p2, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_footer_margin_bottom:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 97
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    sget-object p2, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_footer_height:I

    invoke-static {p1, p2, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 98
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    sget-object p2, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_footer_height:I

    invoke-static {p1, p2, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_list_type_width:I

    invoke-static {p2, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 105
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    sget-object p2, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v0, Lcom/android/systemui/R$dimen;->appdock_footer_edit_tray_margin_left:I

    invoke-static {p1, p2, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 106
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditCancelButton:Landroid/widget/Button;

    sget-object p2, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v0, Lcom/android/systemui/R$dimen;->appdock_footer_edit_container_cancel_margin_right:I

    invoke-static {p1, p2, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_footer_text_size:I

    invoke-static {p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    .line 109
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditCancelButton:Landroid/widget/Button;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_footer_text_size:I

    invoke-static {p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditSaveButton:Landroid/widget/Button;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_footer_text_size:I

    invoke-static {p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    .line 112
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mFooterState:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V

    return-void
.end method

.method public updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "footerState=%s"

    .line 141
    invoke-static {v3, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    sget-object v1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$view$AppDockFooterUIView$FooterState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    const/16 v4, 0x8

    if-eq v1, v3, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$drawable;->appdock_ic_grid_view:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_width:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result v0

    .line 177
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v3, Lcom/android/systemui/R$dimen;->appdock_edit_ui_margin_right:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    sget-object v3, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    add-int/2addr v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->appdock_ic_1line_view:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mToggleExpandButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditTrayButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mEditContainer:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->fade(Landroid/view/View;Z)V

    .line 182
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->mFooterState:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    return-void
.end method
