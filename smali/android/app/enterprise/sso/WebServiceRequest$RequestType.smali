.class public final enum Landroid/app/enterprise/sso/WebServiceRequest$RequestType;
.super Ljava/lang/Enum;
.source "WebServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/sso/WebServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/enterprise/sso/WebServiceRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

.field public static final enum GET:Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

.field public static final enum POST:Landroid/app/enterprise/sso/WebServiceRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;->GET:Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    new-instance v0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2}, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;->POST:Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    .line 19
    sget-object v3, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;->GET:Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    aput-object v3, v0, v1

    sget-object v1, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;->POST:Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;->$VALUES:[Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/sso/WebServiceRequest$RequestType;
    .locals 1

    .line 19
    const-class v0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    return-object p0
.end method

.method public static values()[Landroid/app/enterprise/sso/WebServiceRequest$RequestType;
    .locals 1

    .line 19
    sget-object v0, Landroid/app/enterprise/sso/WebServiceRequest$RequestType;->$VALUES:[Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    invoke-virtual {v0}, [Landroid/app/enterprise/sso/WebServiceRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/sso/WebServiceRequest$RequestType;

    return-object v0
.end method
