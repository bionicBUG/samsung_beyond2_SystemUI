.class public Landroid/app/enterprise/lso/LockscreenOverlay;
.super Ljava/lang/Object;
.source "LockscreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;,
        Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;
    }
.end annotation


# static fields
.field private static final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 437
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/lso/LockscreenOverlay;->mSync:Ljava/lang/Object;

    return-void
.end method
