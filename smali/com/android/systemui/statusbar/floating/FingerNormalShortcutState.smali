.class public Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "FingerNormalShortcutState.java"


# instance fields
.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->hideAppIcon()V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->hideShortcut()V

    return-void
.end method

.method public exitState()V
    .locals 0

    return-void
.end method

.method public isPressed()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 55
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isClickedAppIcon(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return v3

    .line 58
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    if-eqz p1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return v3

    .line 63
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return p0
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;->mIsPressed:Z

    return-void
.end method
