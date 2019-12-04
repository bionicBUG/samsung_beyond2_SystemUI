.class public Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;
.super Ljava/lang/Object;
.source "DeviceSettingsPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->mSync:Ljava/lang/Object;

    const-string v0, "DeviceSettingsPolicy"

    .line 65
    sput-object v0, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->TAG:Ljava/lang/String;

    return-void
.end method
