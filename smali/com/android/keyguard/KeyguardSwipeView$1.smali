.class Lcom/android/keyguard/KeyguardSwipeView$1;
.super Ljava/lang/Object;
.source "KeyguardSwipeView.java"

# interfaces
.implements Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSwipeView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSwipeView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callUserActivity()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSwipeView;->access$000(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSwipeView;->access$000(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public onAffordanceTap()V
    .locals 0

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSwipeView;->access$000(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSwipeView;->access$000(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_0
    return-void
.end method
