.class public final enum Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;
.super Ljava/lang/Enum;
.source "CSRProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ccm/CSRProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

.field public static final enum ECC:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

.field public static final enum RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    const/4 v1, 0x0

    const-string v2, "RSA"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    .line 98
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    const/4 v2, 0x1

    const-string v3, "ECC"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->ECC:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    .line 90
    sget-object v3, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    aput-object v3, v0, v1

    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->ECC:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;
    .locals 1

    .line 90
    const-class v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;
    .locals 1

    .line 90
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->$VALUES:[Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    invoke-virtual {v0}, [Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    return-object v0
.end method
