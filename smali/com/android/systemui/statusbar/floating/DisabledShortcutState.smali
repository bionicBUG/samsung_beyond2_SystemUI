.class public Lcom/android/systemui/statusbar/floating/DisabledShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "DisabledShortcutState.java"


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
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->hideAppIcon()V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->hideShortcut()V

    return-void
.end method

.method public exitState()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
