.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$na3M2J_4jU5oH8EuSMdTeqH135Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$setIBAuthenticated$62(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
