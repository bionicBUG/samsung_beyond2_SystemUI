.class public final enum Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;
.super Ljava/lang/Enum;
.source "KnoxContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/container/KnoxContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum SECUREFOLDER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;


# instance fields
.field private final mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 919
    new-instance v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    const/4 v1, 0x0

    const-string v2, "LIGHTWEIGHT"

    const-string v3, "lightweight"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    .line 920
    new-instance v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    const/4 v2, 0x1

    const-string v3, "KIOSK"

    const-string v4, "kiosk"

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    .line 921
    new-instance v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    const/4 v3, 0x2

    const-string v4, "LAUNCHER"

    const-string v5, "launcher"

    invoke-direct {v0, v4, v3, v5}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    .line 922
    new-instance v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    const/4 v4, 0x3

    const-string v5, "BBC"

    const-string v6, "bbc"

    invoke-direct {v0, v5, v4, v6}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    .line 923
    new-instance v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    const/4 v5, 0x4

    const-string v6, "SECUREFOLDER"

    const-string v7, "securefolder"

    invoke-direct {v0, v6, v5, v7}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    .line 918
    sget-object v6, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->$VALUES:[Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

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

    .line 927
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 928
    iput-object p3, p0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;
    .locals 1

    .line 918
    const-class v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;
    .locals 1

    .line 918
    sget-object v0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->$VALUES:[Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v0}, [Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 932
    iget-object p0, p0, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    return-object p0
.end method
