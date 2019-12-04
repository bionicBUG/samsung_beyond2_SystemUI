.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;

    invoke-direct {v0}, Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$-Hots0xzjfRqeLx_ciTktU_fhww;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    return-object p0
.end method
