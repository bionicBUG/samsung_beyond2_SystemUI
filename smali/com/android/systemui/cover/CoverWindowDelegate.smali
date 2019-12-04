.class public Lcom/android/systemui/cover/CoverWindowDelegate;
.super Ljava/lang/Object;
.source "CoverWindowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoverWindowDelegate"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

.field private mIsShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method private createDecorView()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    .locals 2

    .line 61
    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;-><init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V

    return-object v0
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 65
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x833

    .line 66
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v0, 0x20700

    .line 69
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x10

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const/4 v0, 0x5

    .line 74
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v0, 0x2

    .line 75
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v0, 0x1770

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v0, 0x0

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const-string v0, "COVER"

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method


# virtual methods
.method public attach()Landroid/view/ViewGroup;
    .locals 3

    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v1, "attach : it is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 31
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createDecorView()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-direct {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object p0
.end method

.method public detach()V
    .locals 5

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    if-nez v0, :cond_0

    .line 42
    sget-object p0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v0, "detach : it is NOT showing"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-nez v0, :cond_1

    .line 47
    sget-object p0, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    const-string v0, "detach : decorView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    sget-object v2, Lcom/android/systemui/cover/CoverWindowDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeViewImmediate\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-void
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
