.class final enum Lcom/android/systemui/KeyguardTextBuilder$Biometric;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Biometric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/KeyguardTextBuilder$Biometric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;


# instance fields
.field private mBiometric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 54
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v1, 0x0

    const-string v2, "Fingerprint"

    const-string v3, "fingerprint"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 55
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v2, 0x1

    const-string v3, "Iris"

    const-string v4, "iris"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 56
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v3, 0x2

    const-string v4, "Face"

    const-string v5, "face"

    invoke-direct {v0, v4, v3, v5}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 57
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v4, 0x3

    const-string v5, "Intelligent"

    const-string v6, "intelligent"

    invoke-direct {v0, v5, v4, v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 58
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v5, 0x4

    const-string v6, "MultiBiometrics"

    const-string v7, "multi"

    invoke-direct {v0, v6, v5, v7}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 59
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v6, 0x5

    const-string v7, "FaceFingerprint"

    const-string v8, "facefingerprint"

    invoke-direct {v0, v7, v6, v8}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 53
    sget-object v7, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/KeyguardTextBuilder$Biometric;
    .locals 1

    .line 53
    const-class v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/KeyguardTextBuilder$Biometric;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v0}, [Lcom/android/systemui/KeyguardTextBuilder$Biometric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-object p0
.end method
