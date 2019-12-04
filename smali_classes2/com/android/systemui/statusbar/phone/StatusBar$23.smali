.class Lcom/android/systemui/statusbar/phone/StatusBar$23;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->changeLockscreenBouncer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 6194
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v1, Lcom/android/keyguard/KeyguardBouncerContainer;

    iget-object v2, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/keyguard/KeyguardBouncerContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3402(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 6199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->changeBouncerContainer(Landroid/view/ViewGroup;)V

    .line 6200
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->addBouncer(Landroid/widget/FrameLayout;)V

    return-void
.end method
