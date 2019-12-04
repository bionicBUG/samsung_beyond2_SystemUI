.class final enum Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DismissActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

.field public static final enum Active:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

.field public static final enum Dex:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

.field public static final enum EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

.field public static final enum EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

.field public static final enum FingerPrintError:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

.field public static final enum Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

.field public static final enum ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;


# instance fields
.field private mDismissType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 108
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v1, 0x0

    const-string v2, "Active"

    const-string v3, "active"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 109
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v2, 0x1

    const-string v3, "ShutDown"

    const-string/jumbo v4, "shutdown"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 110
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v3, 0x2

    const-string v4, "Reboot"

    const-string v5, "reboot"

    invoke-direct {v0, v4, v3, v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 111
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v4, 0x3

    const-string v5, "EmergencyModeOn"

    const-string v6, "emergencymodeon"

    invoke-direct {v0, v5, v4, v6}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 112
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v5, 0x4

    const-string v6, "EmergencyModeOff"

    const-string v7, "emergencymodeoff"

    invoke-direct {v0, v6, v5, v7}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 113
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v6, 0x5

    const-string v7, "Dex"

    const-string v8, "dex"

    invoke-direct {v0, v7, v6, v8}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Dex:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 114
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v7, 0x6

    const-string v8, "FingerPrintError"

    const-string v9, "fingerprinterror"

    invoke-direct {v0, v8, v7, v9}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 107
    sget-object v8, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Dex:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

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

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;
    .locals 1

    .line 107
    const-class v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;
    .locals 1

    .line 107
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, [Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    return-object p0
.end method
