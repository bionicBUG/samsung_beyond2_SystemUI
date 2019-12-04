.class public Lcom/android/systemui/volume/VolumeStarInteractor;
.super Ljava/lang/Object;
.source "VolumeStarInteractor.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

.field private mVolumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

.field private mVolumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/samsung/systemui/splugins/volume/VolumeStar;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mVolumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/volume/VolumeStarInteractor;Lcom/samsung/systemui/splugins/volume/VolumeStar;)Lcom/samsung/systemui/splugins/volume/VolumeStar;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mVolumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeStarInteractor;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/android/systemui/volume/VolumeDependencyBase;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mVolumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    return-object p0
.end method


# virtual methods
.method public start(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V
    .locals 1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->mVolumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    .line 27
    const-class p1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginManager;

    new-instance p2, Lcom/android/systemui/volume/VolumeStarInteractor$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/VolumeStarInteractor$1;-><init>(Lcom/android/systemui/volume/VolumeStarInteractor;)V

    const-class p0, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    const/4 v0, 0x0

    .line 28
    invoke-interface {p1, p2, p0, v0}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method
