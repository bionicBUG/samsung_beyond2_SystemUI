.class Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeConfirmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    .line 267
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 270
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.FACTORY_RESET"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
