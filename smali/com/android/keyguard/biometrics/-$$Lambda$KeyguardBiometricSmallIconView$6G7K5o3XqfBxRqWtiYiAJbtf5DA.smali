.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;

    invoke-direct {v0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->lambda$updateUnlockIcon$5(Ljava/lang/Throwable;)V

    return-void
.end method
