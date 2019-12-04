.class public Lcom/android/systemui/appdock/view/AppDockGridUIView;
.super Landroid/widget/LinearLayout;
.source "AppDockGridUIView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/VisibilityInterface;
.implements Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;
.implements Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mContentView:Lcom/android/systemui/appdock/view/AppDockGridContentView;

.field private mSearchView:Lcom/android/systemui/appdock/view/AppDockSearchBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 86
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mSearchView:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->hide()V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mContentView:Lcom/android/systemui/appdock/view/AppDockGridContentView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->hide()V

    return-void
.end method

.method public synthetic lambda$show$0$AppDockGridUIView()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/systemui/appdock/model/BixbySearchPrediction;->getApplicationPredictions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 65
    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockDragLayer;->addDropTarget(Landroid/view/View;)V

    return-void
.end method

.method public onDragEnd(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)Landroid/graphics/Rect;
    .locals 0

    .line 91
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/appdock/view/AppDockGridUIView;->isOutOfBounds(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mContentView:Lcom/android/systemui/appdock/view/AppDockGridContentView;

    invoke-interface {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->findAppItemViewHolder(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 99
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p3

    const/4 p0, 0x1

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p0

    const-string p0, "return mBounds=%s, iconBounds=%s"

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_1
    return-object p3
.end method

.method public onDragStart(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)V
    .locals 1

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const-string p1, "dragTarget=%s, [%d, %d]"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDragging(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)V
    .locals 0

    .line 81
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/appdock/view/AppDockGridUIView;->isOutOfBounds(II)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 32
    sget v0, Lcom/android/systemui/R$id;->appdock_search:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mSearchView:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    .line 33
    sget v0, Lcom/android/systemui/R$id;->appdock_grid_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockGridContentView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mContentView:Lcom/android/systemui/appdock/view/AppDockGridContentView;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mSearchView:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->setListener(Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 71
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_grid_ui_margin_bottom:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "word=%s"

    .line 40
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mContentView:Lcom/android/systemui/appdock/view/AppDockGridContentView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->setWord(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mSearchView:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->show()V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridUIView;->mContentView:Lcom/android/systemui/appdock/view/AppDockGridContentView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->show()V

    .line 50
    invoke-static {}, Lcom/android/systemui/appdock/model/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridUIView$rS21N3RFUem42hs4_D0KUdizrpQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridUIView$rS21N3RFUem42hs4_D0KUdizrpQ;-><init>(Lcom/android/systemui/appdock/view/AppDockGridUIView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
