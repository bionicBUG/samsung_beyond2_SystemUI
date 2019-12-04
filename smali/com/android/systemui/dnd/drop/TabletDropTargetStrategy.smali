.class public Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;
.super Ljava/lang/Object;
.source "TabletDropTargetStrategy.java"

# interfaces
.implements Lcom/android/systemui/dnd/drop/DropTargetStrategy;


# instance fields
.field mContext:Landroid/content/Context;

.field mIsPortrait:Z

.field mRequester:Lcom/android/systemui/dnd/RequesterInfo;

.field mSv:Lcom/android/systemui/dnd/StackVisibility;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;
    .locals 5
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 124
    iget-object v3, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 125
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v2, v2, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->createNewScaledRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string v1, "FREEFORM : bounds=%s"

    .line 126
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v0, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    invoke-direct {v0, p1, p0, p0, v2}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object v0

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v3}, Lcom/android/systemui/dnd/StackVisibility;->isSplit()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v3}, Lcom/android/systemui/dnd/StackVisibility;->isPrimaryVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p0, v2}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v3, v0}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 111
    iget-boolean p0, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mIsPortrait:Z

    if-eqz p0, :cond_3

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    aput-object v0, p0, v2

    const-string v1, "SPLIT_SECONDARY : bounds=%s"

    .line 119
    invoke-static {v1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    invoke-direct {p0, p1, v0, v0, v2}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object p0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v0, v2}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 94
    iget-boolean p0, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mIsPortrait:Z

    if-eqz p0, :cond_6

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 97
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    aput-object v0, p0, v2

    const-string v1, "SPLIT_PRIMARY : bounds=%s"

    .line 100
    invoke-static {v1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    invoke-direct {p0, p1, v0, v0, v2}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object p0
.end method

.method createNewScaledRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 143
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    .line 145
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    neg-int v1, p1

    neg-int v2, v0

    .line 146
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 147
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 148
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 149
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 150
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 151
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p0
.end method

.method public getVisibleDropTargets(Landroid/content/Context;Lcom/android/systemui/dnd/StackVisibility;Lcom/android/systemui/dnd/RequesterInfo;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/dnd/StackVisibility;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/dnd/RequesterInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/dnd/StackVisibility;",
            "Lcom/android/systemui/dnd/RequesterInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/dnd/drop/DropTargetInfo;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-virtual {p3}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    .line 41
    iput-object p3, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mRequester:Lcom/android/systemui/dnd/RequesterInfo;

    .line 43
    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mIsPortrait:Z

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x5

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getWindowingModeFromDropTarget(I)I
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    return p1
.end method

.method public postDragEnd(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "start home"

    .line 79
    invoke-static {v0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-instance p1, Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.HOME"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public preDragEnd(I)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p1}, Lcom/android/systemui/dnd/StackVisibility;->isSplit()Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->getStackTopTaskId(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY : start task[%d] to primary"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 68
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->startActivityFromRecents(II)Z

    :cond_1
    :goto_0
    return-void
.end method
