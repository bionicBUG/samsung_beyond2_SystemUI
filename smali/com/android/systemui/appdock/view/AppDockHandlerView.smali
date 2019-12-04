.class public Lcom/android/systemui/appdock/view/AppDockHandlerView;
.super Landroid/widget/FrameLayout;
.source "AppDockHandlerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

.field protected mDownDelta:Landroid/graphics/PointF;

.field private mMoving:Z

.field private mStartX:I

.field private mStartY:I

.field mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mDownDelta:Landroid/graphics/PointF;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 51
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mViewConfig:Landroid/view/ViewConfiguration;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    .line 77
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mMoving:Z

    if-nez p2, :cond_3

    .line 78
    iget-object p2, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mDownDelta:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mStartX:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mStartY:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result p1

    .line 81
    iget-object p2, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 83
    iput-boolean v2, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mMoving:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerView;->showAppDock()V

    goto :goto_0

    .line 90
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mMoving:Z

    goto :goto_0

    .line 70
    :cond_2
    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mStartX:I

    .line 71
    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mStartY:I

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mMoving:Z

    :cond_3
    :goto_0
    return v1
.end method

.method public setController(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mController:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    return-void
.end method

.method public showAppDock()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerView;->mController:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAppDock()V

    return-void
.end method
