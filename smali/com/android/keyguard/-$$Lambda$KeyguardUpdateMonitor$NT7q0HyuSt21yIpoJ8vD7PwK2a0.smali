.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$NT7q0HyuSt21yIpoJ8vD7PwK2a0;

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

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceAuthFailed$12(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
