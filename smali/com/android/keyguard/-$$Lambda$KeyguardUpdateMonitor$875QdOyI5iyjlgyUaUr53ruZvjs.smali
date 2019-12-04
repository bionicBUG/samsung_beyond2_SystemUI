.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$875QdOyI5iyjlgyUaUr53ruZvjs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$875QdOyI5iyjlgyUaUr53ruZvjs;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$875QdOyI5iyjlgyUaUr53ruZvjs;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$875QdOyI5iyjlgyUaUr53ruZvjs;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$875QdOyI5iyjlgyUaUr53ruZvjs;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleKeyguardStateUpdated$46$KeyguardUpdateMonitor(Landroid/os/Bundle;)V

    return-void
.end method
