.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$uz4FyIc1Vb51GqJkoKv0JdEaCfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$uz4FyIc1Vb51GqJkoKv0JdEaCfs;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$uz4FyIc1Vb51GqJkoKv0JdEaCfs;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$20$KeyguardUpdateMonitor(Lcom/android/keyguard/KeyguardUpdateMonitor$FpMsg;)V

    return-void
.end method
