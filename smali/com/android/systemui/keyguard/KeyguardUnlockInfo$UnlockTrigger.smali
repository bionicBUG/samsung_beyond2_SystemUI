.class public final enum Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
.super Ljava/lang/Enum;
.source "KeyguardUnlockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnlockTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_AOD_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FLOATING_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_QUICK_PANEL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 112
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v1, 0x0

    const-string v2, "TRIGGER_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 113
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v2, 0x1

    const-string v3, "TRIGGER_EXTERNAL"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 114
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v3, 0x2

    const-string v4, "TRIGGER_INTERNAL"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 115
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v4, 0x3

    const-string v5, "TRIGGER_BIO_UNLOCK"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 116
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v5, 0x4

    const-string v6, "TRIGGER_BIO_WAKE_AND_UNLOCK"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 117
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v6, 0x5

    const-string v7, "TRIGGER_SWIPE"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 118
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v7, 0x6

    const-string v8, "TRIGGER_SHELL"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 119
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v8, 0x7

    const-string v9, "TRIGGER_NOTIFICATION"

    invoke-direct {v0, v9, v8}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 120
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/16 v9, 0x8

    const-string v10, "TRIGGER_AOD_NOTIFICATION"

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_AOD_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 121
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/16 v10, 0x9

    const-string v11, "TRIGGER_QUICK_PANEL"

    invoke-direct {v0, v11, v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_QUICK_PANEL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 122
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/16 v11, 0xa

    const-string v12, "TRIGGER_SHORTCUT"

    invoke-direct {v0, v12, v11}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 123
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/16 v12, 0xb

    const-string v13, "TRIGGER_FLOATING_SHORTCUT"

    invoke-direct {v0, v13, v12}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FLOATING_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 124
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/16 v13, 0xc

    const-string v14, "TRIGGER_FACE_WIDGET"

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 111
    sget-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_AOD_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_QUICK_PANEL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FLOATING_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 1

    .line 111
    const-class v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 1

    .line 111
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-virtual {v0}, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-object v0
.end method
