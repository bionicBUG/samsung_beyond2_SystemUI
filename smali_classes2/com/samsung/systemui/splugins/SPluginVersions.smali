.class public Lcom/samsung/systemui/splugins/SPluginVersions;
.super Ljava/lang/Object;
.source "SPluginVersions.java"


# static fields
.field public static final MODULE_MULTISTAR:Ljava/lang/String; = "multistar"

.field public static final MODULE_QSCOLORING:Ljava/lang/String; = "coloring"

.field public static final MODULE_RECENTS:Ljava/lang/String; = "recents"

.field public static final MODULE_SLIMINDICATOR:Ljava/lang/String; = "slimindicator"

.field public static PLATFORM_VERSION_BIXBY2:I = 0x0

.field public static PLATFORM_VERSION_MULTISTAR:I = 0x0

.field public static PLATFORM_VERSION_NOTISTAR:I = 0x0

.field public static PLATFORM_VERSION_PLUGIN_LOCK:I = 0x0

.field public static PLATFORM_VERSION_QSCOLORING:I = 0x0

.field public static PLATFORM_VERSION_RECENTS:I = 0x0

.field public static PLATFORM_VERSION_SLIMINDICATOR:I = 0x0

.field public static PLATFORM_VERSION_VOLUME_STAR:I = 0x0

.field private static final VERSION_BIXBY2:I = 0x3ea

.field private static final VERSION_MULTISTAR:I = 0xbbf

.field private static final VERSION_NOTISTAR:I = 0xbb9

.field private static final VERSION_PLUGIN_LOCK:I = 0xbb8

.field private static final VERSION_QSCOLORING:I = 0xbbb

.field private static final VERSION_RECENTS:I = 0xbb9

.field private static final VERSION_SLIMINDICATOR:I = 0xbbb

.field private static final VERSION_SPLUGINMANAGER:I = 0x3eb

.field private static final VERSION_VOLUME_STAR:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initVersion()V
    .locals 2

    const/16 v0, 0x3ea

    .line 48
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_BIXBY2:I

    const/16 v0, 0xbbb

    .line 49
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    .line 50
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_QSCOLORING:I

    const/16 v0, 0xbb8

    .line 51
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_PLUGIN_LOCK:I

    const/16 v0, 0x3e9

    .line 52
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_VOLUME_STAR:I

    const/16 v0, 0xbb9

    .line 53
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_RECENTS:I

    const/16 v1, 0xbbf

    .line 55
    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTISTAR:I

    .line 57
    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    return-void
.end method
