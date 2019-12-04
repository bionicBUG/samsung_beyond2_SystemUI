.class public final synthetic Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;->INSTANCE:Lcom/android/keyguard/-$$Lambda$E_8sh613j7Ok4O_9EtyWtzvn9rU;

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

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    return-void
.end method
