.class Lcom/android/systemui/statusbar/phone/StatusBarWindowController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1

    .line 221
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarSplitTouchable(Z)V

    return-void
.end method
