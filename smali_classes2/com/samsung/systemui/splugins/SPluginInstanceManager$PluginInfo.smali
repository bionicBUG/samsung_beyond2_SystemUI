.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;
.super Ljava/lang/Object;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field mPackage:Ljava/lang/String;

.field mPlugin:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPluginContext:Landroid/content/Context;

.field private final mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/samsung/systemui/splugins/SVersionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            ")V"
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 517
    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    .line 518
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 519
    iput-object p4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    .line 520
    iput-object p5, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mVersion:Lcom/samsung/systemui/splugins/SVersionInfo;

    return-object p0
.end method
