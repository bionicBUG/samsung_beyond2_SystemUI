.class Lcom/android/keyguard/KeyguardCarrierPasswordView$2;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;->onFinishInflate()V
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

    .line 127
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
