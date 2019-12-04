.class public Landroid/app/enterprise/knoxcustom/CustomDeviceManager;
.super Ljava/lang/Object;
.source "CustomDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/knoxcustom/CustomDeviceManager$SdkVersion;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/CustomDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
