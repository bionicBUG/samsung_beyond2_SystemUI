.class public abstract Lcom/android/systemui/statusbar/floating/ShortcutState;
.super Ljava/lang/Object;
.source "ShortcutState.java"


# instance fields
.field private mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    return-void
.end method


# virtual methods
.method protected final changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    return-void
.end method

.method public abstract enterState()V
.end method

.method public abstract exitState()V
.end method

.method protected final findFocusedView(II)Lcom/android/systemui/statusbar/floating/FloatingShortcutView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->findFocusedView(II)Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    move-result-object p0

    return-object p0
.end method

.method protected final focusShortcut(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->focusShortcut(Landroid/view/View;)V

    return-void
.end method

.method protected final getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object p0

    return-object p0
.end method

.method protected final getFloatingShortcutAreaView()Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final hideAppIcon()V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->hideAppIcon()V

    return-void
.end method

.method protected final hideShortcut()V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->hideShortcut()V

    return-void
.end method

.method protected final isClickedAppIcon(II)Z
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->isTouchedAppIcon(II)Z

    move-result p0

    return p0
.end method

.method public isPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z

    move-result p0

    return p0
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method protected final postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetState()V
    .locals 0

    return-void
.end method

.method public sendAppLaunchLogging()V
    .locals 0

    return-void
.end method

.method protected final setForceExpandedByShortcut(Z)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->setForceExpandedByShortcut(Z)V

    return-void
.end method

.method protected final setShortcutIconPressed(Z)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->setShortcutIconPressed(Z)V

    return-void
.end method

.method protected final showAppIcon()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->showAppIcon()V

    return-void
.end method

.method protected final showShortcut()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->showShortcut()V

    return-void
.end method

.method protected final updateBlueAndDim(Z)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutState;->mFloatingShortcutAreaView:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateBlurAndDim(Z)V

    return-void
.end method
