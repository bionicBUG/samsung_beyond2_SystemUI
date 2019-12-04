.class public final enum Landroid/app/enterprise/WifiAdminProfile$PolicyState;
.super Ljava/lang/Enum;
.source "WifiAdminProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/WifiAdminProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/enterprise/WifiAdminProfile$PolicyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public static final enum DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public static final enum FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public static final enum TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 427
    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    const/4 v1, 0x0

    const-string v2, "FALSE"

    invoke-direct {v0, v2, v1}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    const/4 v2, 0x1

    const-string v3, "TRUE"

    invoke-direct {v0, v3, v2}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    const/4 v3, 0x2

    const-string v4, "DEFAULT"

    invoke-direct {v0, v4, v3}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 426
    sget-object v4, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    aput-object v4, v0, v1

    sget-object v1, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->$VALUES:[Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1

    .line 426
    const-class v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    return-object p0
.end method

.method public static values()[Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1

    .line 426
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->$VALUES:[Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, [Landroid/app/enterprise/WifiAdminProfile$PolicyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    return-object v0
.end method
