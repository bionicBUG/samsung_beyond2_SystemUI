.class public final synthetic Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;->INSTANCE:Lcom/android/keyguard/-$$Lambda$ciDCC-rW8mi0CunQsAADoIr82Wk;

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

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onNotifyKeyguardLockout()V

    return-void
.end method
