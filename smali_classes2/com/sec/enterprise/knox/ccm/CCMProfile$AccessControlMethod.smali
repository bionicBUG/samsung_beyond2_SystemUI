.class public final enum Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;
.super Ljava/lang/Enum;
.source "CCMProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ccm/CCMProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessControlMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

.field public static final enum AFW:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

.field public static final enum LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

.field public static final enum PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_UI:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 56
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    const/4 v1, 0x0

    const-string v2, "LOCK_STATE"

    invoke-direct {v0, v2, v1, v1}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 64
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    const/4 v2, 0x1

    const-string v3, "PASSWORD"

    invoke-direct {v0, v3, v2, v2}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 70
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    const/4 v3, 0x2

    const-string v4, "TRUSTED_UI"

    invoke-direct {v0, v4, v3, v3}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_UI:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 76
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    const/4 v4, 0x3

    const-string v5, "TRUSTED_PINPAD"

    invoke-direct {v0, v5, v4, v4}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 82
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    const/4 v5, 0x4

    const-string v6, "AFW"

    const/16 v7, 0xf

    invoke-direct {v0, v6, v5, v7}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->AFW:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 48
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    aput-object v6, v0, v1

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_UI:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->AFW:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;
    .locals 1

    .line 48
    const-class v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v0}, [Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    return-object v0
.end method
