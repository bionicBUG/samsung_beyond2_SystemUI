.class Lcom/android/keyguard/KeyguardCarrierPasswordView$3;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$300(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$400(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$300(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
