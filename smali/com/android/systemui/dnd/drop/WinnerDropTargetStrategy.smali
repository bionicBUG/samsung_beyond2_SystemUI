.class public Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;
.super Ljava/lang/Object;
.source "WinnerDropTargetStrategy.java"

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

.method private isFullscreenDropTargetVisible()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mRequester:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/StackVisibility;->isHomeVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mRequester:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isTwoUp()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private moveTaskToStackIfNeeded(IZ)V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 206
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isTwoUp()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 207
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getStackTopTaskId(II)I

    move-result p0

    if-eq p0, v1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    .line 210
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string/jumbo p2, "side-primary visible task(id=%d) -> side-secondary"

    invoke-static {p2, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x65

    .line 211
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->startActivityFromRecents(II)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p1}, Lcom/android/systemui/dnd/StackVisibility;->isFullsceenVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result p0

    if-nez p0, :cond_2

    .line 221
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getStackTopTaskId(II)I

    move-result p0

    if-eq p0, v1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    .line 224
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "fullscreen visible task(id=%d) -> side-primary"

    invoke-static {p2, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->startActivityFromRecents(II)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;
    .locals 7
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p1}, Lcom/android/systemui/dnd/StackVisibility;->getSideScreenBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 138
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result p0

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 141
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v2, v2, 0xd9

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v4, v3, 0x1

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {p0, v2, v4, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    :goto_0
    new-instance v0, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    const/16 v2, 0x66

    invoke-direct {v0, v2, p1, p0, v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object v0

    .line 120
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p1}, Lcom/android/systemui/dnd/StackVisibility;->getSideScreenBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mIsPortrait:Z

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isTwoUp()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3f2aaaab

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 126
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v3, v3, 0xd9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v4

    mul-float/2addr v5, p0

    float-to-int p0, v5

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v2, v3, p0, p1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 129
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, p0, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v0

    .line 132
    :goto_2
    new-instance p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    const/16 p1, 0x65

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object p0

    .line 104
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p1}, Lcom/android/systemui/dnd/StackVisibility;->getSideScreenBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 108
    iget-boolean v2, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mIsPortrait:Z

    if-eqz v2, :cond_4

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isTwoUp()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x3

    .line 111
    :cond_3
    new-instance p0, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v3, v3, 0xd9

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/2addr p1, v0

    invoke-direct {p0, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 114
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v0, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createNewScaledRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 117
    :goto_3
    new-instance p1, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    const/16 v0, 0x64

    invoke-direct {p1, v0, v2, p0, v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object p1

    .line 148
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p1}, Lcom/android/systemui/dnd/StackVisibility;->getOtherSideBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 149
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 150
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 152
    new-instance p0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v3, v2, -0x106

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5e

    add-int/lit16 v2, v2, 0x106

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x5e

    invoke-direct {p0, v3, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v4, v3, -0xd9

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v3, v3, 0xd9

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v4, v5, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    new-instance p1, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    invoke-direct {p1, v0, p0, v2, v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object p1

    .line 97
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p1}, Lcom/android/systemui/dnd/StackVisibility;->getOtherSideBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 98
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v4, v4, -0xd9

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    new-instance v2, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->isFullscreenDropTargetVisible()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/android/systemui/dnd/drop/DropTargetInfo;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createNewScaledRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 188
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    .line 190
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    neg-int v1, p1

    neg-int v2, v0

    .line 191
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 193
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 194
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 195
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 196
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p0
.end method

.method public getVisibleDropTargets(Landroid/content/Context;Lcom/android/systemui/dnd/StackVisibility;Lcom/android/systemui/dnd/RequesterInfo;)Ljava/util/List;
    .locals 6
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

    .line 40
    iput-object p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mSv:Lcom/android/systemui/dnd/StackVisibility;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mRequester:Lcom/android/systemui/dnd/RequesterInfo;

    .line 44
    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->mIsPortrait:Z

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p2}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x66

    if-nez v1, :cond_1

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/dnd/StackVisibility;->isTwoUp()Z

    move-result v1

    const/16 v4, 0x65

    const/16 v5, 0x64

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 52
    invoke-virtual {p0, v5}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0, v4}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0, v3}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/dnd/StackVisibility;->isThreeUp()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 56
    invoke-virtual {p0, v5}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0, v4}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result p2

    if-ne p2, v0, :cond_4

    const/4 p2, 0x5

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->createDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_4
    invoke-virtual {p3}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result p0

    if-ne p0, v2, :cond_5

    .line 66
    invoke-virtual {p3}, Lcom/android/systemui/dnd/RequesterInfo;->getWindowingMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_5

    .line 68
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object p1
.end method

.method public getWindowingModeFromDropTarget(I)I
    .locals 0

    const/16 p0, 0x66

    if-ne p1, p0, :cond_0

    const/16 p0, 0x64

    return p0

    :cond_0
    return p1
.end method

.method public postDragEnd(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    return-void
.end method

.method public preDragEnd(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->getWindowingModeFromDropTarget(I)I

    move-result v0

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;->moveTaskToStackIfNeeded(IZ)V

    return-void
.end method
