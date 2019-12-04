.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$tOjoJzL1D0orlm7d-B97Zgt8lNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$tOjoJzL1D0orlm7d-B97Zgt8lNY;->f$0:Z

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$tOjoJzL1D0orlm7d-B97Zgt8lNY;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$tOjoJzL1D0orlm7d-B97Zgt8lNY;->f$0:Z

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$tOjoJzL1D0orlm7d-B97Zgt8lNY;->f$1:I

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleUpdateBackgroundAuthToast$70(ZILcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
