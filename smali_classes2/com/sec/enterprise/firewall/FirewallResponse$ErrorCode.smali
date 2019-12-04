.class public final enum Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;
.super Ljava/lang/Enum;
.source "FirewallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/firewall/FirewallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field public static final enum DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field public static final enum INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field public static final enum IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field public static final enum NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field public static final enum NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field public static final enum OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field public static final enum UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v1, 0x0

    const-string v2, "NO_ERROR"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    .line 29
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v2, 0x1

    const-string v3, "DATABASE_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    .line 30
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v3, 0x2

    const-string v4, "INVALID_PARAMETER_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    .line 31
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v4, 0x3

    const-string v5, "OPERATION_NOT_PERMITTED_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    .line 32
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v5, 0x4

    const-string v6, "NOT_AUTHORIZED_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    .line 33
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v6, 0x5

    const-string v7, "IPV6_NOT_SUPPORTED_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    .line 34
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v7, 0x6

    const-string v8, "UNEXPECTED_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    .line 27
    sget-object v8, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    aput-object v8, v0, v1

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->$VALUES:[Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;
    .locals 1

    .line 27
    const-class v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->$VALUES:[Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, [Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    return-object v0
.end method
