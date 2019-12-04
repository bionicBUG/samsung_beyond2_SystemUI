.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"

# interfaces
.implements Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;,
        Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;,
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
    }
.end annotation


# instance fields
.field private mAdjustedForIme:Z

.field private mBackgroundColor:I

.field private mDividerCloseController:Lcom/android/systemui/stackdivider/DividerCloseController;

.field private final mDividerState:Lcom/android/systemui/stackdivider/DividerState;

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mHomeStackResizable:Z

.field private mMinimized:Z

.field private mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/stackdivider/DividerState;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/stackdivider/Divider;ZJZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerCloseController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/android/systemui/stackdivider/DividerCloseController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/stackdivider/Divider;Landroid/app/ActivityManager$StackInfo;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->showOrHideDividerClose()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 162
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->docked_stack_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/stackdivider/DividerView;->injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mFocusedStackInfo:Landroid/app/ActivityManager$StackInfo;

    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerView;->onFocusedStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 176
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 p1, -0x1

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move p1, v0

    .line 180
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Landroid/view/View;II)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->setMultiStarManager(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    .line 184
    iget p1, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->setFocusedFrameBackgroundColor(I)V

    return-void
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeDivider()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->onDividerRemoved()V

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    return-void
.end method

.method private showOrHideDividerClose()V
    .locals 2

    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/android/systemui/stackdivider/DividerCloseController;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->getDockSide()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMinimizeWitdh()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->show(II)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->hide()V

    :goto_0
    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerCloseController;->update(Landroid/content/res/Configuration;)V

    .line 204
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    :cond_0
    return-void
.end method

.method private updateMinimizedDockedStack(ZJZ)V
    .locals 8

    .line 246
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v7, Lcom/android/systemui/stackdivider/Divider$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZZJ)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTouchable()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  mVisible="

    .line 346
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mMinimized="

    .line 347
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAdjustedForIme="

    .line 348
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getSplitTargetTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->getSplitTargetTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object p0
.end method

.method public growRecents()V
    .locals 1

    .line 338
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->growRecents()V

    :cond_0
    return-void
.end method

.method public isHomeStackResizable()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p0
.end method

.method public isMinimizedAndHomeResizable()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAppTransitionFinished()V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onAppTransitionFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDockedFirstAnimationFrame()V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onDockedFirstAnimationFrame()V

    :cond_0
    return-void
.end method

.method public onDraggingEnd()V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onDraggingEnd()V

    return-void
.end method

.method public onDraggingStart()V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onDraggingStart()V

    return-void
.end method

.method public onLongPressRecents()V
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->onLongPressRecents()V

    return-void
.end method

.method public onRecentsDrawn()V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onRecentsDrawn()V

    :cond_0
    return-void
.end method

.method public onUndockingTask()V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onUndockingTask()V

    :cond_0
    return-void
.end method

.method public setFocusedFrameBackgroundColor(I)V
    .locals 0

    .line 455
    iput p1, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    .line 456
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p1, :cond_0

    .line 457
    iget p0, p0, Lcom/android/systemui/stackdivider/Divider;->mBackgroundColor:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/stackdivider/DividerView;->setFocusedFrameBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 89
    new-instance v0, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 92
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 93
    new-instance v0, Lcom/android/systemui/stackdivider/DividerCloseController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerCloseController:Lcom/android/systemui/stackdivider/DividerCloseController;

    .line 97
    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 101
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 102
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    .line 104
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Divider"

    const-string v2, "Failed to register docked stack listener"

    .line 107
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :goto_0
    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 113
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V

    .line 114
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    .line 118
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V

    .line 119
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return-void
.end method
