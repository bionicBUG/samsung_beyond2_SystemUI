.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ED_80lChhj--k4tllSiv67nAdy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ED_80lChhj--k4tllSiv67nAdy8;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ED_80lChhj--k4tllSiv67nAdy8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ED_80lChhj--k4tllSiv67nAdy8;->f$0:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ED_80lChhj--k4tllSiv67nAdy8;->f$1:Z

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handlePackageRemoved$29(Ljava/lang/String;ZLcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
