.class public Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
.super Ljava/lang/Object;
.source "KnoxCustomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;
    }
.end annotation


# instance fields
.field private gContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->gContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
