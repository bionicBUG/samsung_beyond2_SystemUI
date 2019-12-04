.class public final enum Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;
.super Ljava/lang/Enum;
.source "CSRProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ccm/CSRProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CSRFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

.field public static final enum CRMF:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

.field public static final enum PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

.field public static final enum PROPRIETARY:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    const/4 v1, 0x0

    const-string v2, "PKCS10"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 77
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    const/4 v2, 0x1

    const-string v3, "CRMF"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->CRMF:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 81
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    const/4 v3, 0x2

    const-string v4, "PROPRIETARY"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PROPRIETARY:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 69
    sget-object v4, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->CRMF:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PROPRIETARY:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;
    .locals 1

    .line 69
    const-class v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;
    .locals 1

    .line 69
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    invoke-virtual {v0}, [Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    return-object v0
.end method
