.class public Lcom/android/systemui/appdock/view/AppDockExpandedUIView;
.super Landroid/widget/LinearLayout;
.source "AppDockExpandedUIView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/VisibilityInterface;


# instance fields
.field private mEditUI:Lcom/android/systemui/appdock/view/AppDockEditUIView;

.field private mGridUI:Lcom/android/systemui/appdock/view/AppDockGridUIView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    const/4 v0, 0x4

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->mGridUI:Lcom/android/systemui/appdock/view/AppDockGridUIView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockGridUIView;->hide()V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->mEditUI:Lcom/android/systemui/appdock/view/AppDockEditUIView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->hide()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 28
    sget v0, Lcom/android/systemui/R$id;->appdock_grid_ui:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockGridUIView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->mGridUI:Lcom/android/systemui/appdock/view/AppDockGridUIView;

    .line 29
    sget v0, Lcom/android/systemui/R$id;->appdock_edit_ui:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockEditUIView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->mEditUI:Lcom/android/systemui/appdock/view/AppDockEditUIView;

    return-void
.end method

.method public show()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->mGridUI:Lcom/android/systemui/appdock/view/AppDockGridUIView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockGridUIView;->show()V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->mEditUI:Lcom/android/systemui/appdock/view/AppDockEditUIView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->hide()V

    return-void
.end method
