.class public final enum Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;
.super Ljava/lang/Enum;
.source "CSRProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ccm/CSRProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

.field public static final enum CMC:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

.field public static final enum CMP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

.field public static final enum PROPRIETARY:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

.field public static final enum SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    const/4 v1, 0x0

    const-string v2, "SCEP"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 52
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    const/4 v2, 0x1

    const-string v3, "CMP"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->CMP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 56
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    const/4 v3, 0x2

    const-string v4, "CMC"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->CMC:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 60
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    const/4 v4, 0x3

    const-string v5, "PROPRIETARY"

    invoke-direct {v0, v5, v4}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->PROPRIETARY:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 44
    sget-object v5, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->CMP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->CMC:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->PROPRIETARY:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;
    .locals 1

    .line 44
    const-class v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;
    .locals 1

    .line 44
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    invoke-virtual {v0}, [Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    return-object v0
.end method
