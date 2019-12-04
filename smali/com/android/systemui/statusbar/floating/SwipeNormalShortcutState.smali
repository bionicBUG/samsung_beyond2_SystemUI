.class public Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "SwipeNormalShortcutState.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->showAppIcon()V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->hideShortcut()V

    return-void
.end method

.method public exitState()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isClickedAppIcon(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getFloatingShortcutAreaView()Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/floating/SwipePressedShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->showEffect(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
