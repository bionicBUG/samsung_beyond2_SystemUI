.class final enum Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
.super Ljava/lang/Enum;
.source "KeyguardUnlockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_SMART_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static final enum AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 105
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v1, 0x0

    const-string v2, "AUTH_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 106
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v2, 0x1

    const-string v3, "AUTH_SECURITY_MODE"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 107
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v3, 0x2

    const-string v4, "AUTH_BIOMETRICS"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 108
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v4, 0x3

    const-string v5, "AUTH_SMART_LOCK"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SMART_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 104
    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SMART_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    .locals 1

    .line 104
    const-class v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    .locals 1

    .line 104
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v0}, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    return-object v0
.end method
