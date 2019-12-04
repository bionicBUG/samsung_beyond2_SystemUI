.class public Landroid/app/enterprise/multiuser/MultiUserManager;
.super Ljava/lang/Object;
.source "MultiUserManager.java"


# static fields
.field private static isMuSupportInfoReady:Z

.field private static isMuSupported:Z

.field private static final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 456
    sput-boolean v0, Landroid/app/enterprise/multiuser/MultiUserManager;->isMuSupported:Z

    .line 458
    sput-boolean v0, Landroid/app/enterprise/multiuser/MultiUserManager;->isMuSupportInfoReady:Z

    return-void
.end method
