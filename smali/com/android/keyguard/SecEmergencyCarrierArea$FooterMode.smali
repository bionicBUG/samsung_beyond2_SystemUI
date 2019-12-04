.class final enum Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;
.super Ljava/lang/Enum;
.source "SecEmergencyCarrierArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SecEmergencyCarrierArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FooterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

.field public static final enum ForgotLockPattern:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

.field public static final enum Normal:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

.field public static final enum SamsungAccountOnly:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

.field public static final enum VerifyUnlocked:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    const/4 v1, 0x0

    const-string v2, "Normal"

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    .line 46
    new-instance v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    const/4 v2, 0x1

    const-string v3, "ForgotLockPattern"

    invoke-direct {v0, v3, v2}, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    .line 47
    new-instance v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    const/4 v3, 0x2

    const-string v4, "VerifyUnlocked"

    invoke-direct {v0, v4, v3}, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    .line 48
    new-instance v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    const/4 v4, 0x3

    const-string v5, "SamsungAccountOnly"

    invoke-direct {v0, v5, v4}, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    .line 44
    sget-object v5, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->$VALUES:[Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;
    .locals 1

    .line 44
    const-class v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->$VALUES:[Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;

    return-object v0
.end method
