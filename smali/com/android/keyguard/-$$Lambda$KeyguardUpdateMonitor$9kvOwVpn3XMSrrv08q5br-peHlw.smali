.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$9kvOwVpn3XMSrrv08q5br-peHlw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$9kvOwVpn3XMSrrv08q5br-peHlw;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$9kvOwVpn3XMSrrv08q5br-peHlw;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleSimSubscriptionInfoChanged$1(Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
