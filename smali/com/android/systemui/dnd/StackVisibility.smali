.class public Lcom/android/systemui/dnd/StackVisibility;
.super Ljava/lang/Object;
.source "StackVisibility.java"


# instance fields
.field fullscreenStackInfo:Landroid/app/ActivityManager$StackInfo;

.field homeStackInfo:Landroid/app/ActivityManager$StackInfo;

.field mStableInset:Landroid/graphics/Rect;

.field multiPrimaryStackInfo:Landroid/app/ActivityManager$StackInfo;

.field multiSecondaryStackInfo:Landroid/app/ActivityManager$StackInfo;

.field primaryStackInfo:Landroid/app/ActivityManager$StackInfo;

.field secondaryStackInfo:Landroid/app/ActivityManager$StackInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/StackVisibility;->mStableInset:Landroid/graphics/Rect;

    return-void
.end method

.method private getStableHomeBounds()Landroid/graphics/Rect;
    .locals 2

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private initStackInfos(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "myDisplayId=%d"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    .line 58
    iget v2, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    if-eq v2, p2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/systemui/dnd/StackVisibility;->homeStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-nez v2, :cond_0

    .line 66
    iput-object v1, p0, Lcom/android/systemui/dnd/StackVisibility;->homeStackInfo:Landroid/app/ActivityManager$StackInfo;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-ne v2, v0, :cond_0

    .line 70
    :cond_3
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    if-eq v2, v0, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/16 v3, 0x64

    if-eq v2, v3, :cond_5

    const/16 v3, 0x65

    if-eq v2, v3, :cond_4

    goto :goto_0

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/dnd/StackVisibility;->multiSecondaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-nez v2, :cond_0

    .line 96
    iput-object v1, p0, Lcom/android/systemui/dnd/StackVisibility;->multiSecondaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    goto :goto_0

    .line 89
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/dnd/StackVisibility;->multiPrimaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-nez v2, :cond_0

    .line 90
    iput-object v1, p0, Lcom/android/systemui/dnd/StackVisibility;->multiPrimaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    goto :goto_0

    .line 83
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/dnd/StackVisibility;->secondaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-nez v2, :cond_0

    .line 84
    iput-object v1, p0, Lcom/android/systemui/dnd/StackVisibility;->secondaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    goto :goto_0

    .line 77
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/dnd/StackVisibility;->primaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-nez v2, :cond_0

    .line 78
    iput-object v1, p0, Lcom/android/systemui/dnd/StackVisibility;->primaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    goto :goto_0

    .line 72
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/dnd/StackVisibility;->fullscreenStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-nez v2, :cond_0

    .line 73
    iput-object v1, p0, Lcom/android/systemui/dnd/StackVisibility;->fullscreenStackInfo:Landroid/app/ActivityManager$StackInfo;

    goto :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public getOtherSideBounds()Landroid/graphics/Rect;
    .locals 2

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/dnd/StackVisibility;->getStableHomeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result p0

    if-nez p0, :cond_0

    .line 201
    iget p0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit16 p0, p0, -0x290

    iput p0, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    return-object v0
.end method

.method public getSideScreenBounds()Landroid/graphics/Rect;
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/dnd/StackVisibility;->getStableHomeBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/dnd/StackVisibility;->getStableHomeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 188
    iget p0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit16 p0, p0, -0x290

    iput p0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return-object v0
.end method

.method public getStackBounds(I)Landroid/graphics/Rect;
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/dnd/StackVisibility;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 161
    iget-object p0, p0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object p0
.end method

.method public getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dnd/StackVisibility;->multiSecondaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p0

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/dnd/StackVisibility;->multiPrimaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p0

    .line 143
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/dnd/StackVisibility;->secondaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p0

    .line 140
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/dnd/StackVisibility;->primaryStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p0

    .line 137
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/dnd/StackVisibility;->fullscreenStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p0

    .line 152
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/dnd/StackVisibility;->homeStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p0
.end method

.method public getStackTopTaskId(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/systemui/dnd/StackVisibility;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    iget-object p0, p0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 172
    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public init(Landroid/content/Context;)Lcom/android/systemui/dnd/StackVisibility;
    .locals 3

    .line 38
    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/dnd/StackVisibility;->initStackInfos(Ljava/util/List;I)V

    .line 40
    iget-object p1, p0, Lcom/android/systemui/dnd/StackVisibility;->mStableInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getStableInsets(Landroid/graphics/Rect;)V

    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p1, v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const/16 v0, 0x64

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, p1, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p1, v1

    const/16 v0, 0x65

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, p1, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/systemui/dnd/StackVisibility;->mStableInset:Landroid/graphics/Rect;

    const/16 v1, 0xc

    aput-object v0, p1, v1

    const-string v0, "home=(%s, %b), full=(%s, %b), Primary=(%s, %b), Secondary=(%s, %b), sideP=(%s, %b), sideS=(%s, %b), inset=%s"

    .line 42
    invoke-static {v0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public isFullsceenVisible()Z
    .locals 1

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result p0

    return p0
.end method

.method public isHomeVisible()Z
    .locals 2

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isFullsceenVisible()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPrimaryVisible()Z
    .locals 1

    const/4 v0, 0x3

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result p0

    return p0
.end method

.method public isSidescreenOpen()Z
    .locals 1

    const/16 v0, 0x64

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result p0

    return p0
.end method

.method public isSplit()Z
    .locals 1

    const/4 v0, 0x4

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result p0

    return p0
.end method

.method public isStackVisible(I)Z
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/systemui/dnd/StackVisibility;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    iget-boolean p0, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThreeUp()Z
    .locals 1

    const/16 v0, 0x64

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/systemui/dnd/StackVisibility;->isStackVisible(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTwoUp()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isThreeUp()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
