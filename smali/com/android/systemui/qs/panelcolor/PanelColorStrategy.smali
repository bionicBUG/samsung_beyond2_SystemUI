.class public abstract Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;
.super Ljava/lang/Object;
.source "PanelColorStrategy.java"


# instance fields
.field protected mColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->loadCommonColors(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->mColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->recursiveSearchToUpdateColors(Landroid/view/ViewGroup;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isOneOfUs(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    instance-of p0, p1, Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract loadCommonColors(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;
.end method

.method protected recursiveSearchToUpdateColors(Landroid/view/ViewGroup;I)V
    .locals 3

    if-eqz p1, :cond_3

    const/16 v0, 0x14

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->updateCommonColorDraw(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 32
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->recursiveSearchToUpdateColors(Landroid/view/ViewGroup;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->isOneOfUs(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 38
    check-cast p1, Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;

    iget-object p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->mColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;->onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract updateCommonColorDraw(Landroid/view/ViewGroup;)V
.end method
