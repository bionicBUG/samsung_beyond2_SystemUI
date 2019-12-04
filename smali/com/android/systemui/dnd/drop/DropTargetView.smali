.class public Lcom/android/systemui/dnd/drop/DropTargetView;
.super Landroid/widget/FrameLayout;
.source "DropTargetView.java"


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTextStringResId(II)I
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
        .end annotation
    .end param

    const/4 p0, 0x3

    if-ne p2, p0, :cond_0

    .line 47
    sget p0, Lcom/android/systemui/R$string;->sidescreen_applist_switch_screen:I

    return p0

    :cond_0
    const/4 p0, 0x5

    if-ne p1, p0, :cond_1

    .line 51
    sget p0, Lcom/android/systemui/R$string;->sidescreen_applist_popup_view:I

    return p0

    .line 54
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->sidescreen_applist_open_app:I

    return p0
.end method


# virtual methods
.method public animateFocusChange(Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 65
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput p1, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v5

    .line 65
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public bind(II)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
        .end annotation
    .end param

    .line 33
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/DropTargetView;->mText:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dnd/drop/DropTargetView;->getTextStringResId(II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 36
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/DropTargetView;->mIcon:Landroid/widget/ImageView;

    sget p2, Lcom/android/systemui/R$drawable;->dnd_ic_drop_target_popup:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    sget p1, Lcom/android/systemui/R$drawable;->drag_area_background_round_freeform:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/DropTargetView;->mIcon:Landroid/widget/ImageView;

    sget p2, Lcom/android/systemui/R$drawable;->dnd_ic_drop_target_split:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    sget p1, Lcom/android/systemui/R$drawable;->drag_area_background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 27
    sget v0, Lcom/android/systemui/R$id;->dnd_drop_target_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/dnd/drop/DropTargetView;->mIcon:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/android/systemui/R$id;->dnd_drop_target_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/dnd/drop/DropTargetView;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setFocus(Lcom/android/systemui/dnd/drop/DropTargetInfo;Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getDropTarget()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "target=%d, toFocus=%b"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/dnd/drop/DropTargetView;->animateFocusChange(Z)V

    return-void
.end method
